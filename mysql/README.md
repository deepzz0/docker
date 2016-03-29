## mysql 镜像 

> 修改于docker官方dockerfile

1. 时区默认使用 +8:00 时区
2. 直接运行 build_docker.sh 生成镜像
3. 生成镜像名为 127.0.0.1:5000/mysql:5.7

## 使用说明

##### 运行一个容器
```
$ docker run --name some-mysql -e MYSQL_ROOT_PASSWORD=my-secret-pw -d 127.0.0.1:5000/mysql:5.7
# some-mysql:运行容器的名字，my-secret-pw:指定mysql数据库root帐户密码，默认监听3306端口
```

##### Docker容器连接
```
$ docker run --name some-app --link some-mysql:mysql -d application-that-uses-mysql
# 将some-mysql换成上面mysql容器的名字
```

##### 通过宿主机进入mysql容器
```
$ docker exec -it some-mysql bash
# some-mysql可以是容器名，容器id
```
##### 查看mysql日志
```
$ docker logs some-mysql
```

##### 映射配置文件
```
$ docker run --name some-mysql -v /my/custom:/etc/mysql/conf.d -e MYSQL_ROOT_PASSWORD=my-secret-pw -d mysql:tag
# 如果你想用自己的配置文件，你可以将mysql容器的 /etc/mysql/conf.d 映射到宿主机上的文件夹，如:/my/custom
```

##### 环境变量
+ `MYSQL_ROOT_PASSWORD`,设置root账号密码,同上面 my-secret-pw
+ `MYSQL_DATABASE`,容器启动时将会创建该数据库
+ `MYSQL_USER`,`MYSQL_PASSWORD`,为MYSQL_DATABASE创建一个拥有超级权限的用户.注意:这不是root账号，root账号会默认创建并使用MYSQL_ROOT_PASSWORD
+ `MYSQL_ALLOW_EMPTY_PASSWORD`,如果为yes,将会创建一个空白的root帐户,不推荐使用,不安全

##### 持久化数据
```
$ docker run --name some-mysql -v /my/own/datadir:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=my-secret-pw -d mysql:tag
# 将容器/var/lib/mysql目录映射出来
```

[1] https://hub.docker.com/_/mysql/
