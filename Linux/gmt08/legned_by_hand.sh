#!/usr/bin/env -S bash -e
# GMT modern mode bash template
# Date:    2022-11-27T14:10:27
# User:    nikoon
# Purpose: Purpose of this script
export GMT_SESSION_NAME=$$	# Set a unique session name



# S dx1 symbol size fill pen dx2 text
# • S 表明这一行用于绘制符号或线段。
# • dx1 是符号或线段与图例左边框的距离
# • symbol 是要绘制的符号类型代码；若想要绘制线段，则设置 symbol 为 -
# • size 符号尺寸或线段长度
# • fill 符号填充色；若不需要填充色，则可设置为 -
# • pen 符号轮廓的画笔颜色；若不需要绘制符号轮廓，则可设置为 -
# • text 符号对应的文字说明
# • dx2 文字与左边框之间的距离



gmt begin map png,pdf
gmt basemap -R0/10/0/8 -JX10c/8c -Baf -BWsen
cat  > legend.txt <<EOF
# symbols
S 0.25 c 0.3c -         0.25p,blue 0.8c circle
S 0.25c t 0.3c cyan     0.25p 0.8c triangle
S 0.25c i 0.3c blue     0.25p,red 0.8c triangle2
S 0.25c e 0.3c yellow   0.25p 0.8c ellipse

# lines
S 0.25c - 0.5c -        0.25p 0.8c line
S 0.25c - 0.5c -        0.25p,- 0.8c dashline
S 0.25c v0.1i+a40+e     0.25i magenta 0.25p 0.8c vector
S 0.25c f0.1i+l+t       0.25i blue 0.25p 0.8c fault
EOF
gmt legend  legend.txt -DjBR+w2.8c+o0.1c/0.1c -F+p1p+glightblue
gmt end show
