#!/usr/bin/env -S bash -e
# GMT modern mode bash template
# Date:    2022-11-21T21:23:52
# User:    nikoon
# Purpose: Purpose of this script
export GMT_SESSION_NAME=$$	# Set a unique session name
gmt begin figurename
	gmt set MAP_FRAME_TYPE plain  # type of frame
	gmt set MAP_GRID_PEN 0p,gray,- # style  of grid

	gmt basemap -R97.3/99.5/34.3/35/-25/0 -JX15c/10c -JZ5c -Bxa0.25fg -Bya0.25fg -Bza10fg+l"Depth(km)" BwSEnZ -p160/20
	
	# draw CPT for slip .  min_slip=0 , max_clip=5.5
	gmt makecpt -Cwhite,lightblue,yellow,red -T0/5.5/0.2 -Z
	
	# draw the fault model
	gmt plot3d slip_3dgrid.gmt -C -L -W0p,gray -p

	# draw colorbar
	gmt set FONT_ANNOT_PRIMARY 7p FONT_LABEL 8p
	gmt set MAP_ANNOT_OFFSET_PRIMARY 2p MAP_FRAME_PEN thinner MAP_TICK_LENGTH 2p
    	gmt colorbar -C -DjBL+w2.5c/0.3c+h+o1.3c/2c+ml -Ba1 -Bx+l"slip(cm)"
gmt end show
