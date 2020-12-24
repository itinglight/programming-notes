# 安装 `zsh`

```
mac 安装： brew install zsh
Ubuntu 安装： sudo apt-get install zsh
CentOS 安装： yum install zsh
其他的自行查找
```

# 下载 `oh-my-zsh`

```
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
或
git clone https://gitee.com/who7708/oh-my-zsh.git ~/.oh-my-zsh
```

# 创建 `.zshrc` 配置文件

```
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
```

# 更改默认 `Shell`

```
查询位置并设置：
which zsh
/usr/bin/zsh
chsh -s /usr/bin/zsh
```

# 下载相关插件 `zsh-autosuggestions`,`zsh-syntax-highlighting`,`zsh-completions`,`zsh-history-substring-search`

在 `.zshrc` 配置文件中找到plugins,加入插件及其他配置。插件直接下载后放置目录： `~/.oh-my-zsh/custom/plugins`

```
cd ~/.oh-my-zsh/custom/plugins

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
vim ~/.zshrc

// 添加或修改如下：

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-completions
  zsh-history-substring-search
)

// ......

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias tailf='tail -20f'
```

插件github地址：

- [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [hzsh-completions](https://github.com/zsh-users/zsh-completions)
- [zsh-history-substring-search](https://github.com/zsh-users/zsh-history-substring-search)

插件gitlab地址：

- [oh-my-zsh](https://gitee.com/who7708/oh-my-zsh)
- [zsh-syntax-highlighting](https://gitee.com/who7708/zsh-syntax-highlighting)
- [zsh-autosuggestions](https://gitee.com/who7708/zsh-autosuggestions)
- [hzsh-completions](https://gitee.com/who7708/zsh-completions)
- [zsh-history-substring-search](https://gitee.com/who7708/zsh-history-substring-search)

# 下载压缩包安装

直接下载提供的压缩包，解压到对应目录下即可。[下载地址](https://springboot.net.cn/repo/zsh.tar.gz)