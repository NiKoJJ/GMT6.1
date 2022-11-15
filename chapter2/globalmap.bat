gmt begin

# 参考:https://docs.gmt-china.org/6.1/tutorial/basemap/
# -------------------------全球地图绘制----------------------------
    # -JH180/12c  指定地图投影参数以及地图尺寸,H表示Hammer投影,地图中心位于经度180处,地图宽度12cmm
    # -Rg 指定要绘制的区域范围,等价于 -R0/360/-90/90 ,指定要绘制的区域范围,即经度0°到360°,纬度-90°到90°,四个数字之间用斜杠 / 分隔
    # -Bg -B 用于给底图加上边框，其中的 g 则用于向底图中加入网格线(g 代表 grid)

    # 创建Fig1 并在Fig1中绘图
    # 无边框
    gmt figure Fig1 png
    gmt coast -JH180/12c -R0/360/-90/90 -W0.5p -A10000

    # 创建Fig2 并在Fig2中绘图
    # 有边框
    gmt figure Fig2 png
    gmt coast -JH180/12c -Rg -Bg -W0.5p -A10000

    # 有边框 投影方式 -JK180/12c
    gmt figure Fig3 png
    gmt coast -JK180/12c -Rg -Bg -W0.5p -A10000


    # 有边框 投影方式 -JI180/12c
    gmt figure Fig4 png
    gmt coast -JI180/12c -Rg -Bg -W0.5p -A10000

 
    # 有边框 投影方式 -JN180/12c
    gmt figure Fig5 png
    gmt coast -JN180/12c -Rg -Bg -W0.5p -A10000


    # 有边框 投影方式 -JR180/12c
    gmt figure Fig6 png
    gmt coast -JR180/12c -Rg -Bg -W0.5p -A10000


# -----------------区域地图绘制----------------------
# -JM12c 指定了使用墨卡托投影(绘制区域地图最常用的投影方式),地图宽度为12厘米

# -RNZ 指定了绘图区域范围, NZ 代表新西兰. 如果对于根据国家代码自动确定的区域范围不太满意，我们也可以使用 -R 选项最原始的方式来指定区域范围
# 即依次给定绘图区域的最小经度、最大经度、最小纬度和最大纬度。记起来也很容易，可以记为 xmin/xmax/ymin/ymax,或者直接记“西东南北”

# -Ba 用于给底图添加边框.对于某些地图投影,GMT默认使用黑白相间的底图边框,a用于添加标注,经纬度数字
# -Bafg 表示绘制底图边框的标注(annotation)、刻度线(frame,即图中黑白线段的间隔)和网格线(grid). 标注、刻度线以及网格线的间隔由GMT算法自动决定



    # 新西兰地图
    gmt figure Fig7 png
    gmt coast -JM12c -RNZ Ba -W0.5p -A10000

    # 指定绘图区域
    gmt figure Fig8 png
    gmt coast -JM12c -R165/180/-48/-32 -Bafg -W0.5p -A10000

gmt end