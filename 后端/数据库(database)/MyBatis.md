MyBatis



### 导入MyBatis

Pom.xml

```xml
    <!-- https://mvnrepository.com/artifact/org.mybatis.spring.boot/mybatis-spring-boot-starter -->
        <dependency>
            <groupId>org.mybatis.spring.boot</groupId>
            <artifactId>mybatis-spring-boot-starter</artifactId>
            <version>2.2.2</version>
        </dependency>

        <dependency>
            <groupId>mysql</groupId>
            <artifactId>mysql-connector-java</artifactId>
        </dependency>
```



##### Application.yaml

```
spring:
  datasource:
    url: jdbc:mysql://localhost:3306/test
    username: root
    password: 123
```



```

```

