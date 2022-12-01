#!/usr/bin/env -S bash -e
# GMT modern mode bash template
# Date:    2022-12-01T14:53:08
# User:    nikoon
# Purpose: Purpose of this script
export GMT_SESSION_NAME=$$	# Set a unique session name
gmt begin submap png
	#调整子图编号的大小（FONT_TAG）、总标题文字大小（FONT_HEADING）以及总标题相对于底图的偏移量（MAP_HEADING_OFFSET）
	# -A: 对每个子图进行自动编号 abcd
	# -M0.2c/0.1c: 调整相邻子图之间的空白距离，X 方向间隔为 0.2 厘米，Y 方向间隔为 0.1 厘米
	# -T”My Subplot Heading”: 为整张图加上一个总标题
	# 线性投影方式 -JX? ,使用了 ? 让 GMT 根据子图区域的大小自动帮我们选择最合适的子图宽度。
	
	gmt set FONT_TAG 15p FONT_HEADING 18p MAP_HEADING_OFFSET 0p
	gmt subplot begin 2x2 -Fs5c/3c -A -M0.2c/0.1c -T"My Subplot Heading"
		gmt subplot set 0
		gmt basemap -R0/10/0/10 -JX? -Baf -BWSen
	
		gmt subplot set 1
		gmt basemap -R0/20/0/10 -JX? -Baf -BWSen
	
		gmt subplot set 2
		gmt basemap -R0/10/0/20 -JX? -Baf -BWSen
	
		gmt subplot set 3
		gmt basemap -R0/20/0/20 -JX? -Baf -BWSen
	gmt subplot end
	
gmt end show
	
