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

### 导入Spring

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