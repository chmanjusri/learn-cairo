use debug::PrintTrait;

// 命名方式:全小写字母加下划线
fn other_say() {
    'Hi'.print();
}

// 传递参数
fn other_say_par(s: felt252) {
    s.print();
}

// 返回值
fn other_say_num(x: felt252) -> felt252 {
    // 不能加分号
    x
}


fn main() {
    'Hello'.print();

    other_say();
    other_say_par('A');

    let x = other_say_num('B');
    x.print();
}

