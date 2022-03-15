# Swagger

需要导入springfox-swagger2 和sprignfox-Swagger-ui

```xml
      <!-- https://mvnrepository.com/artifact/io.springfox/springfox-swagger2 -->
        <dependency>
            <groupId>io.springfox</groupId>
            <artifactId>springfox-swagger2</artifactId>
            <version>2.9.2</version>
        </dependency>

        <!-- https://mvnrepository.com/artifact/io.springfox/springfox-swagger-ui -->
        <dependency>
            <groupId>io.springfox</groupId>
            <artifactId>springfox-swagger-ui</artifactId>
            <version>2.9.2</version>
        </dependency>
    </dependencies>
```

在config文件夹里面新建一个SwaggerConfig配置类

```java
package com.itinglight.springboot.config;


import org.springframework.context.annotation.Configuration;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

@Configuration
@EnableSwagger2
public class SwaggerConfig {
}

```





详细配置

```java
package com.itinglight.swaggertest02.Config;


import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

import static springfox.documentation.builders.RequestHandlerSelectors.any;

@Configuration
@EnableSwagger2
public class SwaggerConfig {


    @Bean
    public Docket docket(){
        return new Docket(DocumentationType.SWAGGER_2)
                .groupName("itinglight")
                //设置项目文档信息
                .apiInfo(apiInfo());
    }
  
  
    private ApiInfo apiInfo() {
        return new ApiInfoBuilder()
                //标题
                .title("苏州海百化工 接口文档 ")
                //描述
                .description(" 一个简单且易上手的 Spring boot 后台管理框架 ")
                //版本
                .version("2.6")
                .build();



    }
}

```







@Api

@ApiModel //与Api等价

@ApiModelProperty //注视属性



@ApiOperation

@ApiParam