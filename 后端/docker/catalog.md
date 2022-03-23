# Docker Note Book
相关网站：

[官网：https://www.docker.com ](https://www.docker.com)

[DockerHub](https://hub.docker.com/)

[官网(中国区)：https://www.docker-cn.com ](https://www.docker-cn.com)



课程：https://www.bilibili.com/video/BV1og4y1q7M4?p=9&spm_id_from=pageDriver

## Docker Hub

**Docker 是一个开源的应用容器引擎，让开发者可以打包他们的应用以及依赖包到一个可移植的容器中，然后发布到任何流行的 Linux 机器上，也可以实现虚拟化**

## 安装：

​			安装要求：CentOS 6.5 （64位）以上

配置阿里云



## 概念

​		**镜像(Image)：** 
​		**容器(container) ：** 可以把容器看成一个简易版的Linux环境和运行在其中的应用程序。
​		**仓库(depot：** 是集中存放镜像文件的场所
​					创库分为**公开仓库（Public）**和**私有仓库（Private）**		国内：阿里云，网易云



## 启动Docker

```

```

### 启动Mysql

```bash
docker run -d -p 3310:3306 -e MYSQL_ROOT_PASSWORD=123 --name mysql06 mysql:5.7 
```



## 操作命令：

| 帮助命令       |                |
| -------------- | -------------- |
| docker version | 查看Docker版本 |
| docker info    |                |
| docker --help  | 查看命令手册   |

| 镜像命令                        | 作用         | 用法 |
| ------------------------------- | ------------ | ---- |
| docker images                   | 查看本地镜像 |      |
| docker search                   | 搜索镜像     |      |
| docker pull                     | 下载镜像     |      |
| docker rmi                      | 删除镜像     |      |
| docker rmi $(docker images -aq) | 删除全部镜像 |      |
|                                 |              |      |
|                                 |              |      |
|                                 |              |      |

| 容器命令         |                                         |
| ---------------- | --------------------------------------- |
| docker stats     | 看当前主机下所有容器占用内存和cpu的情况 |
| docker wait      | 查看容器的退出状态                      |
| docker ps        | 显示当前运行的容器                      |
|                  |                                         |
| docker rm 容器id | 删除指定容器 不能删除正在运行的容器     |
|                  |                                         |
| docker start     |                                         |
| docker restart   |                                         |
|                  |                                         |

```bash
docker status #



docker ps # 查看正在运行的container
docker ps -a # 历史运行过的container


docker start containerID # 启动容器
docker restart containerID #重启制定容器
docker stop containerID #停止指定containerID
docker kill containerID #强制停止指定containerID


#后台启动
docker run -d containerID #后台启动容器

docker inspect containerID #显示

#进入当前正在运行的容器
docker exec -it containerID #进入容器
docker attach   #进入容器




```

## Docker commit 

```bash
docker commit -a="作者"-m="提交信息" myContainer containerID
```



## 挂载mysql

```bash
#获取镜像
docker pull mysql:5.7
#
-d #后台运行
-p #端口映射
-v #卷挂载
-e #环境配置
--name #容器名字
docker run -d -p 3310:3306 -v /home/mysql/conf:/etc/mysql/conf.d -v /home/mysql/data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=123 --name mysql01 mysql:5.7


```

## 具名和匿名挂载

```bash
-v /etc/mysql
-v myname:/etc/mysql #具名挂载

```

## DockerFile

```bash
docker build -f dockerfileUrl -t imagesName .
```

dockerfile

```dockerfile
FROM centos
VOLUME ["volume01","volume02"]
CMD echo "----end----"
CMD /bin/bash
```

## Docker网络

