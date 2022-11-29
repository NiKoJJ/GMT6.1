#!/usr/bin/env -S bash -e
# GMT modern mode bash template
# Date:    2022-11-29T11:03:57
# User:    nikoon
# Purpose: Purpose of this script
export GMT_SESSION_NAME=$$	# Set a unique session name
gmt begin histtogram png
	# -i2 选项将输入数据的第三列（GMT中列号从0开始）传递给 histogram
	# -T 选项指定直方的宽度。同时还需要使用 -G 指定直方的填充色，
	# 或使用 -W 指定直方边框的画笔属性
	gmt figure fg1 png
	gmt histogram eq.dat -i2 -Baf -T5 -W1p -BWsen
	
	
	# -Gred 表示为直方填充红色
	#-D 会在每个直方的上方标注该直方中的数量。该选项还可以接更多的子选项以控制标注的位置、字体和角度等
	gmt figure fg2 png
	gmt histogram eq.dat -i2 -Baf -T5 -W1p -BWsen -Gred -D
	
	# 
	gmt figure fg3 png
	gmt histogram eq.dat -JX15c/9c -R0/40/0/600 -Bxaf+l"Depth" -Byaf+l"Counts" -BWSen -D -W1p -Gred -T5 -i2 
	
	# 水平直方图，只需要增加 -A 选项
	gmt figure fg4 png
	gmt histogram eq.dat -JX15c/9c -R0/40/0/600 -Bxaf+l"Depth" -Byaf+l"Counts" -BWSen -A -D -W1p -Gred -T5 -i2
	
	# -Z1 表示绘制百分比直方图
	# 去除了 -R 选项让GMT自动确定最佳数据范围
	gmt figure fg5 png
	gmt histogram eq.dat -JX15c/9c -Bxaf+l"Depth" -Byaf+l"Counts"+u"%" -BWSen -D -Z1 -W1p -Gred -T5 -i2
	
gmt end show
