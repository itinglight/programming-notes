# Mac os

[命令行配置](https://github.com/herrbischoff/awesome-macos-command-line#time-machine)

### Mac 上怎么调节 Launchpad(启动台) 的图标大小，基本就是三行终端命令

```
# 先调整每列显示多少个
$ defaults write com.apple.dock springboard-rows -int 6

# 再调整每行显示多少个
$ defaults write com.apple.dock springboard-columns -int 11

# 重置一下
$ defaults write com.apple.dock ResetLaunchPad -bool TRUE;killall Dock
```

# 包管理工具

## [homebrew](/Users/tinglight/Desktop/programming-notes/Mac os/Homebrew.md)

