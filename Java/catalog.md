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

