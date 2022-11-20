#!/usr/bin/env -S bash -e
# GMT modern mode bash template
# Date:    2022-11-18T22:56:44
# User:    nikoon
# Purpose: Purpose of this script
export GMT_SESSION_NAME=$$	# Set a unique session name
gmt begin figurename
	gmt coast -Rg -JH15c -Gpurple -Baf -B+t"My First Plot"
gmt end show
