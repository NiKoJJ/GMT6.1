

### GMT命令格式：

**gmt** + **模块名** + **选项** + **参数**

```
gmt coast --Rg -JH15c  -Gpurple -Baf -B+t"My First Plot"
```

- 所有GMT命令都需要以gmt开头
- coast 是模块名，这个模块可以用于绘制海岸线
- -R -J -G -B 等以`-`开头的是模块的选项
- -Baf  中的 af 是 -B 选项的参数
- -B+t“My First Plot”中+t为 -B 的子选项，"My First Plot"则是子选项 +t 的参数



若想了解某一模块的具体用法，可以打开cmd终端，敲入`gmt docs coast`，进入coast模块的说明文档



### GMT命令说明

- 若模块名以 **gmt** 开头，则模块名中的 **gmt** 可省略。比如 **gmt gmtset xxx xxx** 可简写为 **gmt set xxx xxx**
- gmt 模块、选项等都区分大小写
- 选项以 **-** 开头，后接**单个字符**表示某个选项，字符后接选项的参数以及子选项
- 子选项以 **+** 开头，后接**单个字符**以及子选项的参数
- 不以 **-** 开头的参数，通常都会被当做文件，GMT 会尝试去读取
- 各选项间以空格分隔，选项内部不能有空格。选项内部的字符串中若存在空格，在 Bash 下可以使用单引号或双引号括起来，而`在 Windows 的 Batch 下则只能使用双引号`。



### GMT绘图模板

在cmd中生成一个绘图脚本文件：

```shell
gmt --new-script > demo.bat
```



基本绘图模板脚本：

```shell
# FigureName 生成的图片文件名 
# 支持pdf、ps、eps、jpg、png、bmp 等多种格式
# show 完成后显示图片
gmt begin FigureName pdf、ps、eps、jpg、png、bmp 
	#其他绘图命令
	#其他绘图命令
	#其他绘图命令
gmt end show
```



绘制第一张图：

```shell
gmt begin GlobalMap
    gmt coast -Rg -JH15c -Gred -Baf -B+t"My First Plot"
gmt end show
```

![GlobalMap](D:\Code\GMT6.1\chapter1\GlobalMap.png)