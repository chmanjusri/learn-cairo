use debug::PrintTrait;

fn main() {
    let x = 3;

    // if的基本用法
    if x == 1 {
        'x = 1'.print();
    } else if x == 2 {
        'x != 2'.print();
    } else {
        'UNKNOW'.print();
    }

    // if做表达式时，可以返回值
    let b = if x == 3 {
        true
    } else {
        false
    };
    b.print();
}
