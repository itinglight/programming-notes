# MongoDB





### 基本命令

```mongodb
show dbs
show databases
db#显示当前使用的数据库
use test
show collections#显示当前数据库中所有的集合


CRUD 增删改查	
db.<collection>.insert(doc)
db.<collection>.find()
use tchat
show collections
db.foods.insertOne()
db.userList.find()

db.user.insertOne({"_id":"001","name":"itinglight"})
db.user.insertOne()
db.user.insertMany()
db.user.find()
db.user.find({"name":"itinglight"})

//修改增加
db.user.updateOne({"id":"002"},
                    {$set:{"id":"001"}})
db.user.updateMany()//同时修改多个
db.user.replaceOne()
//db.user.remove() 已弃用
db.user.deleteOne()
db.user.deleteMany({}) //清空集合，性能较差
db.user.drop() //删除集合



db.user.find({"id":"001"})
db.dropDatabase()//删除数据库
show dbs;
```





