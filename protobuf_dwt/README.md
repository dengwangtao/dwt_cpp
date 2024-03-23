# protobuf

下载连接: [https://github.com/protocolbuffers/protobuf/releases/tag/v21.12](https://github.com/protocolbuffers/protobuf/releases/tag/v21.12)

```bash
wget https://github.com/protocolbuffers/protobuf/releases/download/v21.12/protobuf-cpp-3.21.12.tar.gz
```

## 编译protobuf

```bash
# 解压
tar -zxvf protobuf-cpp-3.21.12.tar.gz

# 进入目录
cd protobuf-3.21.12

# 环境检查, 生成Makefile
./configure

# 编译
make

# 安装
make install

# 查看版本号, 检查是否安装成功
protoc --version
```

> Tips: 如果`protoc --version`报错:
>
> protoc: error while loading shared libraries: libprotoc.so.32: cannot open shared object file: No such file or directory
>
> 执行动态链接库管理命令，让可共享的动态链接库被找到:   `ldconfig`


## 编写proto文件

```proto
// 声明proto3语法
syntax = "proto3";

message Person
{
    int32 id = 1;
    bytes name = 2;
    bytes sex = 3;
    int32 age = 4;
}
```

编译

```shell
protoc ./Person.proto --cpp_out=./

# 指定proto文件的路径
protoc -I ./ Person.proto --cpp_out=./
```