# C++目录

**c++历史**

**于c语言的区别**

​		1.c语言是结构化和模块化的语言，面向过程。未完全实现解决软件设计危机的目标

​		2.c++保留了c语言原有的所有优点，增加了面向对象的机制。

​		3.对c语言的功能做了扩充

**开发工具**

1. `记事本+命令行`
2. `visual c++ 6.0`
3. `vs 2015`
4. ` Code::blocks（开源免费的`
5. 其它开发工具 DEV C++ ,CLion,C-Free,Xcode（Mac）,C4droid。。。`
6. ` minGW`

**C++编码风格**

- 每条语句各占一行

- 每个函数都有一个开始和结束的花括号，花括号各占一行

- 函数中的语句对相对于花括号进行缩进

- 与函数名称相关的小括号周围没有空白

  **书写注释是一个良好的编程习惯**

  - 有助于对代码的阅读
  - 注释语言因准确，易懂，简洁
  - 单行注释：以“ // ” 开头
  - 多行注释：以“ /* ” 开头，“ */ ”结尾

```c++
//输出 hello world ！
//version 1.0
#include<iostream>
int main ()
{
    std::cout<<"hello world !"<<std::endl;  // endl==end line  表示重起一行（回车!=\n 1.换行 2.+清空缓存区）
    return 0;
}

//version 2.0

#include<iostream>
using namespace std; // std== standard = n.标准
int main()
{
    cout<<"Hello World !"<<endl;
    return 0;
}
```

**1.C++关键字**

**变量**

- ​	变量的命名规则
  1. 首字母只能是字母或下划线
  2. 由字母，数字和下划线组成
  3. 区分大小写
  4. 不能使用保留字
- 数据类型
  - 整型
    - 短整型：`short int`
    - 长整型
  - 浮点型
    - 单精度浮点型 float
    - 双精度浮点型double
  - 字符型
  - 定义字符类型（typedef）
  - 宏定义（#define）
  - size_t类型
  - 枚举类型
  - 自定义类型
    - 定义常量（`const`）
  - 指针类型
  - 空类型

**数据类型**

**输出语句（`cout`）**

- `fixed`（强制小数的方式显示）
- `setprecision()`(控制显示的精度)  [需要导入控制符的头文件：`#include<iomanip>`]
- `setw()` 设置宽度

[**输入语句（cin）**](./content/input.md)

**类型转换**

​	强制类型转换

​	1.与c语言一样

​	2.新格式（4个强制类型转换符号）  

`static_cast<long>(thon)  //将变量thon转换为long类型`

[**数组（array）**](./content/array.md)

​	模板类vector

​	模板类array（C++ 11 new add）

[**结构体struct**](./content/struct.md)

[**共用体（union）**](./content/union.md)

[**枚举（enum）**](./content/enumeration.md)

链表