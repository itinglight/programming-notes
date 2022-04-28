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

### 事件修饰符

```
prevent：阻止默认事件
stop：阻止时间冒泡
once：事件只触发一次
capture 使用事件的捕获模式
self： 只有event.target是当前操作元素时才触发事件
passive： 事件的默认行为立即执行，无需等待事件回调执行完毕
```

`v-model`



```
v-model.number
v-model.trim 输入首位空格过滤
v-model.lazy 失去焦点在收集数据
```

`v-show`

`v-if`

`v-else`



`v-if`

`v-else-if`

`v-else`



`v-for`

`v-text` #向其所在的标签插入文本

`v-html`

`v-cloak`  vue接管后会删除改属性

`v-once` 始终显示变量的初始值

`v-pre`	跳过没有使用指令的语法 ,没有使用插值语法的节点，会加快编译。



自定义指令



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

### 过滤器

filter

```
filters:{
	timeFormater(value){
		return 
	}
}
```





## Vuex

安装Vuex

`npm i vuex@3`

`import Vuex from 'vuex'`





## Vue Router

`npm i vue-router@3`

`import VueRouter from 'vue-router'`

`Vue.use(VueRouter)`

```{
import About from '../components/About'
exprot default= new VueRouter({
	routers:[
		{
			path:'/about',
			component:About
		}
	]
})
```

Import router from './router'                                                                                             
