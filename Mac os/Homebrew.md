Homebrew

# Homebrew 

Homebrew简介：Mac os 上的包管理工具。   package manager

官网：https://brew.sh

- ## Install Homebrew

  ```shell
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```

  Paste that in a macOS Terminal or Linux shell prompt.

  The script explains what it will do and then pauses before it does it. Read about other [installation options](https://docs.brew.sh/Installation).

国内加速安装命令

- ```c
  /bin/zsh -c "$(curl -fsSL https://gitee.com/cunkai/HomebrewCN/raw/master/Homebrew.sh)"
  ```
  
  

安装前需要安装git

###  macOS安装 Git

Git 原下载地址（速度慢）： https://git-scm.com/download/mac
Git 国内镜像地址（速度快）： https://www.newbe.pro/Mirrors/Mirrors-Git-For-MacOS/

通过Xcode命令行工具安装git

```shell
$ xcode-select --install
```



uninstall homebrew 

```shell
cd `brew --prefix`
rm -rf Cellar
brew prune
rm `git ls-files`
rm -r Library/Homebrew Library/Aliases Library/Formula Library/Contributions
rm -rf .git
rm -rf ~/Library/Caches/Homebrew
```

卸载任意包

```ruby
$ brew uninstall <packageName>
```

查询可用包

```ruby
$ brew search <packageName>
```

查看已安装包列表

```cpp
$ brew list
```

查看任意包信息

```ruby
$ brew info <packageName>
```

更新Homebrew

```ruby
$ brew update
```

查看Homebrew版本

```ruby
$ brew -v
```

Homebrew帮助信息

显示软件信息

```
brew info   
```

  显示包依赖

```
brew deps  
```



## 安装常用软件包

```
brew cask install google-chrome
brew cask install fliqlo
brew cask install alfred
brew cask install dropbox
brew cask install java
brew cask install intellij-idea
//

brew cask install atom
brew cask install datagrip
brew install deno
brew cask install discord
brew cask install docker
brew install emacs
brew install golang
brew cask install google-chrome
brew cask install intellij-idea
brew cask install mailmaster
brew install micro
brew cask install mos
brew cask install mumble
brew cask install neteasemusic
brew install nginx
brew services start nginx
brew install node
brew cask install adoptopenjdk8
brew install openjdk@11
brew cask install popo
brew cask install postman
brew cask install QQ
brew cask install qqmusic
brew install rustup-init
brew cask install sogouinput
brew cask install shadowsocksx-ng-r
brew cask install telegram
brew install telnet
brew cask install tencent-meeting
brew cask install terminus
brew install tree
brew install unrar
brew cask install visual-studio-code
brew cask install wechat
brew install wget
brew cask install youdaodict
brew cask install aliwangwang
```

