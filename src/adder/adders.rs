use super::serializers::{serializer, deserializer};
pub fn adder_32bit(n1: u32, n2: u32 ) -> u32 {
    let n1 = deserializer(n1);
    let n2 = deserializer(n2);
    let mut sum = [false;32];
    let mut carry = false; //in a full adder wed have a cin but i dont think thats applicable here
    for i in 0..32 {
        let (s, c) = full_1bit_adder(n1[i], n2[i], carry);
        sum[i] = s;
        carry = c;
    }
    serializer(sum)

}
fn full_1bit_adder(bit1: bool, bit2: bool, cin: bool) -> (bool, bool) { //(bool: sum, bool: carry)
    let (bit1, bit2) = half_1bit_adder(bit1,bit2);
    let (sum, mut cout) = half_1bit_adder(bit1, cin);
    if bit2 || cout {
        cout = true;
    }
    (sum, cout)
}

fn half_1bit_adder(bit1: bool, bit2: bool) -> (bool, bool) {
    if !(bit1 || bit2) { //if both are low
        return (false, false);
    }
    if bit1 ^ bit2 { //if one is high
        return (true, false);
    }
    (false, true) //if both are high
}