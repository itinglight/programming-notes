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





### Date 对象其它方法

| 方法              | 描述                                    |
| ----------------- | --------------------------------------- |
| getDate()         | 获得以数值计（1-31）的日                |
| getDay()          | 或者以数值计（0-6）的周                 |
| getFullYear()     | 获得四位的年（yyyy）                    |
| getHours()        | 获得时（0-23）                          |
| getMilliseconds() | 获得毫秒（0-999）                       |
| getMinutes()      | 获得分钟（0-59）                        |
| getMonth()        | 获得月（0-11）                          |
| getSeconds()      | 获得秒（0-59）                          |
| getTime()         | 获得时间（1970 年 1 月 1 日以来的毫秒） |
