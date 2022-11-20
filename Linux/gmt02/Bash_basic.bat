#!/usr/bin/env -S bash -e
# GMT modern mode bash template
# Date:    2022-11-20T18:58:02
# User:    nikoon
# Purpose: Purpose of this script
export GMT_SESSION_NAME=$$	# Set a unique session name
gmt begin figurename
	# Place modern session commands here
	echo Hello World!
	
	region="0/10/0/10"
	projection="X10c/10c"
	echo $projection $region
	
	# start GMT
	gmt begin map1 png
		gmt basemap -J$projection -R$region -Baf
		gmt plot point.dat -W1p
	gmt end show
	
	
	# 倒引号的作用是将一个命令的输出保存到一个变量中，供后面的命令使用
	# 下面将 gmt info 的输出保存到变量 new_region 中，并在接下来的命令中使用了该变量的值
	gmt begin map2 png
		new_region=`gmt info point.dat -I1/1`
		gmt plot point.dat -J$projection $new_region
	gmt end show
	
	
	# the code is too lang, use  the \ separate one row to many rows
	gmt begin map3 png
		gmt coast -A1000 -Dc -ECN -W1p \
			Glightblue -Slightred
	gmt end show
	

	
gmt end show
