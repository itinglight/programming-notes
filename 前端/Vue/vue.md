# VUE的安装与使用

##### IDEA安装vue.js 插件

1.安装

```
npm install -g @vue/cli
```

启动vue项目

```
npm run serve
```







## 指令

`v-bind` 数据

`v-on` 事件

```
v-bind:title=""
```

`v-show`

`v-if`

`v-else`



`v-if`

`v-else-if`

`v-else`



`v-for`





计算属性 computed

监视属性(侦听属性) watch

```
watch 完整写法

watch 简写
```





数据代理：

```javascript
Object.definproperty(){
  get(){
    
  },
  set(){
    
  }
}

      const person1={
            name:'itinglight',
            address:"it",
        }
        Object.defineProperty(person1,'age',{
            // value:18,
            enumerable:true, //控制属性是否可以枚举，默认值是false
            // writable:true,  //控制属性是否可以被修改，默认值是false
            // configurable:true ,//控制时属性是否可以被删除，默认是false
            get(){
                return 12
           
            },
            // set:function(){
                
            // }
        })
```

Vue.set()

Vue.$set()

