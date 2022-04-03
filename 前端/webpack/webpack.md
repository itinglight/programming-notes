# WebPack

webpack.config.js

```js
/**
 * @type {import('webpack').Configuration}
 */
const { resolve }=require('path')
const HtmlWebpackPlugin=require('html-webpack-plugin')
const MiniCssExtractPlugin=require('mini-css-extract-plugin')
module.exports={
    entry:'./src/index.js',
    output:{
        filename:'built.js',
        path: resolve(__dirname,'build')
    },
    module:{
        rules:[
       
         
            {
                test:/\.css$/,
                use: [
                // "style-loader",
                MiniCssExtractPlugin.loader,
                "css-loader"],
            },
            {
                test:/\.less$/,
                use:[
                    'style-loader',
                    'css-loader',
                    'less-loader'
                ]
            },
            {
                test:/\.(png|jpg|gif)$/,
                loader:'url-loader',
                options:{
                    limit: 8*1024,
                    name:'[hash:10].[ext]',
                    esModule:false,
                    outputPath:'imges'
                }
            },
            {
                test:/\.html$/,
                loader:'html-loader',
            
            },
            {
                exclude:/\.(html|css|less|js|png|jpg|gif)$/,
                loader:'file-loader',
                options:{
                    name:'[hash:10].[ext]',
                    outputPath:'medies'
                }
            }

        ]
    },
    plugins:[
        new HtmlWebpackPlugin({
            template:'./src/index.html'
        }),
        new MiniCssExtractPlugin({
            filename:'css/build.css'
        }
        )
    ],
    mode: 'development',
    devServer:{
        // contentBase:resolve(__dirname,'build'),
        static:resolve(__dirname,'build'),
        compress:true,
        port:3000,
        open:true
    }

}
```



HTML

CSS

JavaScript

​	兼容性处理： 

​			CSS：`npm install --save-dev postcss-loader postcss-preset-env`

​			JavaScript：Babel

​			HTML 不需要进行兼容性处理

压缩

​	css压缩：

​	js压缩：mode:"production" 生成环境自动压缩js 【UglifyPlugin】

​	HTML压缩：

```js
        new HtmlWebpackPlugin({
            template:'./src/index.html',
            // 压缩HTML
            minify:{
                collapseWhitespace:true,
                removeComments:true
            }
        }),
```

语法检查

​	js语法检查：ESlint

​	在package.json中配置规则

```json
"eslintConfig":{
	"extends":"airbnb-base"
}
```

### webpack性能优化

1. 开启HMR功能「hot module replcement」热模块替换

​	CSS  可以开启

​	HTML 默认不开启 （不需要坐HRM功能）

​	JavaScript 默认不开启 「修改js 」

## Source-map

```
devtool:'source-map'
```

