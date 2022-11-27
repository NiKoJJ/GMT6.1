#!/usr/bin/env -S bash -e
# GMT modern mode bash template
# Date:    2022-11-27T14:23:38
# User:    nikoon
# Purpose: Purpose of this script
export GMT_SESSION_NAME=$$	# Set a unique session name
gmt begin global_relief png
	gmt grdimage @earth_relief_15m -JH180/10c
gmt end show
