#!/usr/bin/env -S bash -e
# GMT modern mode bash template
# Date:    2022-11-21T20:57:16
# User:    nikoon
# Purpose: Purpose of this script
export GMT_SESSION_NAME=$$	# Set a unique session name
gmt begin figurename
	# gmt coast -JH180/12c -R0/360/-90/90 -W0.5p -A10000
	# gmt coast -JH180/12c -Rg -Bg -W1p -A1000
	# gmt coast -JM12c -RNZ -Ba -W0.5p -A10000
	# gmt coast -JM180/12c -R165/180/-48/-32  -Bafg -W0.5p -A10000
	# gmt coast -JM12c -R165/180/-48/-32 -Bxa4g2 -Bya3g3 -BWSent+t"New Zealand" -W0.5
	# gmt basemap -R10/70/-4/8 -JX8c/5c -Bxa10f5g10+l"X label" -Bya4f2g2+l"Y label" -BWSent+t"Linear X_Y Plot"
	gmt basemap -R10/70/-4/8/-10/10 -JX8c/5c -JZ5c -Bxa10+lX -Bya4+lY -Bzaf+lDepth -BSEwnZ+b+t"3D Plot" -p130/30

gmt end show

