#                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     Less

- Less变量
- Less编译
- Less嵌套
- Less运算 



## 变量

@

8

### 编译

- VScode 安装 Easy Less 插件

  - 添加"less.compile" 设置编译less文件为css文件的保存路径

  ```json
  {
      "editor.inlineSuggest.enabled": true,
      "github.copilot.enable": {
          "*": false,
          "yaml": false,
          "plaintext": false,
          "markdown": false
      },
      "less.compile": {
          "out": "../css/"
      },
      "editor.fontSize": 14,
      "window.zoomLevel": -1
  }
  ```

  

### 嵌套

&:hover 

&::before

### 运算

*

/

+

-

不起作用是加一个（）括号即可

运算中有一个单位 结果以该单位为准

运算中有两个单位时 以第一个运算的单位为准

### rem适配方案

技术方案1

- less
- 媒体查询
- rem

技术方案2

- flexible.js
- rem

### 导入其他样式文件

@input "common";
