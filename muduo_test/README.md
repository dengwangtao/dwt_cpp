# muduo 网络库

Github: [https://github.com/chenshuo/muduo](https://github.com/chenshuo/muduo)

```shell
git clone git@github.com:chenshuo/muduo.git
```

muduo基于boost, 需要先安装boost库

```shell
# 下载boost源码包 boost.org
wget https://boostorg.jfrog.io/artifactory/main/release/1.84.0/source/boost_1_84_0.tar.gz

# 解压
tar -zxvf boost_1_84_0.tar.gz


# 编译
cd boost_1_84_0

# 配置参数
./bootstrap.sh --with-libraries=all --with-toolset=gcc

# 编译boost
./b2 toolset=gcc

# 安装到 /usr下
./b2 install --prefix=/usr
```


编译muduo

```shell

#　修改CmakeLists.txt
# 注释掉 13行  option(MUDUO_BUILD_EXAMPLES "Build Muduo examples" ON)

# 编译
./build.sh

# 如果出现 zlib.h找不到, 执行下面命令, 安装一下
apt-get install zlib1g-dev



# 生成lib和include, 生成到在build目录的release-install-cpp11下
./build.sh install 

# 将头文件和库文件 拷贝到系统目录
cd release-install-cpp11
cd include
cp -r muduo/ /usr/include/


cd lib
cp * /usr/local/lib/
```