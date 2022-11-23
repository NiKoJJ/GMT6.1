#!/usr/bin/env -S bash -e
# GMT modern mode bash template
# Date:    2022-11-23T23:07:50
# User:    nikoon
# Purpose: Purpose of this script
export GMT_SESSION_NAME=$$	# Set a unique session name
gmt begin figurename
	gmt figure  fg1 png
	gmt basemap -JX10c -R0/10/0/10 -Baf
	gmt plot point.dat -W2p,lightblue -Glightred -L
	
	gmt figure fg2 png
	gmt basemap -JX10c -R0/10/0/10 -Baf
	gmt plot points.dat -W1p,red
	
	# polygon
	gmt figuew fg3 png
	gmt basemap -JX10c -R0/10/0/10 -Baf
	gmt plot points.dat -W1p,red -L -Glightred
	
	# circle path on map
	gmt figure fg4 png
	gmt coast -JH180/12c -Rg -B0 -W0.5p -A1000
	gmt plot twopoints.dat -W2p,red
	gmt plot twopoints.dat -W2p,blue -A
	
gmt end show
