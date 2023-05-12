use debug::PrintTrait;

// 定义个结构，和元祖相比，结构可以实现每个字段使用不同类型, 并为字段定义一个名字
struct User {
    name: felt252,
    active: bool,
}

// 借助函数，构造一个实例直接返回结构体
fn create_user(name: felt252) -> User {
    // 当结构中使用的字段和传递的字段名相同时，可以直接重写字段
    User { name, active: true }
}


fn main() {
    let mut cx = create_user('cx');

    cx.name.print();
    cx.active.print();
}
