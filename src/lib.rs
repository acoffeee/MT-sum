
#![feature(test)]
extern crate test;

use std::thread;
use std::sync::mpsc;
use std::sync::Arc;


pub fn sum_of_vec(vec: Vec<u32>) -> u64 {
    let (tx,rx) = mpsc::channel();
    let vec_arc = Arc::new(vec);
    let t1_vec = vec_arc.clone();
    let t2_vec = vec_arc.clone();
    let handle_one = thread::spawn( move || {

        //send first and everyother
        let mut current_index = 0;
        while current_index < t1_vec.len() {
            let _ = tx.send(t1_vec.get(current_index).copied());
            current_index += 2;
            if current_index >= t1_vec.len() {
                return;
            }
        }
    });
    let mut total: u64 = 0;
    let handle_two = thread::spawn( move || {
        
        let mut current_index = 1;
        for number in rx {
            total += *t2_vec.get(current_index).unwrap() as u64 + number.unwrap() as u64;
            current_index +=2;
            if current_index >= t2_vec.len() {
                return total as u64;
            }
        }
        return total;
    });
    handle_one.join().unwrap();
    return handle_two.join().unwrap();

}
pub fn sum_of_vec_normal(vec: Vec<u32>) -> u64{
    vec.iter().sum::<u32>() as u64
}

#[cfg(test)]
mod tests {
    use super::*;
    use test::Bencher;

    fn gen_random_vec() -> Vec<u32> {
        (0..1000).map(|_| rand::random::<u32>()).collect()
    }

    #[bench]
    fn bench_our_method(bencher: &mut Bencher) {
        let vec = gen_random_vec();
        bencher.iter(|| sum_of_vec(vec.clone()));
    }
    #[bench]
    fn bench_iter(bencher: &mut Bencher) {
        let vec = gen_random_vec();
        bencher.iter(|| sum_of_vec_normal(vec.clone()));
    }
}