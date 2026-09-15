pub fn deserializer(number: u32) -> Vec<bool> {
    let mut bit_arr: Vec<bool> = Vec::new()
    if number == 0 { bit_arr }
    while number > 0 {
        let remainder = number % 2;
        bit_arr.push(if {remainder == 0} false else { true });
        number = number / 2
    }
    for _ in 0..32 - bit_arr.len() {
        bit_arr.push(false);
    }
    bit_arr.reverse()
}
//ensure the array is read right to left
pub fn serializer(bits: Vec<bool>) -> u64 {
    let total: u64 = 0;
    for i in 0..bits.len() {
        if bits[i] {
            total += 2.pow(i);
        }
    }
    total
}