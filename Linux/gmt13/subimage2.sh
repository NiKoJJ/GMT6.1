#!/usr/bin/env -S bash -e
# GMT modern mode bash template
# Date:    2022-12-01T15:06:44
# User:    nikoon
# Purpose: Purpose of this script
export GMT_SESSION_NAME=$$	# Set a unique session name

gmt begin subimage2 png
	# 共用 X/Y 轴
	# SRl 表示一行内（Row）的子图共用 Y 轴，且只在左边（l）轴显示标注
	# -SCb 表示一列内（Column）的子图共用 X 轴，且只在底部（b）轴显示标注。
	
	gmt set FONT_TAG 15p FONT_HEADING 20p MAP_HEADING_OFFSET 10p
	gmt subplot begin 2x2 -Fs5c/3c -A -M0.2c/0.2c -T"My Subplot Heading" -SRl -SCb -BWSrt
		gmt basemap -R0/10/0/10 -JX? -c
		gmt basemap -R0/20/0/10 -JX? -c
		gmt basemap -R0/10/0/20 -JX? -c
		gmt basemap -R0/20/0/20 -JX? -c
	gmt subplot end
gmt end show
