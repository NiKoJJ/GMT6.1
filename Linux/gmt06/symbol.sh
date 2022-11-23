#!/bin/bash
# GMT modern mode bash template
# Date:    2022-11-23T23:45:06
# User:    nikoon
# Purpose: Purpose of this script
export GMT_SESSION_NAME=$$	# Set a unique session name

gmt begin symbols

gmt figure fg1 png
gmt basemap -R1/15/0/2 -Jx1c -B+n
gmt plot -S -W1p -Gred << EOF
1 0.3 0.5c -
2 1 0.5c +
3 1 0.5c a
4 1 0.5c c
5 1 0.5c d
6 1 45 0.5c 0.3c e
7 1 0.5c g
8 1 0.5c h
9 1 0.5c i
10 1 0.5c n
11 1 0.75 0.5 r
12 1 0.5c s
13 1 0.5c t
14 1 0.5c x
15 1 0.5c y
EOF

gmt figure fg2 png
gmt plot -R0/10/0/10 -JX10c/10c -Baf -Sc -W1p,black -Gred << EOF
2 3 0.3
5 6 0.8
8 2 0.5
EOF

# CPT 颜色表为 0 到 3 之内的每个数值都对应了一个颜色
gmt figure fg3 png
gmt makecpt -Chot -T0/3/1
gmt plot -R0/10/0/10 -JX10c/10c -Baf -Sc0.5c -W1p,black -C << EOF
2   3   0
5   6   1
8   2   2
EOF



# X   Y   Z   size    symbol
gmt figure fg4 png
gmt makecpt -Chot -T0/3/1
gmt plot -R0/10/0/10 -JX10c/10c -Baf -S -W1p,black -C << EOF
2   3   0   0.3 c
5   6   1   0.8 t
8   2   2   0.5 i
EOF


gmt end show
