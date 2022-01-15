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
```
    create databases;
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
create table 
增
```mysql

    insert 
```

删

改
```
    
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



