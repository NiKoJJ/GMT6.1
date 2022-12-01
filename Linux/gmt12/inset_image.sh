#!/usr/bin/env -S bash -e
# GMT modern mode bash template
# Date:    2022-12-01T14:01:08
# User:    nikoon
# Purpose: Purpose of this script
export GMT_SESSION_NAME=$$	# Set a unique session name
gmt begin InsetMap

	# 绘制区域大图
	gmt figure fg1 png
	gmt coast -R139.2/140.5/34.8/36 -JM12c -Baf -BWSen -W2p -A1000 -Glightbrown -Sazure1 --FORMAT_GEO_MAP=dddF
	
	# 图中图模式,以 inset begin 开始，并以 inset end 结束
	gmt figure fg2 png
	gmt coast -R139.2/140.5/34.8/36 -JM12c -Baf -BWSen -W2p -A1000 -Glightbrown -Sazure1 --FORMAT_GEO_MAP=dddF
	
	gmt inset begin -DjBL+w3c/3.5c+o0.1c -F+gwhite+p1p
	gmt inset end
	
	# 在小区域 中绘制日本全图，并用矩形框选出大图对应的研究区域
	gmt figure fg3 png
	gmt coast -R139.2/140.5/34.8/36 -JM12c -Baf -BWSen -W2p -A1000 -Glightbrown -Sazure1  --FORMAT_GEO_MAP=dddF
	gmt inset begin -DjBL+w3c/3.5c+o0.1c -F+gwhite+p1p
		gmt coast -R129/146/30/46 -JM? -EJP+glightbrown+p0.2p -A1000
		# 使用 -Sr+s 绘制矩形区域
		echo 139.2 34.8 140.5 36 | gmt plot -Sr+s -W1p,blue
	gmt inset  end
	
	# 用颜色标记研究区域,研究区域为澳大利亚
	gmt figure fg4 png
	gmt coast -R110E/170E/44S/9S -JM6i -B -BWSne -Wfaint -N2/1p -Gbrown -EAU+gbisque
       gmt inset begin -DjTR+w1.5i+o0.15i/0.1i -F+gwhite+p1p+c0.1c
       	gmt coast -JG120/30S/? -Rg -Bg -Wfaint -Gbrown -EAU+gbisque -A5000
       gmt inset end

	
gmt end show
