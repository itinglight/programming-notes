# MySQL
    数据库的作用：存储数据，管理数据。
    
    DB DataBase
    DBMS DataBase Manger System 数据库管理系统
    
    关系型数据库
        行，列
        mysql,Oracle,sql Serve,DB2,SQLite
    非关系型数据库
        Redis,MongDB
        {key,value}
    
    DataGrip navicat

## MySQL
    官网：
    
    关键字：不区分大小写
### 查

```
    show databases; --查看所有数据库
    show tables; --查看数据库中所有的表
    describe user; --查看表的结构 (等价于 desc user)
```
### 增
```mysql
    create databases;
    creare database shop character set utf8 collate utf8_general_ci
```
### 使用数据库
```
    use databases_name;
```
### 退出链接
    exit

### 注释
单行注释：--  #
多行注释：/* */

### 修改用户密码
```mysql
    update mysql.user set authentication_string=password('123456') where user='root' and Host = 'localhost'; --修改用户密码
```

CRUD:
# 新增表

`source` 在命令行里面创建表

create table 
增
```mysql

    insert 
```

删

```
		delete
```

改
```
    update
```
查
```
    select * from user;
```

DDL 定义 Definition
DML 管理 Manipulation
DQL 查询 Query
DCL 控制 Control

# 操作数据库



## 事务处理
## 存储过程
## 






### 数据处理函数

##### 文本处理函数

##### 日期和时间处理函数

##### 数值处理函数

### 聚集函数（aggregate function）

**AVG( )函数**

Count()函数

```mysql




#MySQL

# 显示所有的数据库
show databases ;
# 创建一个数据库
create database IF NOT EXISTS itinglight;
# 使用数据库
use itinglight;
# 删除数据库
DROP database if exists itinglight;

# 数据库列的类型
    /*
     数值
        整数：
            tinyint  十分小的数据 1个字节
            smallint    较小的数据 2个字节
            mediumint 中等大小的数据 3个字节
            int     标准的整数 4个字节
            big     较大的数据 8个字节
        浮点数：
            float   单精度浮点数 4个字节
            double  双精度浮点数 8个字节
            decimal 字符串形式的浮点数  #金融计算的时候，一般是使用的decimal


     字符串
        char    字符串固定大小的    0～255
        varchar 可变字符串   0～65535 #对应Java里面的String类型
        tinytext 微型文本   2^8 -1
        text 文本串    2^16-1


     时间日期
        java.util.Date
        date    YYYY-MM-DD 日期
        time    HH:mm:ss 时间格式
        datetime    YYYY-MM-DD HH:mm:ss    最常用的时间格式
        timestamp   时间戳 1970.1.1 到现在的豪秒数。
        year    年份的表示

     null
        没有值，未知 # 注意不要使用null进行运算，结果为null

# 数据库的字段属性 ****
     主键
         Unsigned:无符号的整数
         声明了该列不能声明为负数

     zerofill:
        0填充的，不知位数用0填充

     自增

     非空 NULL 和 NOT NULL


     id 主键
     `version`  乐观锁
     id_delete  伪删除
     gmt_create 创建时间
     gmt_update 修改时间
     */

#显示所有表
show tables;
desc user; # 查看表的详细信息
# 创建表

/*
 not NULL 不能为空
 auto_increment 自增
 comment '' 注射
 default


 创建表的格式
 CREATE TABLE [IF NOT EXISTS] `表名`(
    `字段名` 列类型 [属性][索引][注射],
    `字段名` 列类型 [属性][索引][注射],
    ...
    `字段名` 列类型 [属性][索引][注射]
 )ENGINE = INNODB DEFAULT CHARSET=usf8;


 数据库引擎：

 MyISAM 与 INNODB 的区别
INNODB  mysql默认使用 支持事务 支持数据行锁定 支持外键 mysql5.6以后支持全文索引    安全性高 多表多用户的管理
MYISAM  早些年使用的  节约空间，速度较快

 InnoDB 在数据库中只有一个*.frm 文件 ，以及上级目录下的ibdata1文件
 MyISAM
        *.frm   表结构的定义文件
        *.MYD   数据文件（data）
        *.MYI   索引文件（index)

CHARSET=usf8; # 默认的编码为Latin1,不支持中文
 */
create table if not exists `book`(
    `id` int(4) not null auto_increment comment '编号',
    `name` varchar(200) comment '书名',
    `prise` varchar(200) default '99' comment '价格',
    `gmt_update` DATETIME DEFAULT null comment '创建时间',
    primary key(`id`)
)ENGINE =INNODB DEFAULT CHARSET=utf8 ;



# 查看创建数据库的语句
show create database itinglight;

--  查看创建表的语句
Show Create table book;

--  查看表的具体结构
desc book;
create table IF NOT EXISTS user(
    `name` varchar(200),
    `phone`varchar(100),
    `password`varchar(200)
)ENGINE =INNODB DEFAULT CHARSET=utf8 ;

select * from user;

insert into user(name, phone, password) VALUES ("itinglight","17673450739","123");

update user set password ="password"  where user.name="itinglight";

-- # 修改表名
alter table user  rename as user1;
select * from user;
-- # 增加表的字段
ALTER TABLE user add age int(10);
--  修改表的字段（重命名，修改约束）
--     # 修改约束
    alter  table user modify name varchar(200);
    # 重命名
    alter table user change age age1 int(1);
-- # 删除表的字段
alter table user drop age;
-- 删除表
DROP TABLE IF EXISTS user;




# mysql数据管理

-- 外键（了解）
-- DML语言（全部记住）
-- 添加
-- 修改
-- 删除

# 外键（了解）

# 方法一
create table IF NOT EXISTS user(
    `id`varchar(200),
    `name` varchar(200) ,
    `phone`varchar(100),
    `password`varchar(200),
    `carId`varchar(200),
    primary key (`id`),
    key `FK_carID` (`carId`),
    CONSTRAINT `FK_carID` FOREIGN KEY ('carId') references 'car'(`car_id`)

)ENGINE=INNODB DEFAULT CHARSET=ust8;

# 方法二
ALTER table `user`
ADD CONSTRAINT  `FK_carId` FOREIGN KEY (`carId`) REFERENCES 'car'(`carId`);

# DML语言（全部记住） 数据库管理语言
    /*
    insert
         语法
        insert into 表名(字段名1,字段名2,字段名3)values (`值1`,`value2`,`value3`);

        同时插入多个值
        insert into table(name,password,address) values('','',''),('','','')
    update
    delete
     */
    select * from user;
    insert user (name,phone,password)values('张三','1234','admin'),('b','1234','admin');
# 添加


# 修改
# 格式：UPDATE 表名 set colnum_name=value,[colnum_name=value] where[条件];
# 条件
    /*
        = 等于
        <
        >
        <> 或 !=
        >=
        <=
        between 2 and 6
        and
        or

    */
 #update `table_name` set password="123" where id="1";
#     重置所有用户的密码
    update user set itinglight.user.password="123";
# 删除
#     delete from user [where]

#     清空数据库表
    truncate user;


#DQL查询语言
select
```

## 数据查询

#### Select 

**distinct**去重

```mysql
# select

# distinct去重

select version()  #查看系统版本
select 100*3-1 AS 计算结果 #来计算
select `id`+1 #id加一

```

数据库中的表达式：文本值，列，Null，函数，计算表达式，系统变量。

### where

### where条件子句

| 运算符   | 语法           | 描述   |
| -------- | -------------- | ------ |
| and &&   | a and b a&&b   | 逻辑与 |
| or \| \| | a or b  a\|\|b | 逻辑或 |
| Not !    | not a. !a      | 逻辑非 |

### 模糊查询：比较运算符

| 运算符      | 语法          | 描述                         |
| ----------- | ------------- | ---------------------------- |
| IS NULL     | a is null     | 如果操作符为NULL，结果为真   |
| IS NOT NULL | a is not null | 如果操作符不为NULL，结果为正 |
| LIKE        | a like b      |                              |
| IN          |               |                              |

```mysql
select * from user
where `name` is not null
```



## 连表查询

**7种连接查询**

![](https://s8.51cto.com/images/blog/202108/14/31c1eeb2dab6da0e4a608a25aed31df4.jpeg?x-oss-process=image/watermark,size_16,text_QDUxQ1RP5Y2a5a6i,color_FFFFFF,t_100,g_se,x_10,y_10,shadow_90,type_ZmFuZ3poZW5naGVpdGk=)

连接可以分为三类：

　　(1) 内连接：join，inner join

　　(2) 外连接：left join，left outer join，right join，right outer join，union，union all

　　(3) 交叉连接：cross join



#### INNER JOIN 并集查询



 

```
SELECT name ,age ,phone
FROM student
INNER JOIN result

```



### 分页和排序

排序：升序：**ASC** ，降序**DESC**

**ORDER BY** 通过那个字段排序 怎么排





**Limit** 当前页 页面的大小

LIMIT 1，5

【pageSize：页面大小】

（n-1）* pageSize，pageSize

【n：当前页】

【数据总数/页面大小=总页数 

### 子查询 

where（这个值是计算出来的）







### MySQL常用函数



========常用函数========

```mysql
ABS()#绝对值
CEILING #向上取整
FLOOR #向下取整
RAND（）#返回一个0到1之间的随机数
SIGN（）# 判断一个数的符号 负数返回-1 正数返回1

---字符串---
SELECT CHAR_LENGTH("hello"); #字符串长度
SELECT CONCAT('Hello','World!');


SELECT SYSTEM_USER();
SELECT USER();
SELECT VERSION();

```



========聚合函数========

```mysql
SELECT count() 
SUM()
AVG()
MAX()
MIN()

```



### 分组和过滤

 **GROU BY**

**Having**

​	对sleect出来的数据进行筛选



### 数据库级别的MD5加密

**MD5()**

```mysql
update usertable set pwd=MD5(pwd);

INSERT INTO usertable VALUES('001',"itinglight",MD5("123456"));

SELECT * FROM usertable WHERE 'name'='itinglight'AND PWD=(MD5("123456"));
```



```mysql
select 去重 要查询的字段 from 表（注意：表和字段可以取别名）
XXX join 要连接的表 on 等值判断
where（具体的值，子查询语句）
group by（通过哪个字段分组）
Having（过滤分组后的形象，条件和where是一样的，位置不同）
order by (通过哪个字段排序)(升序/降序)
limit startIndex pagesize
```



###  事务

什么是事务

​	要么成功，要么都失败

事务原则：ACID，指数据库事务正确执行的四个基本要素的缩写。包含：[原子性](https://so.csdn.net/so/search?q=原子性&spm=1001.2101.3001.7020)（Atomicity）、一致性（Consistency）、隔离性（Isolation）、持久性（Durability）。一个支持事务（Transaction）的数据库，必需要具有这四种[特性](http://baike.baidu.com/view/884393.htm)



```mysql
SET autocommit = 0
SET autocommit = 1 #开启事务自动提交

--手动处理事务
set autocommit=0

--事务开始
START TRANSACTION
insert ...
insert ...

COMMIT; # 提交
ROLLBACK # 回滚

--事务结束
set autocommit = 1；
SAVEPOINT --保存点
ROLLBACK TO SAVEPOINT
RELEASE SAVEPOINT #删除保存点
```





### 索引

主键索引（PRIMARY KEY）

唯一索引 （UNIQUE KEY） 避免重复的列出现，唯一是索引可以重复，多个列都可以标示位 唯一索引

常规索引（KEY/index）

全文索引（FUllText）

​	

```mysql
--索引的使用
--1，在创建表的时候给字段增加索引
--2，创建完毕后，增加索引

--显示所有的索引信息
SHOW INDEX FROM student

--增加一个全文索引（索引名） 列名
ALTER TABLE school.student ADD FULLTEXT INDEX `sudentName`('studentName');
--EXPLAIN 分析sql执行的状况
EXPLATIN SELECT * FROM student;--非全文索引
EXPLATIN SELECT * FROM student WHERE MATCH(studentName)AGATNST('姜')


```

http://blog.codinglabs.org/articles/theory-of-mysql-index.html 索引扩展阅读

### MySQL 编程

```mysql
DELIMITER $$
CREATE FUNCTION Show_page()
RETURN INT
BEGIN 
	DECLARE num INT DEFAULT 10000;
	DECLARE i INT  
END
```

### 权限管理

​		新增用户

```mysql
create user itinglight;
		
CREATE USER itinglgiht IDENTIFIED BY '123'

# 修改当前用户密码

SET PASSWORD FOR itinglight=password('111')

# 修改用户名
RENAME USER itinglgiht TO jiangbin;
#查看用户权限
show grants for itinglight;
#查看root用户的权限
SHOW GRANTS FOR root@localhost;
#用户授权 授权用户所有权限 出了授权权限
GRANT ALL PRIVILEGES ON *.* TO itinglight;



#撤销权限
REVOKE ALL PRIVILEGES ON *.* TO itinglight;

#删除用户
DROP USER jiangbin;
```



### 数据库备份

- 保证重要的数据不被流失

- 数据转移

- ```mysql
  mysqldump -h localhost -u root -p123 szhaibai products > /Users/itinglight/Desktop/backup.sql 
  
  
  #导入备份文件
  source backupFile
  
  mysql -u 用户名 -p 密码 库名< 备份文件
  ```

  

### 数据库的规约，三大范式

### 第一个范式

原子性：保证每一列不可再分

## 第二范式

前提：满足第一范式

每张表只描述一件事情

### 第三范式

前提：满足第一范式，第二范式

第三范式需要确保数据表中的每一列数据都和主键直接相关，而不能间接相关。

### JDBC

