# PHP扩展 f_wcl

linux命令 wc -l 

## 初始化

### 进入PHP源码ext
cd ext
#### 编辑文件 f_wcl.def 内容如src
./ext_skel --extname=f_wcl --proto=f_wcl.def

## 编译配置

cd f_wcl
vim config.m4
#### 去掉 PHP_ARG_ENABLE 和 --enable-f_wcl前面的dnl

## 功能实现

vim f_wcl.c
#### 实现函数 PHP_FUNCTION(f_wcl) 代码如 f_wcl.c

## 编译、安装

PHP安装目录/bin/phpize
PHP源码目录/ext/f_wcl/configure --with-php-config=PHP安装目录/bin/php-config
PHP源码目录/ext/f_wcl/make && make install

## 配置文件 

#### php.ini 添加 extension=f_wcl.so
print_r(f_wcl('filename'));

