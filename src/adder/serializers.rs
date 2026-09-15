pub fn deserializer(mut number: u32) -> Vec<bool> {
    let mut bit_arr: Vec<bool> = Vec::new();
    if number == 0 {
        return bit_arr;
    }
    while number > 0 {
        let remainder = number % 2;
        bit_arr.push(if remainder == 0 { false } else { true });
        number = number / 2
    }
    for _ in 0..32 - bit_arr.len() {
        bit_arr.push(false);
    }
    bit_arr.reverse();
    bit_arr
}
//ensure the array is read right to left
pub fn serializer(bits: [bool; 32]) -> u32 {
    let mut total: u32 = 0;
    for i in 0..bits.len() {
        if bits[i] {
            total += 2_u32.pow(i as u32);
        }
    }
    total
}
