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
```

```
cd
mkdir .vim
cd .vim
vim vimrc
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