# JQuery.js

`npm install jquery`

文档工具站：https://jquery.cuishifeng.cn/

## jQuery 选择器

```javascript
$('#id')
$('.class')
$('tag')
```

## jQuery事件

```javascript
.mousemove() //获取鼠标的移动坐标
```

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        #divMove{
            width: 500px;
            height: 500px;
            border: 1px solid red;
        }
    </style>
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.js"></script>
</head>
<body>
    mouse:<span id="mouseMove"></span>
    <div id="divMove">
        在这里移动鼠标试试
    </div>

    <script>
        $(function(){
            $('#divMove').mousemove(function(e){
                $('#mouseMove').text('x'+e.pageX+'y'+e.pageY)
            })
        })
    </script>
</body>
</html>
```

AJAX()

