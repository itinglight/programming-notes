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

# 异常

```
//常见的异常

```

### 表 1 Java中常见运行时异常

| 异常类型                      | 说明                                                  |
| ----------------------------- | ----------------------------------------------------- |
| ArithmeticException           | 算术错误异常，如以零做除数                            |
| ArraylndexOutOfBoundException | 数组索引越界                                          |
| ArrayStoreException           | 向类型不兼容的数组元素赋值                            |
| ClassCastException            | 类型转换异常                                          |
| IllegalArgumentException      | 使用非法实参调用方法                                  |
| lIIegalStateException         | 环境或应用程序处于不正确的状态                        |
| lIIegalThreadStateException   | 被请求的操作与当前线程状态不兼容                      |
| IndexOutOfBoundsException     | 某种类型的索引越界                                    |
| NullPointerException          | 尝试访问 null 对象成员，空指针异常                    |
| NegativeArraySizeException    | 再负数范围内创建的数组                                |
| NumberFormatException         | 数字转化格式异常，比如字符串到 float 型数字的转换无效 |
| TypeNotPresentException       | 类型未找到                                            |

### 表 2 Java常见非运行时异常

| 异常类型                     | 说明                       |
| ---------------------------- | -------------------------- |
| ClassNotFoundException       | 没有找到类                 |
| IllegalAccessException       | 访问类被拒绝               |
| InstantiationException       | 试图创建抽象类或接口的对象 |
| InterruptedException         | 线程被另一个线程中断       |
| NoSuchFieldException         | 请求的域不存在             |
| NoSuchMethodException        | 请求的方法不存在           |
| ReflectiveOperationException | 与反射有关的异常的超类     |

# 多线程

### 1.通过extends Thread类 实现多线程

```java
//通过率extends Thread类 实现多线程
start()
run()
currentThread()//静态方法，返回当前代码的线程 通过Theard.currentThread()调用
getName()//获取当前线程的名字
setName()//设置当前线程的名字
yield()//释放当前cpu的执行权
join()//在线程
stop()//deprecated 弃用 作用：强制结束当前线程
sleep()//sleep(1000)
getPriority()//返回线程优先值（级）
setPrioitty(int newPriority)//改变线程的优先值（级）
```

```java
 new Thread(){
            @Override
            public void run() {
                for (int i = 0; i < 10; i++) {
                    if (i%2==0){
                        System.out.println(i+"匿名类");
                    }
                }
            }
        }.start();
```



### 2.通过 implements Runnable  实现多线程

1.创建一个实现了Runnable接口的类

2.实现类去实现Runnable中的抽象方法run（）

3.创建实现类的对象

4.将此对象作为参数传递到Thread类的构造器中，创建Thread类的对象

5.通过Thread类的对象调用start()

```java
//代码实现
class window1 implements Runnable{
  @override
  public void run(){
    
  }
}
```



```java
//开发中：优先选择：实现Runnable接口的方式

原因：1.实现的方式没有类的单继承的局限性

		2.实现的方式更适合来处理多个线程有共享数据的情况

联系：public class Thread implements Runnable

相同点：两种方式都需要重写run（），将线程要执行的逻辑声明在run（）中。
```

# synchronized 同步

```java
//同步代码块 
public void run(){
   			synchronized(同步监视器){
          //需要被同步的代码
      }
  }
//同步方法
		//使用同步方法解决实现类的线程安全问题
public synchronized void run(){//synchronized默认调用this  同步监视器是本身
   	
}
		//使用同步方法解决继承类的线程安全问题
	
```

解决线程的安全问题的方式三：lock锁

```java
private ReentrantLock lock = new ReentrantLock(); 
locl.lock()//调用锁定的方法
locl.unlock()//调用解锁的方法
```

## 线程通信涉及到的三个方法：

```java
wart()		//一旦执行此方法，当前线程就进入阻塞状态，并释放同步监视器
notify()	//一旦执行此方法，就会唤醒被wait的一个线程，如果有多个线程被wait就唤醒优先级高的
notifySll() //一旦执行此方法，就会唤醒所有被wait的线程

 // 上面这三个方法是定义在object中的
  
```

JDK5.0新增线程创建方式

## 新增加方式一：实现Callable接口

```java
class NumThread implements Callavle{

	@Override
	public Pbject call() throws Exception{
	
	}
}
```

## 新增加方式二：使用线程池

```java
//代码实现
ExecutorService service =executors.newFixedThreadPool(10);
//

service.execute(new NuberThread());

//
service.shutdown();
```

