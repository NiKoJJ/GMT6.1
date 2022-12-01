#!/usr/bin/env -S bash -e
# GMT modern mode bash template
# Date:    2022-12-01T15:10:11
# User:    nikoon
# Purpose: Purpose of this script
export GMT_SESSION_NAME=$$	# Set a unique session name
gmt begin complex-subplot png 
	gmt subplot begin 1x2 -Ff15c/3c -A -BWSen
		gmt subplot set 0 -A'(b)'
		gmt basemap -R0/10/0/10 -JX?
		gmt subplot set 1 -A'(c)'
		gmt basemap -R0/10/0/10 -JX?
	gmt subplot end
	
	gmt subplot begin 1x1 -Ff15c/3c -A -Yh+1c
		gmt subplot set 0 -A'(a)'
		gmt basemap -R0/10/0/10 -JX? -BWSen -Bxa2f1 -Bya2f1
	gmt subplot end
	
gmt end show
