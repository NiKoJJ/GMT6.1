gmt begin global_relief png,pdf

REM 绘制全球地形起伏图
gmt figure fg1 png
gmt grdimage @earth_relief_15m -JH180/10c

REM 绘制区域地形起伏图
gmt figure fg2 png
gmt grdimage @earth_relief_05m -JM15c -R118/125/20/26 -Baf -BWsen
REM 添加色标 并为色标添加一个标签
gmt colorbar -Bxaf+l"Elevation (m)" 

REM 增加光照效果   -I+d 以增加默认光照效果
gmt figure fg3 png
gmt grdimage @earth_relief_05m -JM15c -R118/125/20/26 -Baf -BWsen -I+d
gmt colorbar -Bxaf+l"Elevation (m)" -By+l"m"

REM 调整色标的位置、长度等属性
gmt figure fg4 png
gmt grdimage @earth_relief_05m -JM15c -R118/125/20/26 -Baf -BWsen -I+d
REM -D选项将色标放在了地形起伏图的右侧中间（JMR）向右偏移1.0厘米，色标长度为10厘米，并将标签放在了色标左侧（ml）
REM 标注（annotation）间隔为10000，刻度（frame）
gmt colorbar -DJMR+w10c+o1.0c/0c+ml -Bxa1000f -By+l"m"

REM 制作CPT文件  makecpt或grd2cpt
gmt figure fg5 png
gmt basemap -JM15c -R118/125/20/26 -Baf -BWsen
gmt makecpt -Cglobe -T-8000/8000
gmt grdimage @earth_relief_05m -I+d
gmt colorbar -Bxa2000 -B+l"topography"



gmt end show