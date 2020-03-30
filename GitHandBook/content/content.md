### 三个必须懂的概念

本地分支

远程跟踪分支

远程分支

### 远程协作的基本流程

第一步：创建一个空的远程仓库

第二步：项目经理创建一个待推送的本地仓库

第三步: 为远程仓库配别名 配完用户名 邮箱

第四步：在本地仓库中初始化代码 提交代码

第五部： 推送

第六步：邀请成员

第七步：成员克隆远程仓库

第八步：成员做出修改

第九步：成员推送自己的修改

第十步：项目经理拉取成员的修改

### 做跟踪

克隆创库时 会自动为master做跟踪

本地没有分支

​	`git checkout --track 远程跟踪分支（remote/分支名）`

本地已经创建分支

​	`git branch -u 远程跟踪分支（remote/分支名）`

### 推送

​	`git push [别名] [分支名]`

### 拉取

​	`git pull`

### pull request

让第三方人员参与到项目中fork

### 使用频率最高的五个命令

```git
	git status
​	git add
​	git commit
​	git push
​	git pull
```

### SSH

```
ssh-keygen -t rsa -C 你的邮箱：生成公私钥
.ssh 文件位置：C:\Users\Administrator\.ssh
ssh -T git@github.com :测试公私钥是否配对成功
```

