#!/usr/bin/env -S bash -e
# GMT modern mode bash template
# Date:    2022-11-21T20:49:35
# User:    nikoon
# Purpose: Purpose of this script
export GMT_SESSION_NAME=$$	# Set a unique session name
gmt begin GlobalMap png
	gmt basemap -JH180/12c -R0/300/-90/90 -A1000
gmt end show
