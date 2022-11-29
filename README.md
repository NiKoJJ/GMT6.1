# GMT6.1 Study

**参考资料**

- 参考教程：https://docs.gmt-china.org/6.1/

- 视频教程：https://www.bilibili.com/video/BV1C64y1m7qP/?vd_source=385260ab2c7f66c63d314a57e5aeb4dc
- GMT 中文手册 6.1：GMT_docs.pdf



**文件说明**

- Winsows下：Batch脚本

​	chapter 1 命令初探

​	chapter 2 绘制底图

​	chapter 3 图形示例

​	chapter 4 脚本编程

​	chapter 5 绘制线段和多边形

- Linux下：bash脚本 

  gmt01

  gmt02

  gmt 03

  ... ...



**常用命令：**

- 查询州代码 、国家代码、区域代码：https://docs.gmt-china.org/latest/dataset/dcw/

```shell
gmt coast -E+L  # 查询国家代码

gmt coast -E+L | grep CN  # 进一步查询国家内的省份代码
```

- 常用绘图参数 

```shell
gmt coast -JM12c -R0/360/-90/90  -W1/0.5p -A1000 -BWsen
```



**数据：**

- Earth_relief (地形起伏数据)：数据会自动下载并保存到 **~/.gmt/server/earth/earth_relief** 目录下
- llinux下载数据会报错，具体的 earth relief data 可以在此文件中  **./data/earth**  中找到
