## 系统服务管理

### systemctl

> `systemctl`命令是`service`和`chkconfig`命令的组合体，可用于管理系统。

- 输出系统中各个服务的状态：

```bash
systemctl list-units --type=service
```

![img](https:////upload-images.jianshu.io/upload_images/1939592-0234c5f0ced7177f.png?imageMogr2/auto-orient/strip|imageView2/2/w/961)

image

- 查看服务的运行状态：

```bash
systemctl status firewalld
```

![img](https:////upload-images.jianshu.io/upload_images/1939592-4899fbf88e81d6ac.png?imageMogr2/auto-orient/strip|imageView2/2/w/970)

image

- 关闭服务：

```bash
systemctl stop firewalld
```

![img](https:////upload-images.jianshu.io/upload_images/1939592-b771aa1e25eea7f3.png?imageMogr2/auto-orient/strip|imageView2/2/w/1122)

image

- 启动服务：

```bash
systemctl start firewalld
```

![img](https:////upload-images.jianshu.io/upload_images/1939592-2cd4db862dac9f65.png?imageMogr2/auto-orient/strip|imageView2/2/w/959)

image

- 重新启动服务（不管当前服务是启动还是关闭）：

```bash
systemctl restart firewalld
```

- 重新载入配置信息而不中断服务：

```bash
systemctl reload firewalld
```

- 禁止服务开机自启动：

```bash
systemctl disable firewalld
```

![img](https:////upload-images.jianshu.io/upload_images/1939592-9e4ba70b8a41f4e7.png?imageMogr2/auto-orient/strip|imageView2/2/w/992)

image

- 设置服务开机自启动：

```bash
systemctl enable firewalld
```

![img](https:////upload-images.jianshu.io/upload_images/1939592-d54d5e79e9ef203f.png?imageMogr2/auto-orient/strip|imageView2/2/w/966)

image

## 文件管理

### ls

列出指定目录下的所有文件，列出`/`目录下的文件：

```bash
ls -l /
```

![img](https:////upload-images.jianshu.io/upload_images/1939592-9f411831c4452584.png?imageMogr2/auto-orient/strip|imageView2/2/w/648)

image

### pwd

获取目前所在工作目录的绝对路径：

![img](https:////upload-images.jianshu.io/upload_images/1939592-d013c39714a625a5.png?imageMogr2/auto-orient/strip|imageView2/2/w/388)

image

### cd

改变当前工作目录：

```bash
cd /usr/local
```

![img](https:////upload-images.jianshu.io/upload_images/1939592-567edb50f1dd8d36.png?imageMogr2/auto-orient/strip|imageView2/2/w/435)

image

### date

显示或修改系统时间与日期；

```bash
date '+%Y-%m-%d %H:%M:%S'
```

![img](https:////upload-images.jianshu.io/upload_images/1939592-71645f245a2ca0bb.png?imageMogr2/auto-orient/strip|imageView2/2/w/556)

image

### passwd

用于设置用户密码：

```bash
passwd root
```

![img](https:////upload-images.jianshu.io/upload_images/1939592-5fdca39106defe80.png?imageMogr2/auto-orient/strip|imageView2/2/w/574)

image

### su

改变用户身份（切换到超级用户）：

```bash
su -
```

### clear

用于清除屏幕信息

### man

显示指定命令的帮助信息：

```bash
man ls
```

### who

- 查询系统处于什么运行级别：

```bash
who -r
```

![img](https:////upload-images.jianshu.io/upload_images/1939592-d2fcb51d41d3673c.png?imageMogr2/auto-orient/strip|imageView2/2/w/413)

image

- 显示目前登录到系统的用户：

```bash
who -buT
```

![img](https:////upload-images.jianshu.io/upload_images/1939592-61b233572ea447c6.png?imageMogr2/auto-orient/strip|imageView2/2/w/741)

image

### free

显示系统内存状态（单位MB）：

```bash
free -m
```

![img](https:////upload-images.jianshu.io/upload_images/1939592-831a7b1907279c2c.png?imageMogr2/auto-orient/strip|imageView2/2/w/803)

image

### ps

- 显示系统进程运行动态：

```bash
ps -ef
```

- 查看`sshd`进程的运行动态：

```bash
ps -ef | grep sshd
```

![img](https:////upload-images.jianshu.io/upload_images/1939592-e10109b44b209838.png?imageMogr2/auto-orient/strip|imageView2/2/w/717)

image

### top

查看即时活跃的进程，类似Windows的任务管理器。

![img](https:////upload-images.jianshu.io/upload_images/1939592-a00cf210ac9aba9e.png?imageMogr2/auto-orient/strip|imageView2/2/w/865)

image

### mkdir

创建目录：

![img](https:////upload-images.jianshu.io/upload_images/1939592-2fb9e40d32b5a5f2.png?imageMogr2/auto-orient/strip|imageView2/2/w/635)

image

### more

用于分页查看文件，例如每页10行查看`boot.log`文件：

```bash
more -c -10 /var/log/boot.log
```

![img](https:////upload-images.jianshu.io/upload_images/1939592-32cb74e4db48eda7.png?imageMogr2/auto-orient/strip|imageView2/2/w/720)

image

### cat

用于查看文件，例如查看Linux启动日志文件文件，并标明行号：

```bash
cat -Ab /var/log/boot.log
```

![img](https:////upload-images.jianshu.io/upload_images/1939592-e8ec476da0c61634.png?imageMogr2/auto-orient/strip|imageView2/2/w/947)

image

### touch

用于创建文件，例如创建`text.txt`文件：

```bash
touch text.txt
```

![img](https:////upload-images.jianshu.io/upload_images/1939592-f7e4d1f786696feb.png?imageMogr2/auto-orient/strip|imageView2/2/w/508)

image

### rm

- 删除文件：

```bash
rm text.txt
```

- 强制删除某个目录及其子目录：

```bash
rm -rf testdir/
```

![img](https:////upload-images.jianshu.io/upload_images/1939592-5190757645996908.png?imageMogr2/auto-orient/strip|imageView2/2/w/489)

image

### cp

用于拷贝文件，例如将`test1`目录复制到`test2`目录

```bash
cp -r /mydata/tes1 /mydata/test2
```

### mv

用于移动或覆盖文件：

```bash
mv text.txt text2.txt
```

## 压缩与解压

### tar

- 将`/etc`文件夹中的文件归档到文件`etc.tar`（并不会进行压缩）：

```bash
tar -cvf /mydata/etc.tar /etc
```

- 用`gzip`压缩文件夹`/etc`中的文件到文件`etc.tar.gz`：

```bash
tar -zcvf /mydata/etc.tar.gz /etc
```

- 用`bzip2`压缩文件夹`/etc`到文件`/etc.tar.bz2`：

```bash
tar -jcvf /mydata/etc.tar.bz2 /etc
```

![img](https:////upload-images.jianshu.io/upload_images/1939592-4d9fb6814d49c94b.png?imageMogr2/auto-orient/strip|imageView2/2/w/586)

image

- 分页查看压缩包中内容（gzip）：

```bash
tar -ztvf /mydata/etc.tar.gz |more -c -10
```

![img](https:////upload-images.jianshu.io/upload_images/1939592-af79e7065276e265.png?imageMogr2/auto-orient/strip|imageView2/2/w/789)

image

- 解压文件到当前目录（gzip）：

```bash
tar -zxvf /mydata/etc.tar.gz
```

- 解压文件到指定目录（gzip）：

```bash
tar -zxvf /mydata/etc.tar.gz -C /mydata/etc
```

## 磁盘和网络管理

### df

查看磁盘空间占用情况：

```bash
df -hT
```

![img](https:////upload-images.jianshu.io/upload_images/1939592-2d37a7381dea487b.png?imageMogr2/auto-orient/strip|imageView2/2/w/714)

image

### dh

查看当前目录下的文件及文件夹所占大小：

```bash
du -h --max-depth=1 ./*
```

![img](https:////upload-images.jianshu.io/upload_images/1939592-cf4651875561e881.png?imageMogr2/auto-orient/strip|imageView2/2/w/534)

image

### ifconfig

显示当前网络接口状态：

![img](https:////upload-images.jianshu.io/upload_images/1939592-4fec4cab3689d077.png?imageMogr2/auto-orient/strip|imageView2/2/w/783)

image

### netstat

- 查看当前路由信息：

```bash
netstat -rn
```

![img](https:////upload-images.jianshu.io/upload_images/1939592-1a9d42a60311254e.png?imageMogr2/auto-orient/strip|imageView2/2/w/811)

image

- 查看所有有效TCP连接：

```bash
netstat -an
```

- 查看系统中启动的监听服务：

```bash
netstat -tulnp
```

![img](https:////upload-images.jianshu.io/upload_images/1939592-9aefdb4b36e59f21.png?imageMogr2/auto-orient/strip|imageView2/2/w/993)

image

- 查看处于连接状态的系统资源信息：

```bash
netstat -atunp
```

### wget

从网络上下载文件

![img](https:////upload-images.jianshu.io/upload_images/1939592-a874b47cfa7bcbc3.png?imageMogr2/auto-orient/strip|imageView2/2/w/1200)

image

## 文件上传下载

- 安装上传下载工具`lrzsz`；

```bash
yum install -y lrzsz
```

- 上传文件，输入以下命令`XShell`会弹出文件上传框；

```bash
rz
```

- 下载文件，输入以下命令`XShell`会弹出文件保存框；

```bash
sz fileName
```

## 软件的安装与管理

### rpm

> RPM是`Red-Hat Package Manager`的缩写，一种Linux下通用的软件包管理方式，可用于安装和管理`.rpm`结尾的软件包。

- 安装软件包：

```bash
rpm -ivh nginx-1.12.2-2.el7.x86_64.rpm
```

- 模糊搜索软件包：

```bash
rpm -qa | grep nginx
```

- 精确查找软件包：

```bash
rpm -qa nginx
```

- 查询软件包的安装路径：

```bash
rpm -ql nginx-1.12.2-2.el7.x86_64
```

- 查看软件包的概要信息：

```bash
rpm -qi nginx-1.12.2-2.el7.x86_64
```

- 验证软件包内容和安装文件是否一致：

```bash
rpm -V nginx-1.12.2-2.el7.x86_64
```

- 更新软件包：

```bash
rpm -Uvh nginx-1.12.2-2.el7.x86_64
```

- 删除软件包：

```bash
rpm -e nginx-1.12.2-2.el7.x86_64
```

### yum

> Yum是`Yellow dog Updater, Modified`的缩写，能够在线自动下载RPM包并安装，可以自动处理依赖性关系，并且一次安装所有依赖的软件包，非常方便！

- 安装软件包：

```bash
yum install nginx
```

- 检查可以更新的软件包：

```bash
yum check-update
```

- 更新指定的软件包：

```bash
yum update nginx
```

- 在资源库中查找软件包信息：

```bash
yum info nginx*
```

- 列出已经安装的所有软件包：

```bash
yum info installed
```

- 列出软件包名称：

```bash
yum list nginx*
```

- 模糊搜索软件包：

```bash
yum search nginx
```

作者：梦想de星空
链接：https://www.jianshu.com/p/d9c51c86533e
来源：简书
著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。