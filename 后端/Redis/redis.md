# Redis

五大基本类型

String List Set（集合）

```shell
select 1
keys * #查看当前库的所有key
exists key #判断某个key是否存在
type key #判断key的类型
dek key
unlink key 
expire key 10 #设置key10秒后过期
ttl key #查看key的过期时间
dbsize #查看当前库的key数量
flushdb #清空当前库
dlushall #清空全部库

get #获取key的值
append #追加
strlen #获取key value的长度
setnx # 不存在时设置key
incr key#当value为数字时 +1
decr key #当value为数字时 -1
incrby key <步长> #当value为数字时 增加指定数量
decrby key <步长> #当value为数字时 增加减少数量
```

