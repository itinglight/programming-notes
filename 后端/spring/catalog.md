# Spring

Spring理念：**使现有的技术更加容易使用**，本身是一个大杂烩，整合了现有的技术框架！

SSH：Struct2+Spring+Hibernate！

SSM：SpringMvc+Spring+Mybatis！

官网：

### 优点

- Spring是一个开源的免费的框架（容器）！
- Spring是一个轻量级的，非入侵式的框架！
- 控制反转（IOC），面向切面变成（AOP）！
- 支持事务的处理，对框架整合的支持！

总结：**Spring就是一个轻量级的控制反转（IOC）和面向切面编程（AOP）的框架！**

### 组成

构建一切，协调一切，连接一切。

**SpringBoot**

- 一个快速开发的脚手架
- 基于SpringBoot开源快速开发单个微服务。

**SpringCloud**

- SpringCloud是基于SpringBoot实现的。

现在大多数公司都在使用SpringBoot进行快速开发，学习SpringBoot的前提，需要完成掌握**Spring**及**SpringMVC**！承上启下的作用！

弊端：发展了太久之后，违背了原来的理念！配置十分繁琐，人称：“配置地狱”。

### 导入SpringBeanXML

```xml
<?xml version="1.0" encoding="UTF-8"?>
<beans xmlns="http://www.springframework.org/schema/beans"
       xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
       xsi:schemaLocation="http://www.springframework.org/schema/beans
        https://www.springframework.org/schema/beans/spring-beans.xsd">

</beans>
```



## 2 IOC理论推导

1. Spring 创建对象 **对象由Spring来创建，管理，装配**

   1. 无参构造类

   ```xml
   <?xml version="1.0" encoding="utf-8" ?>
   <beans>
       <!--
       id: 变量名 bean 
       class: 设置new 的对象com.example.bean.Bean bean对象所对应的权限定名：包名+类名
   		name:别名 可以取多个(可以用空格，分号，逗号隔开)
       property 设定属性值
       -->
       <bean id="bean" class="com.example.Bean" name=“bean1,bean2">
           <property name="name" value="${name}" />
       </bean>
   </beans>
   ```

   ```java
   //获取AppliationContext
   ApplicationContext context=new ClassPathxmlApplicationContext ("beans.xml")
   User user = （User）context.getBean("user")
   ```

   1. IOC针对有参构造类创建对象三种方式

      1. 下标赋值

         ```xml
         <bean>
         	<constructor-arg type="" value=""/>
         </bean>
         ```

      2. 通过类型创建

         ```
         
         ```

         

      3. 直接通过参数名（推荐）

         ```XML
         <property name="name" value="${name}" />
         ```

         

         

## Spring 配置

1. 别名

   ```xml
   <alias name="user" alias="aliasUser"
   ```

2. 配置

   ```xml
   <?xml version="1.0" encoding="utf-8" ?>
   <beans>
       <!--
       id: 变量名 bean 
       class: 设置new 的对象com.example.bean.Bean bean对象所对应的权限定名：包名+类名
   		name:别名 可以取多个(可以用空格，分号，逗号隔开)
       property 设定属性值
       -->
       <bean id="bean" class="com.example.Bean" name=“bean1,bean2">
           <property name="name" value="${name}" />
       </bean>
   </beans>
                                                
   ```

3. Import

4. ```xml      
   <improt resource="beans.xml">
   ```

   ![SpringBeanElements](/Users/itinglight/Desktop/programming-notes/后端/spring/img/SpringBeanElements.png)

## Bean的装配

1. 在xml中显式的配置
2. 在java中显式配置
3. 隐式的自动装配bean【重要】

### 注解

```xml
<-->开启注解</-->
<context:annotation-congih/>


@Override

```



**@Autowired**：自动装配通过类型：名字

​	如果@Autowired不能唯一自动装配上属性，则需要通过@Qualifier（value=“xxx”)

**@Nullable** 字段标记了这个注解，说明这个字段可以为null；

**@Resource**：自动装配通过名字：类型

##### @Resource和@Autowired的区别：

- 都是用来自动装配的，都可以放在属性字段上
- @Autowired通过byType的方式实现，而且必须要求这个对象存在！【常用】
- @Resource默认通过byname的方式实现，如果找不到名字，则通过byType实现！如果两个都找不到的情况下，就报错！【常用】
- 执行顺序不同：@Autowired 通过byType的方式实现。@Resource默认通过byname的方式实现。

### 步骤

1. 写几个类
2. 写入bean
3. 确定导入了xmlns：context=“http://www.springframework.org/schema/context"约束
4. 开启注解的支持 <context:annotation-congih/>

```

```



###   10,代理模式

​	代理模式的分类：

- 静态代理
- 动态代理

#### 静态代理

代理模式的好处：

- 可以使真实角色的操作更加纯粹！不用去关注一些公共的业务
- 公共也就交给代理角色！实现了业务的分工！
- 公共业务发生扩展的时候，方便集中管理！

缺点：

- ​	一个真实角色就会产生一个代理角色；代码量会翻倍～开发效率会变低～

#### 动态代理

- 动态代理和静态代理角色一样·

- 动态代理的代理类是动态生成的，不是我们直接写好的！

- 动态代理分为两大类：基于接口的动态代理，基于类的动态代理

  - 基于接口---JDK动态代理
  - 基于类：cglib
  - Java字节码实现：javasist

  #### Proxy（） InvocationHandor（）接口

  动态代理的好处：

  - 可以使真实角色的操作更加纯粹！不用去关注一些公共的业务
  - 公共也就交给代理角色！实现了业务的分工！
  - 公共业务发生扩展的时候，方便集中管理！
  - 一个动态代理类可以代理多个类，只要是实现了同一个接口

### AOP 

​	SpringAOP的底层**代理模式**

### 导入aspectjweaver包

```xml
<!-- https://mvnrepository.com/artifact/org.aspectj/aspectjweaver -->
<dependency>
    <groupId>org.aspectj</groupId>
    <artifactId>aspectjweaver</artifactId>
    <version>1.9.4</version>
</dependency>
```



方法1

- [ ] ```xml
     <aop:config>
          <!--配置aop-->
      <!--配置切入点-->
         <aop:pointcut id="pointcut" expression="execution(* service.userServiceImpl.*(..))"/>
  
          <!--执行环绕增加-->
         <aop:advisor advice-ref="log" pointcut-ref="pointcut"/>
     </aop:config>
  
  ```

  

  ```java
  ApplicationContext context = new ClassPathXmlApplicationContext("ApplicationContext.xml");
          userService userService = (service.userService) context.getBean("userServiceImpl");
          userService.addUser();
  ```

  方法2 切面定义

  ```
  <aop:config>
  
  </aop:config>
  ```

  

- [ ] 方法3 注解

@Before

@Affter

@Around

