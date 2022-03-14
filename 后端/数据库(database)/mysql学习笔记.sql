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


use itinglight;
#DQL查询语言
select * from user
where `name` is not null