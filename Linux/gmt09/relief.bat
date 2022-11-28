gmt begin global_relief png,pdf

gmt figure fg1
gmt grdimage @earth_relief_15m -JH180/10c

gmt figure fg2
gmt grdimage @earth_relief_30s -JM15c -R118/125/20/26 -Baf -BWsen

gmt end show