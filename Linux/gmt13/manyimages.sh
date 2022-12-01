#!/usr/bin/env -S bash -e
# GMT modern mode bash template
# Date:    2022-12-01T15:19:57
# User:    nikoon
# Purpose: Purpose of this script
export GMT_SESSION_NAME=$$	# Set a unique session name
gmt begin
    # 创建 Fig1 并在 Fig1 中绘图
    gmt figure Fig1 png
    gmt basemap -R0/10/0/10 -JX10c -Baf

    # 创建 Fig2 并在 Fig2 中绘图
    gmt figure Fig2 png
    gmt basemap -R0/5/0/5 -JX10c -Baf

    # 切换回 Fig1，并绘制圆圈
    gmt figure Fig1
    echo 5 5 | gmt plot -Sc1c -W2p

    # 切换回 Fig2，并绘制三角形
    gmt figure Fig2
    echo 1 2 | gmt plot -St1c -W1p
gmt end show
