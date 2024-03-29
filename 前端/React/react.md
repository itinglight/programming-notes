# React







## 函数式组件



## 类组件

```jsx
import React ,{Component} from 'react'
export default class App extends Component{
  render(){
    retrun(
    	<div></div>
    )
  }
}
```









## AJAX

xhr， jQuery,fetch ,axios

### 配置代理

1. package.json

```js
"proxy":"http;//localhost:5000"
```

2. setupProxy.js

```js
const proxy =require('http-proxy-middleware')
module.exports = function(app){
	app.use(
		proxy('/api1',{
			target:'http;//localhost:5000',
			changeOrigin:true,//控制服务器收到的请求头中Host的值
			pathRewrite:{'^/api1':''}//重写请求路径（必须）
		}),
    proxy('/api2',{
      target:'http;//localhost:5000',
      changeOrigin:true,
      pathRewrite:{'^/api2':''}
		})
	)
}
```

#### 父子组件转递值

props

#### 兄弟组件传递值

消息订阅与发布 （物联网：mqtt协议）

PubSubJS：https://github.com/mroderick/PubSubJS

## 路由

React-router-dom

`npm i react-router-dom@5`

内置组件

```html
<BorwserRouter>
<HashRouter>
<Route>
<Redirect>
<Link>
<NavLink>
<Switch>
```

```jsx

<BorwserRouter>
	<link to="/about"></link>
 
   <Route path="/about" component={About} />

</BorwserRouter>

<NavLink activeClassName="myClassname"></NavLink>

```

## redux 

react 状态管理

![redux原理图](/Users/itinglight/Desktop/programming-notes/前端/React/redux原理图.png)

action

Store

`yarn add redux`

store.js

```js
import { crateStore } from 'redux'
import Reducer from './Reducer'

export default crateStore(Reducer)
```

reducer

```js
const initState = 0
export default function Reducer( preState=initState,action){
  const {type,data} =action
  switch(type){
    case 'increment':
       return preState+data
    case 'devrement':
       return preState -data
    default:
      return preState
  }
 
}
```

使用

```js
import from './redux/store'
store.getState()
store.dispatch()
store.subscribe()
```

```
store.subscribe(()=>{
	this.setState()
})
```

## 完整版本 redux

count_action.js

```javascript
function createIncrementAction(data){
  return {type:'increment',data}
}

export createIncrementAction=data=>({type:'increment',data})
```

constant.js

```js
export const INCREMENT = 'increment'
```





action 返回 Object 同步action

返回 Function 异步action



redux-thunk

store.js

```javascript
import { createStore , applyMiddleware} from 'redux'
import thunk from 'redux-thunk'
export default createStore(countReducer,applyiddleware(thunk))
```

React-redux Facebook官方出品

![Screen Shot 2022-09-26 at 19.39.57](/Users/itinglight/Desktop/programming-notes/前端/React/Screen Shot 2022-09-26 at 19.39.57.png)

/container 容器文件夹

`yarn add react-redux`

```javascript
import CountUI from '../../components/Count'

import {connect} from 'react-redux'

export default const CountContainer = connect()(CountUI)
```

```
import store from '../../redux/store'
<count store={store}>
```

