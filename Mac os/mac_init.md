# Mac init

​	1.安装包管理器

```bash
/bin/zsh -c "$(curl -fsSL https://gitee.com/cunkai/HomebrewCN/raw/master/Homebrew.sh)"
```

 2.下载代理软件

```
brew install clashx
```

3.下载开发软件

```
brew install 
```

```bash
# 先安装oh-my-zsh 在同步配置文件




# 安装 oh-my-zsh


sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

   #安装代码高亮
   git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
   #安装命令行建议
   git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
   #安装zsh-completions
   git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions




#安装VIMPLugs管理器
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


```

4.同步配置文件

```bash
cd ~
git clone https://github.com/itinglight/dotfiles.git
cd ~/dotfiles/
sh install.sh

# 进入vim 执行:PlugInstall
```

5.下载办公软件

```bash
brew install qq wechat iina telegram-desktop 
```

6.下载设计软件

```bash
brew install figma
```

7.下载美化软件

```bash
brew install fliqlo
```

