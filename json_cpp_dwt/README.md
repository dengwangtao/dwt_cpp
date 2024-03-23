# Jsoncpp 编译为动态库

GitHub: [https://github.com/open-source-parsers/jsoncpp](https://github.com/open-source-parsers/jsoncpp)



```shell
# 下载文件
wget https://github.com/open-source-parsers/jsoncpp/archive/refs/heads/master.zip

# 解压缩
unzip master.zip


cd master

mkdir build

cd build

cmake -DBUILD_SHARED_LIBS=ON ../jsoncpp-master/

cmake --build .

# lib目录下为生成的动态库

ls ./lib -l
```

显示如下

```shell
total 788
-rw-r--r-- 1 root root 491782 Mar 18 09:06 libjsoncpp.a
lrwxrwxrwx 1 root root     16 Mar 18 09:05 libjsoncpp.so -> libjsoncpp.so.25
-rwxr-xr-x 1 root root 307360 Mar 18 09:05 libjsoncpp.so.1.9.5
lrwxrwxrwx 1 root root     19 Mar 18 09:05 libjsoncpp.so.25 -> libjsoncpp.so.1.9.5
```

