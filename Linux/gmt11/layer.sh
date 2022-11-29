#!/usr/bin/env -S bash -e
# GMT modern mode bash template
# Date:    2022-11-29T11:41:27
# User:    nikoon
# Purpose: Purpose of this script
export GMT_SESSION_NAME=$$	# Set a unique session name
gmt begin layers png
	
gmt figure fg0
gmt basemap -JH180/15c -Rg -Bg
	
# -B 用于给底图加上边框，其中的 g 则用于向底图中加入网格线（g 代表 grid）
gmt figure  fg1
gmt basemap -JH180/15c -Rg -Bg
	
# 使用 grdimage 模块绘制底图，并使用 colorbar 模块添加色标：
gmt figure fg2
gmt grdimage @earth_relief_15m -Cetopo1 -I+d
gmt colorbar -Baxa2000f+l"Elevation(m)"

# 绘制震中位置 五角星
gmt plot -Sa0.5c -W0.5p,black,solid -Gyellow <<EOF
130.72 32.78
EOF
	
# 绘制台站位置 三角形
gmt plot -St0.2c -W0.5p,black,solid -Gblack << EOF
104.39 29.90
13.14 52.50
19.99 -34.52
-77.15 38.89
-52.47 -31.62
150.36 -33.79
76.22 -69.22
EOF

# 绘制大圆路径
gmt plot -W1p,red << EOF
>
130.72 32.78
104.39 29.90
>
130.72 32.78
13.14 52.50
>
130.72 32.78
19.99 -34.52
>
130.72 32.78
-77.15 38.89
>
130.72 32.78
-52.47 -31.62
>
130.72 32.78
150.36 -33.79
>
130.72 32.78
76.22 -69.22
EOF

# 添加文本
gmt text -F+f9p,1,black+j -Dj0.1c/0.1c << EOF
-77.15  38.89 ML Washington
76.22  -69.22 ML Zhongshanzhan
104.39  29.90 MR Zigong
13.14   52.50 TC Berlin
19.99  -34.52 ML Bredasdorp
150.36 -33.79 ML Sydney
-52.47 -31.62 ML Pelotas
EOF



gmt end show
