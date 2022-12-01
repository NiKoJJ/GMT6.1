#!/usr/bin/env -S bash -e
# GMT modern mode bash template
# Date:    2022-12-01T13:56:28
# User:    nikoon
# Purpose: Purpose of this script
export GMT_SESSION_NAME=$$	# Set a unique session name

# single row model

# gmt coast -Rg -JH15c -Gpurple -Baf -B+t"My First Plot" -pdf,png GlobalMap

gmt coast -Rg -JH15c -Gpurple -Baf -B+t"First Plot" -pdf,png GlobalMap
