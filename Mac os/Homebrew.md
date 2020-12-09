Homebrew

# Homebrew 

Homebrew简介：Mac os 上的包管理工具。   package manager

官网：https://brew.sh

- ## Install Homebrew

  ```
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

```
$ xcode-select --install
```



uninstall homebrew 

```
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