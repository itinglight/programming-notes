# Mac os

[命令行配置](https://github.com/herrbischoff/awesome-macos-command-line#time-machine)

### Mac 上怎么调节 Launchpad(启动台) 的图标大小，基本就是三行终端命令

```shell
# 先调整每列显示多少个
$ defaults write com.apple.dock springboard-rows -int 6

# 再调整每行显示多少个
$ defaults write com.apple.dock springboard-columns -int 11

# 重置一下
$ defaults write com.apple.dock ResetLaunchPad -bool TRUE;killall Dock
```

# 包管理工具

## [homebrew](/Users/tinglight/Desktop/programming-notes/Mac os/Homebrew.md)

```shell
cat /etc/shells    #查看当前系统已安装的shell版本
```

```shell
rm -rf #删除文件目录包括里面所有的文件
```





```shell
cd ~/.oh-my-zsh/custom/plugins
```



```

 
github地址：
git clone https://github.com/zsh-users/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions
git clone https://github.com/zsh-users/zsh-history-substring-search
 
gitlab地址：
git clone https://gitee.com/who7708/zsh-syntax-highlighting
git clone https://gitee.com/who7708/zsh-autosuggestions
git clone https://gitee.com/who7708/zsh-completions
git clone https://gitee.com/who7708/zsh-history-substring-search


```

```shell

vim ~/.zshrc
 
#添加或修改如下：
 
plugins=(
  git
  zsh-autosuggestions #历史命令记录
  zsh-syntax-highlighting #命令行高亮显示
  zsh-completions
  zsh-history-substring-search
)
 
```

```shell
source ~/.zshrc
```

