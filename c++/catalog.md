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
5. 其它开发工具 `DEV C++` ,`CLion`,`C-Free`,`Xcode（Mac）`,`C4droid`。。。`
6. ` minGW`
7. GCC

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

变量的引用

```c++
int a;
int &b=a;// 将b作为整型变量a的引用
```



- ​	变量的命名规则
  1. 首字母只能是字母或下划线
  2. 由字母，数字和下划线组成
  3. 区分大小写
  4. 不能使用[保留字](./content/keyword.md)
- 数据类型
  - 整型
    - 短整型：`short int`
    - 长整型:    `long int`
    
  - 浮点型
    - 单精度浮点型 float
    - 双精度浮点型double
    
  - 字符型`char`

  - 字符串变量（string）

    ```C++
    #include<iostream> 
    #include<string>//定义字符串变量需声明头文件 “string”
    ```

    

  - 定义字符类型（typedef）

  - 宏定义（#define）

  - 定义常量（`const`）

  - size_t类型

  - 枚举类型

  - 自定义类型

  - 指针类型

  - 空类型

  **数据类型**

**运算符**

​			取模的场景（%）

- 取某个数字的各位			`125%10`

- 45天是一个月零几天      `45%30`

  **位运算符**

- `sizeof()`运算符

- 作用域运算符

- ```C++
//作用域运算符
  #include<iostream>
  using namespace std;
  float a=13.5;
  int main(){
  int a=5;
  cout<<a; //输出局部变量a的值
  cout<<::a;	//输出全局变量a的值
   return 0；
  }
  ```
  
  ### 动态分配/撤销内存运算符
  
  ```C++
  new 类型 [初值];
  
  delete[]指针变量 //在执政变量前面加一对方括号，表示对数组空间的操作
      
      
  ```
  
  **运算符优先级**

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





**循环语句**

1. **while循环**	

2. **do-while循环**

3. **for循环**

   外层循环控制行（行数，换行）

   内层循环控制列（列数，列的图形）

[**数组（array）**](./content/array.md)

​	模板类vector

​	模板类array（C++ 11 new add）

​	一维数组

​	二维数组

​	数组的替代品：

##### 			向量容器vector

​						vector 是一个快速的动态分配内存的数组    **大小可以动态扩展**

```C++
//	向量容器vector的用法
//定义和初始化：
#include <vector>;
vector<double>vecDouble = {1,2,3,4,5};
vector<string>vec2(5);

//在数组的尾部插入一个数字
vecDouble.push_back(13)
    
    //集合的通用遍历方法：使用迭代器 iterator
    vector<double>::iterator it; //得到迭代器对象

```



### 指针(pointer)	

​			指针是一个值为内存地址的变量（或数据对象）

​			**指针变量占4个字节**

```C++
//基本用法
int* ptr_num;
int a;
//取地址符 &
ptr_num=&a; // 将ptr_num 与a绑定
//间接运算符 *

/*
	空指针（nullptr）需包含头文件#include<cstdlib>

*/
//void*指针  一种特殊的指针类型。可以存放任意对象的地址
		一般用来和别的指针比较   

            
//引用(reference) *****
            //为对象起了另外一个名字
            //引用对指针进行了简单的封装，底层任然是指针
            
//指针与数组
            
```

### 指针的运算

​		指针的递增和递减（++，--）



## 函数重载

## 函数模版

```C++
//关键字 template ｜typename

//方法1
template<typename T>   //模版声明
//通用函数定义

//方法二

template<class T>				//模版声明
  
```

## 内联函数

```c++
/* 内置函数又称为内联函数

关键字：inline

作用：可以节省运行时间，但却增加了目标程序的长度。

适用对于规模很小且使用频繁的函数使用内联函数可以大大提高运行效率

*/
inline int max(int a,int b, int c){
    
    if(b>a) a=b;
    if(c>a) a=c;
    return a;
}
```

## 

## 类和对象class

```C++
class 类名{
  //private，pubiic，protected
    private:
        // 私有的数据和成员函数
    public:
        //公用的数据和成员函数
    protected:
        //受保护的的成员，不能被类外访问，但是可以被派生类的成员函数访问
}；

```

### 定义对象的方法

​	1.先声明类类型，然后再定义对象

​	2.在声明类的同时定义对象

​	3.不出现类名，直接定义类对象

## [**结构体struct**](./content/struct.md)

```C++
struct Student{
  
  private:
  	int num;
  	char name[20];
  	char sex;
  
  public:
  	void display(){ //成员函数
      cout<<"num:"<<num<<endl;
    }
};

Student stud1,stud2;  //定义了两个Student类的对象
```

[**共用体（union）**](./content/union.md)

[**枚举（enum）**](./content/enumeration.md)

链表

**异常处理**

​	异常处理的语法：

```c++
try{
  	throw a;
}
catch
```

​	**命名空间**

## 继承

```c++
// c++ 通过继承建立派生类
```



## 派生类

```C++
class 派生类名:[继承方式] 基类名
{
    派生类新增加的成员
}
```

## 多态性