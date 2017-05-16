镜像地址：[deepzz/bind9](deepzz/bind9)

构建：
```
$ ./build.sh
```

拉取：
```
$ docker pull deepzz/bind9
```

运行：
```
$ docker run -d --name bind9 -p 53:53 -p 53:53/udp -e ENABLE_CONTROL_CHANNEL=true deepzz/bind9
```

可选项:
* `ENABLE_CONTROL_CHANNEL` (default: false) - 设置为 `true`，则可通过 `rndc` 控制 bind。
