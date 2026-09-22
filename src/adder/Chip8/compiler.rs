use std::fs::File;
//this expects a normal encoded file 
pub fn compiler(path: String) -> Vec<u8> {
    let mut file = File::Open(path)?;
    
}