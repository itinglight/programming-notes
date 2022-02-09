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
