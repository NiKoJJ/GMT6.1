#!/usr/bin/env -S bash -e
# GMT modern mode bash template
# Date:    2022-11-27T13:35:27
# User:    nikoon
# Purpose: Purpose of this script
export GMT_SESSION_NAME=$$	# Set a unique session name


gmt begin map

# -BWSen 中 WSEN 分别是西南东北四个方向的英文单词首字母，用于控制四条边的属性。
# 大写的 WS表示给西边和南边添加标注，而小写的 en 则表示对于东边和北边只绘制边框但不显示标注
gmt figure fg1 png
gmt basemap -R0/10/0/6 -JX10c/6c -Bafg1 -BWsen
gmt text << EOF
# X Y TEXT
5 1 gmt text1
5 3 gmt text2
5 5 gmt text3
EOF


# 文字的属性 
gmt figure fg2 png
gmt basemap -R0/10/0/6 -JX10c/6c -Bafg1 -Bwsen
# -F+f16p,1,red+a30 即表示文字大小为 16p，字体为 1 号字体，颜色为红色，文字旋转角度为30 度。
gmt text -F+f16p,red+a30 << EOF
# X Y TEXT
5 1 gmt text1
5 3 gmt text2
5 5 gmt text3
EOF


# 文本框
# -W 选项控制文本框的画笔属性
# -G 选项控制文本框的填充色
# -C 选项控制文字与文本框之间的空白

gmt figure fg3 png
gmt basemap -R0/10/0/6 -JX10c/6c -Bafg1 -Bwsen
gmt text -F+f16p,red+a30 -W1p -Glightblue -C25%/25% << EOF
# X Y TEXT
5 1 gmt text1
5 3 gmt text2
5 5 gmt text3
EOF


# 对齐方式 jTL,偏移量 -D
# -F+j 用于指定文本对齐方式。
# -F+jTL 表示文本对齐方式为 TL（Top + Left），即表示以左上角方式对齐
gmt figure fg4 png
gmt basemap -R0/10/0/6 -JX10c/6c -Bafg1 -Bwsen
gmt text -F+f16p,red+jTL -W1p -Glightblue -C25%/25% << EOF
# X Y TEXT
5 1 gmt text1
5 3 gmt text2
5 5 gmt text3
EOF



# -D0.5c/0.5c 分别设置了文本在 X 方向和 Y方向的偏移量
gmt figure fg5 png
gmt basemap -R0/10/0/6 -JX10c/6c -Bafg1 -Bwsen
gmt text -F+f16p,red+jTL -D0.5c/0.5c -W1p -Glightblue -C25%/25% << EOF
# X Y TEXT
5 1 gmt text1
5 3 gmt text2
5 5 gmt text3
EOF


# 变化的文字属性
# -F+f+a+j 选项: +f 设置文本属性，+a 设置文本旋转角度，+j 设置文本对齐方式
# 输入数据的格式由 +f、+a 和 +j 的顺序决定:
# X Y font angle justification text
gmt figure fg6 png
gmt basemap -R0/10/0/6 -JX10c/6c -Bafg1  -BWsen
gmt text -F+f+a+j -W1p -Glightblue  << EOF
5 1 12p,0,red      0   TL gmt text1
5 3 15p,1,blue     30  MC gmt text2
5 5 18p,2,yellow   180 TL gmt text3
EOF

gmt end show
