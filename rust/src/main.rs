use std::time::{Instant};

fn main() {

    let mut _add: i64 = 0;
    let now = Instant::now();
    for _index in 1..100000001 {
        _add = _add + _index;
    }

    let duration = Instant::now();
    println!("==========================");
    println!("rust 테스트");
    println!("{:?}", _add);
    println!("{:?}",(duration - now));

}