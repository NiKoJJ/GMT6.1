#!/usr/bin/env -S bash -e
# GMT modern mode bash template
# Date:    2022-11-27T14:00:13
# User:    nikoon
# Purpose: Purpose of this script
export GMT_SESSION_NAME=$$	# Set a unique session name

gmt begin figurename png
gmt basemap -R0/10/0/10 -JX10c -Baf

gmt plot -W1p,blue -l"Profile" << EOF
3 3
6 8
EOF

gmt plot -W0.5p -Gred -Sa0.3c -l"Event" << EOF
5 5
5 8
7 6
9 4
EOF

gmt plot -W0.5p -Gblue Sa0.3c -l"Station" << EOF
2 3
4 6
8 5
EOF


gmt end show
