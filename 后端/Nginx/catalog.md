# Nginx

http://114.132.238.50/28/

## 功能
    1.反向代理
        客户端不知道具体访问的是哪一台服务器。（正向代理：服务器不知具体哪一台客户端发出的请求）
    2.负载均衡
        将请求分配给不同的服务器
    3.动静结合
        网页的静态资源和动态资源分别部署。
    4.重写
        将80端口转为443端口

## 常用命令
nginx -s quit 从容停止，防止工作未完成就停止

nginx -s stop 立即停止

killall nginx 杀死进程

systemctl stop nginx.service linux 系统停止一项服务

## 配置文件
​ Nginx 配置文件主要有 4 部分，main (全局设置)、server（主机设置）、upstream（上游服务器设置，主要为反向代理，负载均衡相关配置）和 location（url 匹配特定位置的设置），每部分包含若干指令。

Main 部分的设置影响其他所有部分的设置；

Server 部分主要用于指定虚拟机主机域名，ip 和端口；

Upstream 的指令用于设置一系列的后端服务器，设置反向代理及后端服务器的负载均衡；

Location 部分用于匹配网页位置（如，跟目录 “/”,”/images” 等）

｜配置文件	｜ 作用 ｜
-------------------
nginx.conf	nginx 的基本配置文件
mime.types	MIME 类型关联的扩展文件
fastcgi.conf	与 fastcgi 相关的配置文件
proxy.conf	与 proxy 相关的配置
sites.conf	配置 nginx 提供的网站，包括虚拟主机

### 反向代理

```bash
opstream itinglight{
    server 192.168.1.3:8081 weight=1;
    server 192.168.1.4:8080 weight=2;
}
sever {
	listen 80;
	server_name localhost; # 此处改为相应的域名
	location / {
		proxy_pass X.X.X.X; # 被代理的服务器
	}
}
```