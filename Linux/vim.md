# Vim
----强大的文本编辑器

## **快捷键**

进入Vim 自带一个交互式的教程 

```vim
vimtutor
```

```c
  system vimrc file: "$VIM/vimrc"	
  user vimrc file: "$HOME/.vimrc"
 	2nd user vimrc file: "~/.vim/vimrc"
   user exrc file: "$HOME/.exrc"
       defaults file: "$VIMRUNTIME/defaults.vim"
  fall-back for $VIM: "/usr/share/vim"
Compilation: gcc -c -I. -Iproto -DHAVE_CONFIG_H   -DMACOS_X_UNIX  -g -O2 -U_FORT
IFY_SOURCE -D_FORTIFY_SOURCE=1
Linking: gcc   -L/usr/local/lib -o vim        -lm -lncurses  -liconv -framework
Cocoa

```

```
vim ~/.vimrc		 #修改vimrc文件，如果不存在就创建一个
```

```
:echo $VIM     # 找出vim文件的位置
:scriptname		 #查看各脚本的加载顺序:
```

```
syntax on
set number                      "显示行号
set relativenumber              "相对行号
set set shiftwidth=4            "自动缩进时的空白长度
set t_Co=256                    "vim配色为256色
set cursorline                  "高亮当前光标行
set cursorcolumn                "高亮当前光标列
```



```shell
cd
mkdir .vim
cd .vim
vim vimrc
chmod u+x file.sh#对file.sh赋予执行权限
```



## **vim插件**

文件浏览（[NERD Tree](https://link.jianshu.com/?t=https://github.com/scrooloose/nerdtree)）

代码补全（[YouCompleteMe](https://link.jianshu.com/?t=https://github.com/Valloric/YouCompleteMe)，

语法检查（[syntastic](https://link.jianshu.com/?t=https://github.com/scrooloose/syntastic)）

文件模糊搜索（[ctrlp](https://link.jianshu.com/?t=https://github.com/kien/ctrlp.vim)）

显示vim状态栏（[Vim Powerline](https://link.jianshu.com/?t=https://github.com/Lokaltog/vim-powerline)）

主题颜色（[Molokai](https://link.jianshu.com/?t=https://github.com/tomasr/molokai)）

显示文件结构（[tagbar](https://link.jianshu.com/?t=https://github.com/majutsushi/tagbar)）

vim的插件管理工具[vundle](https://link.jianshu.com/?t=https://github.com/gmarik/Vundle.vim)

## Vim script

 https://www.cnblogs.com/fangtest/p/3789405.html

**在当前行上移动光标**

`0 `移动到行头
`^` 移动到本行的第一个不是 blank 字符
`$` 移动到行尾
`g_` 移动到本行最后一个不是 blank 字符的位置
`w` 光标移动到下一个单词的开头
`e` 光标移动到下一个单词的结尾
`fa` 移动到本行下一个为 a 的字符处，fb 移动到下一个为 b 的字符处
`nfa` 移动到本行光标处开始的第 n 个 字符为 a 的地方（n 是 1，2，3，4 ... 数字）
`Fa` 同 `fa` 一样，光标移动方向同 `fa` 相反
`nFa` 同 `nfa` 类似，光标移动方向同 `nfa`相反
`ta` 移动光标至 a 字符的前一个字符
`nta` 移动到第二个 a 字符的前一个字符处
`Ta` 同 `ta` 移动光标方向相反
`nTa` 同 `nta` 移动光标方向相反
`;` 和`,` 当使用 f, F, t ,T, 关键字指定字符跳转的时候，使用 `；`可以快速跳转到写一个指定的字符，`, `是跳到前一个指定的字符

**跨行移动光标**

`nG `光标定位到第 n 行的行首
`gg `光标定位到第一行的行首
`G `光标定位到最后一行的行首
`H `光标定位到当前屏幕的第一行行首
`M` 光标移动到当前屏幕的中间
`L` 光标移动到当前屏幕的尾部
`zt` 把当前行移动到当前屏幕的最上方，也就是第一行
`zz` 把当前行移动到当前屏幕的中间
`zb` 把当前行移动到当前屏幕的尾部
`%` 匹配括号移动，包括 ( , { , [ 需要把光标先移动到括号上
`*` 和 `#` 匹配光标当前所在的单词，移动光标到下一个（或者上一个）匹配的单词（ `*` 是下一个，`#` 是上一个）

**翻页操作**

`ctrl+f` 查看下一页内容
`ctrl+b` 查看上一页内容

**VIM 的复制，黏贴 ，删除**

三个重要的快捷键 `d` , `y` , `p`
`d` 是删除的意思，通常搭配一个字符 ( 删除范围 ) 实现删除功能，常用的如下：
`dw` 删除一个单词
`dnw` 删除 n 个单词，
`dfa` 删除光标处到下一个 a 的字符处（ fa 定位光标到 a 处 ）
`dnfa` 删除光标处到第 n 个 a 的字符处
`dd` 删除一整行
`ndd` 删除光标处开始的 n 行
`d$` 删除光标到本行的结尾
`dH` 删除屏幕显示的第一行文本到光标所在的行
`dG` 删除光标所在行到文本的结束
`y` 是复制的意思，通常搭配一个字符（复制范围）实现复制的功能，常用的如下：
```shell
yw` 复制一个单词，还有 `ynw
yfa` 复制光标到下一个 a 的字符处,还有`ynfa
yy` 复制一行，还有 `nyy
```
`y$` 复制光标到本号的结尾
`yH` 复制屏幕显示的第一行文本到光标所在的行
`yG` 复制光标所在行到文本的结束
`p` ，`P`是黏贴的意思，当执行完复制或者黏贴的命令以后，VIM 会把文本寄存起来。
`p` 在光标后开始复制
`P` 大写的 P 光标前开始复制

**撤销操作和恢复**

`u` 撤销刚才的操作
`ctrl + r` 恢复撤销操作


**删除字符操作和替换**

`x` 删除光标当前所在的字符
`r` 替换掉光标当前所在的字符
`R` 替换掉从光标开始以后的所有字符，除非 `<ESC >` 退出，或者 `jj` （代替 <ESC> 上文有提到）退出。


**大小写转换**

~ 将光标下的字母改变大小写
3~ 将光标位置开始的3个字母改变其大小写
g~~ 改变当前行字母的大小写
gUU 将当前行的字母改成大写
guu 将当前行的字母全改成小写
3gUU 将从光标开始到下面3行字母改成大写
gUw 将光标下的单词改成大写。
guw 将光标下的单词改成小写

**VIM 的重复命令**

. 该命令是重复上一个操作的命令
n<command>重复某个命令 n 次，
如 10p复制 10 次，10dd 删除十次。
