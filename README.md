# GMT6.1 Study

**参考资料**

- 参考教程：https://docs.gmt-china.org/6.1/

- 视频教程：https://www.bilibili.com/video/BV1C64y1m7qP/?vd_source=385260ab2c7f66c63d314a57e5aeb4dc
- GMT 中文手册 6.1：GMT_docs.pdf

**文件说明**

chapter 1 命令初探

chapter 2 绘制底图

chapter 3 图形示例

chapter 4 脚本编程

chapter 5 绘制线段和多边形

Linux Ubuntu版本



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

