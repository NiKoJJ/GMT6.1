#!/usr/bin/env -S bash -e
# GMT modern mode bash template
# Date:    2022-11-22T11:07:01
# User:    nikoon
# Purpose: Purpose of this script
export GMT_SESSION_NAME=$$	# Set a unique session name
gmt begin figurename
	gmt figure fg1 png
	# level 1 coast line  level 2 lake linei
	gmt coast -R60/140/0/60 -JM15c -Baf -W1/0.5p,black -W2/1p,lightred -A500

	gmt figure fg2  png
	# -G land , -S water , -C lake
	gmt coast -R60/140/0/60 -JM15c -Baf -W1/0.5p,black -W2/1p,lighted -A500 -Gred  -Slightblue -Clightred

	gmt figure fg3 png
	# country  border of USA  -N1 country , -N2 state or provience  
	gmt coast -R-130/-50/20/60 -JM15c -Baf -A5000 -Gred -Slightblue  -Clightred -N1/1p -N2/0.25p

	# gmt figure fg4 png
	# gmt coast -RCN.BJ+R2 -JM12c -Baf -ECN.BJ+p1p,blue+gred

	gmt figure fg4  png
	gmt coast -R-130/-50/20/60 -JM15c -Baf -A500 -Gred -Slightblue -Clightred  -N1/1p -N2/0.25p -Lg-60/25+c25+w1000k+f+u

gmt end show
