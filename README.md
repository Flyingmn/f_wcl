# PHP扩展 f_wcl

linux命令 wc -l 

## 初始化

进入PHP7源码ext 编辑文件 f_wcl.def 内容如src
```shell
cd ext
vim f_wcl.def
./ext_skel --extname=f_wcl --proto=f_wcl.def
```
## 编译配置
```shell
cd f_wcl  
vim config.m4
```
#### 去掉 PHP_ARG_ENABLE 和 --enable-f_wcl前面的dnl

## 功能实现
实现函数 PHP_FUNCTION(f_wcl) 代码如 src/f_wcl.c
```shell
vim f_wcl.c
```

## 编译、安装
```shell
PHP/bin/phpize  
./configure --with-php-config=PHP/bin/php-config  
make && make install  
```

## 配置文件 

php.ini 添加 extension=f_wcl.so
```php
print_r(f_wcl('filename'));
```

