#![feature(test)]
extern crate test;
mod adder;
mod methods;
use adder::adders::adder_32bit;
use methods::{sum_by_iter::sum_by_iter, sum_with_threading::sum_with_threading};

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
        bencher.iter(|| sum_with_threading(vec.clone()));
    }
    #[bench]
    fn bench_iter(bencher: &mut Bencher) {
        let vec = gen_random_vec();
        bencher.iter(|| sum_by_iter(vec.clone()));
    }
    #[bench]
    fn bench_adder(bencher: &mut Bencher) {
        let n1 = rand::random::<u32>();
        let n2 = rand::random::<u32>();
        bencher.iter(|| adder_32bit(n1, n2));
    }
}
