# Java
## 1.什么是java？
## 2.java的发展历史
## 3.java的版本
1. Java SE	称为Java标准版或者Java标准平台
2. Java EE    
3. Java ME
## 输出第一个hello word
```java
// 输出Hello world
public class	Hello{
  public static void main(String[] args){
    System.out.println("Hello world");
  }
}
```
## java关键字
```java
//关键字
interface
abstract
//保留字
goto    const
//标识符
  定义：凡是自己可以起名字的地方都叫标识符
 包名，类名，接口名，变量名，方法名，常量名
```



## 基本数据类型

## 强制类型转换

```java
//自动类型提升运算符得到的逆运算
// 需要使用强转符 （）
int i2=128;
byte b = (byte)i2;
```

## String类型变量的使用

```java
// String类型属于引用数据类型
String s1 ="hello world!";
System.out.println(s1);
String s2 ="a";

//连接运算
int number=1001;
String numberStr="学号:"；
  
String info1= numberStr+number; //连接运算

```

## 计算机中不同进制的使用说明

```
二进制  以0b或0B开头
八进制		以数字0开头
10进制
十六进制	以0x或者0X开头表示，A—F不区分大小写
```

# 接口

```java
//JDK8:除了定义全局常量和抽象方法之外，还可以定义静态方法，默认方法
//知识点1:接口中定义的静态方法，只能通过接口调用
//知识点2:通过实现类的对象，可以调用接口中的默认方法。
//如果实现类重写了接口中的默认方法，调用时，仍热调用的是重写以后的方法
//知识点3:如果子类（或实现类）继承的父类和实现的接口中声明了同名同参数的方法，哪么子类在没有重写此方法的情况下，默认调用的是父类中的同名同参数的方法。--〉优先类原则
//知识点4:如果实现类实现了多个接口，而这多个接口定义了同名参数的默认方法，哪么实现类没有重写此方法的情况下，报错。-->接口冲突
//这就需要我们必须在实现类中重写此方法
public interface CompareA{
  	//静态方法
  	public static void method1(){
      system.out.println("static method");
    }
  	//默认方法
  	public default void method2(){
      system.out.println("default method");
    }
  
  	
}
```

# 内部类

```java
//
class Person{
  
  
}
```

