# Node

官网：https://nodejs.org

版本区别

LTS为长期稳定版本

Current 测试版【新功能】

内置API

- fs

  fs.readFile()

  ```javascript
  const fs = require('fs')
  console.log("hello world")
  fs.readFile("./hello.txt",'utf8',(err,dataStr)=>{
  	console.log(err)
  	console.log(dataStr)
  })
  
  ```

  fs.writeFile()

  ```javascript
  const fs = require('fs');
  /*
  参数1:表示文件存放的路径
  参数2:表示要写入的内容
  参数3:回调函数
  
  */
  fs.writeFile('./hello.txt','itinglight',(err)=>{
    console.log(err)
  })
  ```

  

- path

  - path.join() //路径拼接

  - path.basename//获取路径中的文件名

    ```javascript
    const path = require('path')
    let basename=path.basename('/a/b/c/index.html','.html')
    console.log(basename)
    ```

    path.extanme()//获取文件的扩展名

- http

  ```javascript
  const http =require('http')
  const server = http.createServer()
  server.on('request',function(req,res){
    console.log(req,res)
  })
  server.listen(8080,function(){
    console.log("server is running! http://localhost:8080")
  })
  ```

  

- js内置对象

- querystring

- etc

框架

- Expreess
- Electron
- Restif



数据库

- MySQL
- MongoDB