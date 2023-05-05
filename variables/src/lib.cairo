use debug::PrintTrait;

fn main() {
    // 变量默认为不可变，不能被修改
    // let x = 5;
    // x.print();
    // x = 6;
    // x.print();
    // error: Cannot assign to an immutable variable. 

    // 使用关键字mut可以改变变量，但其实是修改了变量指向的内存地址，而非真的改变了当前的内存地址
    let mut y = 5;
    y.print();
    y = 6;
    y.print();

    // 变量Shadowing
    // 这种用法，可以让我们用相同的变量名去创建不同的类型
    // 与mut不同的是，mut虽然也可以改变变量值，但无法更改变量的类型
    let y = y * 2;
    y.print();

    {
        let y = y * 4;
        'y value is:'.print();
        y.print()
    }
    y.print();

    // 常量始终不可变
    // 注意类型
    // 只能赋值给常量表达式
    // 命名以大写字母和下划线构成
    // const ONE_HOUR_IN_SECONDS: u32 = 3600_u32;
}
