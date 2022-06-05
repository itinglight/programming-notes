# MongoDB

官网：

社区版免费

MacOS HomeBrew下载方式



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



## 数据关系

一对一

一对多

多对多



### Sort()排序函数

排序 1升序 -1降序 

sort({salary:-1,empno:-1})





### 投影

显示需要的数据段

`db.user.find({},{enam:1,username:1,password:0})`



### Mongoose

Mongoose(简化MongoDB模块)让我可以通过Node来操作MongoDB

好处：

​	可以为文档创建一个模式结构（Schema）

​	可以对模型中的对象/文档进行验证

​	数据可以通过类型转换转换为对象模型

​	可以使用中间件来应用业务逻辑挂钩

​	比Node原生的MongoDB驱动更容易

##### 安装

下载

`npm install mongoose --save`

引入

`var mongoose = require("mongoose")`

连接

```javascript
//引入mongose
const  mongoose = require('mongoose');
//连接MongoDB
mongoose.connect("mongodb://localhost:27017/tchat")
mongoose.connection.once("open",function(){
  console.log("数据库连接成功")
});

mongoose.connection.once("close",function(){
  console.log("数据库连接已经断开")
});
console.log("hhh")
//关闭连接，一般不需要调  
mongoose.disconnect();
```



#### 提供了几个新的对象

1. Schemo【模式对象】
2. Model【模型】
3. Document【具体的文档】



```
const mongoose = require("mongoose");
mongoose.connect("mongodb://localhost/testchat")
mongoose.connection.once("open",()=>{
  console.log("连接成功～～～")
})

//将mongoose.Schema 赋值给Schema变量
var Schema=mongoose.Schema;

var userSchema = new Schema({
  name:String,
  age:Number,
  gender:{
    type:String,
    default:"female"
  },
  address:String
})

//通过Schema来创建Model
//Model代码的是数据中的集合，通过Model才能对数据库进行操作

var UserModel = mongoose.model('user',userSchema)

UserModel.create({
  name:"itinglight",
  age:21,
  gender:"nan",
  address:"岳阳"
},function(err){
  if(!err){
    console.log("插入成功！！")
  }
})
```

#### Model中的常用方法

create() 

```
Mode.create(doc(s),回调函数) 
```

Model.find()

```
Model.find({},{},{},function(){
		//回调函数
})
```

Model.findById()

Model.findOne()

Model.update()

Model.replaceOne()

Model.remov()

Model.deleteOne()



#### Document

```javascript
doc.update()
doc.remove()
doc.get("age")
doc.set()//
doc.equals()
doc.toJSON() //转换为JSON
doc.toObject() //转换为JS对象
```



```js
Var userDocument = new UserModel({



})
userDocument
```

