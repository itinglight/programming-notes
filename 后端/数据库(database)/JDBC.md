# JDBC

```xml
<!-- https://mvnrepository.com/artifact/mysql/mysql-connector-java -->
<dependency>
    <groupId>mysql</groupId>
    <artifactId>mysql-connector-java</artifactId>
    <version>5.1.44</version>
</dependency>
```

#### JDBC连接步骤

1. 加载驱动
2. 连接数据库【DriverManger】
3. 获取执行SQL的对象【Statement】
4. 获取返回的结果集【ResultSet】
5. 释放俩节

```java
//注册驱动
Class.forName("com.mysql.jdbc.Driver"); 
Class.forName("com.mysql.cj.jdcb.Driver");
//用户信息和URL
String url="jdbc://localhost:3306/express?useUnicode=true&CharacterEncoding=uft8&useSSL=true&serverTimeZone=GMT%2B8";
/*useSSL=true 报错可以改为useSSL=false*/
String username="root";
String password="123456"
//获取链接
Connection connection=DriverManger.getConnetcion(url,username,password)
//获取执行SQL的对象
Statement statement=connection.createStatement();
//用执行SQL的对象 去 执行SQL
ResultSet resultSet=statement.executeQuery(sql);
while(resultSet.next()){
  resultSet.getObject("name");
  resultSet.getObject("password");
}
//释放链接
resultSet.close();
statement.close();
connection.close();
```



```java

Statement statement = connection.createStatement();

statement.executeQuery(sql) //查询操作返回ResultSet结果集
statement.executeUpdate(sql); //更新，插入，删除
statement.execute(sql);


connection.prepareStatement(sql)

  
resultSet.getString();
resultSet.getInt();
resultSet.getFloat();
resultSet.getDate();
resultSet.getObject();
  
  
resultSet.previous()//移动到前一行
resultSet.next();//移动到后一行
resultSet.beforeFirst();//移动到最前面
resultSet.afterLast();//移动最后面
int row=3;
resultSet.absolute(row); //移动到指定行·
```

### 事务

```java
 connection.setAutoCommit(false); //关闭自动提交开始事务
 
  //如果失败默认回滚
connection.rollback();//回滚事务
```

## 数据库链接池

开源数据实现

DBCP

官方文档：https://commons.apache.org/proper/commons-dbcp/index.html

```xml
<dependency>
    <groupId>commons-dbcp</groupId>
    <artifactId>commons-dbcp</artifactId>
    <version>1.4</version>
</dependency>
<!-- https://mvnrepository.com/artifact/commons-pool/commons-pool -->
<dependency>
    <groupId>commons-pool</groupId>
    <artifactId>commons-pool</artifactId>
    <version>1.6</version>
</dependency>

```

c3p0

官方文档：https://www.mchange.com/projects/c3p0/

```xml
<!-- https://mvnrepository.com/artifact/com.mchange/c3p0 -->
<dependency>
    <groupId>com.mchange</groupId>
    <artifactId>c3p0</artifactId>
    <version>0.9.5.5</version>
</dependency>
<!-- https://mvnrepository.com/artifact/com.mchange/mchange-commons-java -->
<dependency>
    <groupId>com.mchange</groupId>
    <artifactId>mchange-commons-java</artifactId>
    <version>0.2.20</version>
</dependency>

```

Druid:阿里巴巴

官方文档：https://druid.apache.org/

```xml
       <!-- https://mvnrepository.com/artifact/com.alibaba/druid -->
        <dependency>
            <groupId>com.alibaba</groupId>
            <artifactId>druid</artifactId>
            <version>1.2.8</version>
        </dependency>
```

