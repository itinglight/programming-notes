# Spring常用注解

```java
@Bean
@Bean(value ="user2")
@Configuration //配置类
@Component("config")

@Autowired  //自动装配
@Qualifier("config")  //通过名字查找类


@Aspect //切面
@Before //方法之前
//JoinPoint
@After //方法之后
@AfterReturning
@Around //环绕执行
```



