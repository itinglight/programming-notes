Node.js

ES6 语法糖

npm 包管理器

Babel

模块化管理

webpack打包和编译

nodejs项目 vue-admin-element

## Node.js

`node hello.js`

启动一个nodejs http服务器

```javascript
//导入模块是require 类似于Java的 import java.io
const http =require('http');

//1：创建一个httpserver服务
http.createServer(function(request,response){
	response.writeHead(200,{'Content-type':'text/html'});

    response.end("<strong>Hello Server!!!</strong>");

}).listen(8888)
console.log("你启动的服务是：http://localhost:8888")
//2：监听一个端口8888
//3：启动
```

nodejs操作数据库

`npm install mysql`

```javascript
//1：导入mysql依赖包，mysql属于第三方的模块就类似于Java.sql一样的道理
var mysql=require("mysql");
//1：创建一个mysql的Connection对象
//2：配置数据库连接的信息
var connection=mysql.createConnection({
  host:"localhost",
  port:3306,
  user:"root",
  password:"123",
  database:"test"
})
//3：开辟连接
connection.connect();
//4： 支持curd
connection.query("select * from user",function(error,results,fields){
  //如果查询出错，直接抛出
  if(error)throw error;
  //查询成功
  console.log("results=",results)
})
//5；关闭连接
connection.end();
//最后一步：运行node db.js 查看结果
```

### ES6 语法糖

```javascript
//传统定义变量和常量的方式 统一使用var
var name="itinglgiht";

//ES6定义的方式
let name2="jiangbin";

//定义常量
const PI=Math.PT;

/*
	let和const解决
		1.var的变量穿透的问题
		2.常量修改的问题
*/
```

ES6模版字符串

```javascript
let name="itinglight";
let string="Hello"+name;
let string2=`Hello${name}`;
console.log(string);
VM348:1 Helloitinglight
console.log(string2);
VM367:1 Helloitinglight
```

ES6默认参数

```javascript
function abs(a=18){
	if(a>0){
		return a;
	}else{
		return -a;
	}
}
```

ES6箭头函数

```javascript
var sum =fuction(a,b){
  return a+b;
}
//箭头函数 改进1
var sum =(a,b)=>{return a+b};
//箭头函数 改进2
var sum =(a,b)=>a+b;
/*
	规律
	1.去掉function
	2.在括号后面加箭头=>
	3.如果逻辑代码仅有return 没有逻辑代码则可以省略{}
	4.如果参数只有一个,可以把括号也省去（多个参数就不可以了）
*/
```

ES6对象简写

```javascript
//如果对象key和变量的名字一致，可以只定义一次即可
//如果value是一个函数，可以吧`:function`去不去掉，只剩下()即可

let person={
  name:"itinglight",
  phone:'176****0739',
  go:function(){
    console.log("go to company by bicycle");
  }
}
var name='itinglight';
var phone='176****0739';
let person2={
  name,
  phone,
  go(){
    console.log("go to company by bicycle");
  }
}
```

ES6对象结构

```javascript
//获取对象属性的方法
//1.通过对象名.属性名 对象名.方法名
//2.通过对象名[属性名] 对象名[方法名]

//ES6新增语法
var {name,phone,go}=person;
//还原代码
var name=person.name;
var phone=person.phone;
var go=person.go();
```

ES6传播操作符

```javascript
let person={
  name:"itinglight",
  phone:'176****0739',
  go:function(){
    console.log("go to company by bicycle");
  }
};
var {name,phone,...person3}=person;
// 将name phone 之外其他的属性和方法负给person3
```

ES6Map()

```javascript
let arr=[1,2,3,4,5,6,7];
let newarr=[];
for(let i=0;i<arr.length;i++){
  newarr.push(arr[i]*2);
}
console.log(newarr)

//ES6 新方法 map  自带循环并且把处理的值回填到原来的作用 不会改变原数组or对象
newarr=arr.map(function(ele){
  return ele*2;
})

//map 处理对象
```

ES6 reduce()

```javascript
let arr=[1,2,3,4,5,6,7];
var result=arr.reduce(function(a,b){
  return a+b;
})
console.log(result);
# 28
```



## npm 包管理器

#### node package manager

`npm init`

```javascript
package name: (jquerytest) q
version: (1.0.0) 
description: 
entry point: (hello.js) index.js
test command: 
git repository: 
keywords: node
author: itinglight
license: (ISC) 
```

会得到package.json文件

```json
{
  "name": "q",
  "version": "1.0.0",
  "description": "",
  "main": "index.js",
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "keywords": [
    "node"
  ],
  "author": "itinglight",
  "license": "ISC"
}
```

导入模块

`const redis require("redis");`

`const mysql require("mysql");`

## Babel

Babel是一个广泛的转码器，将ES6的代码转换为ES5的代码，从而在现有环境中运行

**安装**

`npm install babel-cli -g`

查看版本

`babel --version`

**配置文件**

`.babelrc`

```json
{
  "presets":["es2015"],
  "plugs":[]
}
```

安装转码器

`npm install --save-dev babel-preset-es2015`

转码

`babel src -d dist2`

#### 自定义脚本

修改package.json

```json
"scripts": {
    "test": "echo \"Error: no test specified\" && exit 1",
    "dev": "babel ./src/js -d dist/js"
  },
```



## 模块化管理

CommonJs规范

```javascript
//导出
module.exports={
  sum:sum,
  mul:mul,
  sub:sub,
  di:di
}
//导入
const m=require('./sum.js')
```

ES6模块化规范

```javascript
export function getList(){
  console.log("list..")
}
export function save(){
  console.log("save..")
}
```

```javascript
import{getList,save} from './userApi.js'
```

ES6 最新写法

```javascript
export default{
    function getList(){
   	 console.log("list..")
  } 
		function save(){
    console.log("save..")
  }
}
```

## webpack打包和编译

`cnpm install -g webpack`

步骤

1. 创建一个node.js项目 npm -init -y

2. 创建一个src目录

3. 在src存放两个需要合并的util.js和common.js

4. 准备一个入口文件main.js,其实就是模块集中进行引入

5. 在根目录下定义一个webpack.config.js文件配置打包规则

   ```javascript
   const path=require('path');
   
   module.exports={
       //打包的入口文件
       entry:"main.js",
       output:{
           //打包后输出的路径
           path:path.resolve(__dirname,"./dist"),
           //指定要输出的文件名称。
           filename:"bundle.js"
       }
   }
   ```

   

6. 执行webpack查看结果.   [webpack]







### css打包

需要先安装style-loader 和css-loader

`cnpm install --save-dev style-loader css-loader`

配置规则

```javascript
const HtmlWebpackPlugin = require('html-webpack-plugin');
const webpack = require('webpack'); // 用于访问内置插件
const path=require('path');

module.exports={
    mode: 'development',
    //打包的入口文件
    entry:"./src/js/main.js",
    output:{
        //打包后输出的路径
        path:path.resolve(__dirname,"./dist/js"),
        //指定要输出的文件名称。
        filename:"bundle.js"
    },
    module:{
        rules:[{
            //test 属性，识别出哪些文件会被转换。
            test:/\.css$/,
            //属性，定义出在进行转换时，应该使用哪个 loader。
            use:["style-loader","css-loader"]
        }]
    },
    plugins: [new HtmlWebpackPlugin({ template: './src/index.html' })],
}
```

`webpack -w` 监听

## nodejs项目

 vue-admin-element

开源地址：https://github.com/PanJiaChen/vue-element-admin

