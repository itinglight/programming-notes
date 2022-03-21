`document.write()：在页面输出一个内容；`

`alert()：弹出一个对话框；`

`var  变量名=值;`

thread：线程

process：进程

file：文件

Virtual Memory：虚拟内存

fingerprint：指纹

finger：手指

# Javascript

## 输出Hello world！

方法一

```javascript
window.alert("Hello world!");
```

方法二

```javascript
consol.log("Hello world!");
```





```javascript
'use strict'
```

#### 字符串

```javascript
let name="itinglight";
let msg='Hello ${name}!';


name.length  //字符串的长度

字符串不可变

name.toUpperCase() //字符串转大写
name.tolowerCase() //字符串转小写

name.indexOf('t') //获取指定字符的下标

student.substring(1) //从第一个字符串截取到最后一个字符串

student.substring(2,5) //[2,5)

```

#### 数组

```javascript
var arr=['a','b','c','1','2','3'];
arr.length //获取数组的长度
arr.length //修改数组的大小

arr.indexof(2) //通过元素获取下标索引

arr.slice() //截取Array的一部分，返回一个新的数组

arr.push() //押入到尾部
arr.pop() //弹出尾部的一个元素

arr.unshift() // 押入到头部
arr.shift() //去掉头部的一个元素

arr.sort() //排序

arr.reverse() //元素反转

arr.concat() //合并元素

arr.join('-') //打印拼接数组

arr.fill('1') //填充

```

#### 对象

js对象，{...}表示对象

```javascript
var person ={
  name:"itinglgiht",
  age:21,
  email:"itinglight@gmail.com",
  score:0
}
```

删除对象的一个属性

delete person.score ;

增加一个属性

person.address = "beijing"

判断一个属性是否在对象中

‘age’ in person

判读一个对象是否自身拥有某属性

peperson.hasOwnProperty('age');



#### 分支循环

if else

```javascript
if(){

}else if{

}else{

}
```

while 

```javascript
while(){
  
}
```

For 语句

```javascript
for(let i=0;i<20;i++){
  console.log(i);
}
```

For each 循环

```javascript
arr.forEach(function (value){
    console.log(value);
})
```

```javascript
for(var i in arr){
    console.log(arr[i]);
}

for(var i of arr){
    console.log(i);
}
```

Map 和 Set

```
var map =new Map([['tom',100],['jiangbin',98]]);

map.get('tom')
map.set('itinglight',100)
```

Set 无序不重复的集合

```javascript
var set = new Set([2,3,3,4,])
set.add(5);
set.delete(5);
set.has(2);
```

### Iterator

遍历数组

遍历Map

遍历Set



### 函数

定义函数

```javascript
function abs(x){
  if(x>=0){
    return x;
  }else{
    return -x;
  }
}
```

arguments 代表函数的所有参数



Rest

```javascript
function abc(a,b,...rest){
  console.log(rest)
}
```

### 变量的作用域

var 全局变量

let 局部变量

const 常量 【**ES6 引入**】

​                                                  

# 方法

​                                                                       

```javascript
    var person ={
        name:"itinglight",
        age:21,
        sayHello:function () {
            alert("Hello");
        }
    }
    person.sayHello();
   function sayHello2(){
       alert("Hello2");
   }
    var person2={
        name:"itinglight",
        age:21,
        sayHello:sayHello2
    }
    person2.sayHello();

```



apply

```
sayHello2.apply(person,[]);
```



### 内部对象

标准对象  typeof

```javascript
typeof 123
'number'
typeof "123"
'string'
typeof true
'boolean'
typeof NaN
'number'
typeof []
'object'        x                                                   
typeof {}
'object'
typeof Math.abs
'function'
typeof undefined
'undefined'
```

​                                                                       

### Date 对象其它方法

| 方法                   | 描述                                                |
| ---------------------- | --------------------------------------------------- |
| getDate()              | 获得以数值计（1-31）的日                            |
| getDay()               | 或者以数值计（0-6）的周   //周日0 周一 1 周六6      |
| getFullYear()          | 获得四位的年（yyyy）                                |
| getHours()             | 获得时（0-23）                                      |
| getMilliseconds()      | 获得毫秒（0-999）                                   |
| getMonth()             | 获得月（0-11）                                      |
| getMinutes()           | 获得分钟（0-59）                                    |
| getSeconds()           | 获得秒（0-59）                                      |
| getTime()              | 获得时间（1970 年 1 月 1 日以来的毫秒）//获取时间戳 |
| date.toLocaleString( ) | 获取日期与时间 '2022/3/21 17:07:23'                 |

### JSON对象

对象都用{}

数值都用[]

所有的键值对都是用 key:value

//对象转换为json字符串

**JSON.stringify()**

//json 字符串转换为对象

cc    **JSON.parse();**

### Ajax

1. 原生的js写法 xhr异步请求
2. jQuey封装好的方法 $("name").ajax("")
3. axios请求

### 面向对象编程

类：模版

对象：具体的实例

##### 原型

```
person.__proto__ =user;                                                                                                                                                                                                                                                                                                                                                  
```

给对象增加一个方法

```javascript
studen.prototype.hello=function(){
		alert("Hello")
}
```

##### class继承

```javascript
class person{
  name:"person"
  sayHello:function (){
    alert("Hello");
  }
}


class Student extends person{
  constructor(name){
    this.name =name;     
  }
}
```

##### 原型链



### operator BOM Object 



window 代表 浏览器窗口

```javascript
window.alert() //
window.innerHeight //内部高度
window.innerWith //内部宽度
window.outerHeight //屏幕高度
window.outerWith //屏幕宽度
```

Navigato 封装了浏览器的信息 【缺点 可以被人为的修改】

``` javascript
navigator.appName
'Netscape'
navigator.appVersion
'5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'
navigator.userAgent
'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36'
navigator.platform
```

Screen 代表屏幕的尺寸

```
screen.with
screen.height
```

Location 当前页面的URL信息

```javascript
Location {ancestorOrigins: DOMStringList, href: 'http://localhost:63343/JDBCTest/templates/index.html?_ijt=qrvjf7n9ieomk66hoq81aubv26', origin: 'http://localhost:63343', protocol: 'http:', host: 'localhost:63343', …}
ancestorOrigins: DOMStringList {length: 0}
assign: ƒ assign()
hash: ""
host: "localhost:63343"
hostname: "localhost"
href: "http://localhost:63343/JDBCTest/templates/index.html?_ijt=qrvjf7n9ieomk66hoq81aubv26"
origin: "http://localhost:63343"
pathname: "/JDBCTest/templates/index.html"
port: "63343"
protocol: "http:" //请求协议类型
reload: ƒ reload()
replace: ƒ replace()
search: "?_ijt=qrvjf7n9ieomk66hoq81aubv26"
toString: ƒ toString()
valueOf: ƒ valueOf()
Symbol(Symbol.toPrimitive): undefined
[[Prototype]]: Location
```

```
location.assign('https://szhaibai.cn')
```

Document 代表当前页面 HTML 

```
document.title

document.getElementById('app')
document.getElementsByClassName('app')
document.getElementsByTagName('button')
document.cookie //获取cookie
```

history 历史记录

```javascript	
history.back();//后退
history.forward();//前进
```

DOM: 文档对象模型

浏览器网页就是一个Dom树形结构！

- 更新： 更新Dom节点
- 遍历dom节点：得到Dom节点
- 删除：删除一个Dom节点
- 添加：添加一个新的节点

```javascript
//获取DOM 节点

dom.firstChild()
dom.lastChild()

.innerText='' //改变文本内容
.innerHTML='' //可以解析HTML文本内容

.style //改变css样式
.style.color //修改color
.style.background-color //修改背景色
```

删除节点

```javascript
//现获取父节点 在删除子节点
father.removeChild(p1);
.remove
```



