# CSS

选择器
    ID select
    Class select
    
盒模型
背景和边框
文字特效
2D/3D 转换
动画
多列布局
用户界面

## 定位
    position:
                绝对定位
                相对定位
                sticky

### 响应布局

媒体查询

```css
 /*媒体查询*/
/*当页面大于1200px 时，大屏幕，主要是PC 端*/
@media (min-width: 1200px) {   
    
}


/*在992 和1199 像素之间的屏幕里，中等屏幕，分辨率低的PC*/
@media (min-width: 992px) and (max-width: 1199px) {
    
}
/*在768 和991 像素之间的屏幕里，小屏幕，主要是PAD*/
@media (min-width: 768px) and (max-width: 991px) {

}
/*在480 和767 像素之间的屏幕里，超小屏幕，主要是手机*/
@media (min-width: 480px) and (max-width: 767px) {
   
}
/*在小于480 像素的屏幕，微小屏幕，更低分辨率的手机*/
@media (max-width: 479px) {

}
```

### flex布局

```css
display:felx;

/*flex container 属性*/
flex-direction:row; /*设置主轴方向 默认X轴 row /row- reverse/y轴 column-reverse*/
justify-content:flex-start;/*设置子元素在主轴上的对齐方式 flex-start flex-end center space-around space-between*/
flex-swarp:nowarp; 
align-items:flex-start /*设置侧轴上的对齐方式 stretch 拉升*/
align-content:flex-start  /*换行后才有效果 换行元素的对齐方式*/
flex-flow:column wrap;/*flex-direction和flex-swarp的简写*/

/*子项属性*/
flex:1; /*子项分配多少生于空间的份数 默认为0 */
```



### grid布局

**`grid`** 是一个 CSS 简写属性，可以用来设置以下属性：
显式网格属性 [`grid-template-rows`](https://developer.mozilla.org/zh-CN/docs/Web/CSS/grid-template-rows)、[`grid-template-columns`](https://developer.mozilla.org/zh-CN/docs/Web/CSS/grid-template-columns) 和 [`grid-template-areas`](https://developer.mozilla.org/zh-CN/docs/Web/CSS/grid-template-areas)，
隐式网格属性 [`grid-auto-rows`](https://developer.mozilla.org/zh-CN/docs/Web/CSS/grid-auto-rows)、[`grid-auto-columns`](https://developer.mozilla.org/zh-CN/docs/Web/CSS/grid-auto-columns) 和 [`grid-auto-flow`](https://developer.mozilla.org/zh-CN/docs/Web/CSS/grid-auto-flow)，
间距属性 [`grid-column-gap` (en-US)](https://developer.mozilla.org/en-US/docs/Web/CSS/column-gap) 和 [`grid-row-gap` (en-US)](https://developer.mozilla.org/en-US/docs/Web/CSS/row-gap)。

```
  display: grid;
  grid-template-columns: 1fr 1fr 1fr;
  grid-template-rows: 100px 100px;
  grid-gap: 10px
  
  
  
   grid-row: 2;
   grid-column: 3;
```

