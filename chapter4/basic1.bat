@echo off
REM Date:    2022-11-16T23:45:19
REM User:    tellz
REM Purpose: Purpose of this script
REM Set a unique session name:
set GMT_SESSION_NAME=48868

@echo off
@REM REM -JX8c/5c 表明线性坐标轴的宽度为 8 厘米，高度为 5 厘米
@REM REM -R10/70/-4/8 表明 X 轴范围为 10 到 70，Y 轴范围为 -4 到 8
@REM REM -Bxa10f5g10+l”X Label” 设置了 X 轴的属性， 
@REM REM a10f5g10 分别设置了标注（annotation）间隔为 10，刻度（frame）间隔为 5，网格线（grid ）间隔为 10； +l”X Label” 则为 X 轴添加了标签；对于 Y 轴同理;

gmt begin linearXY png
	REM gmt basemap -R-5/5/-5/5 -Jm0.15i -Ba5f -BWSne+t"-Tdg0/0+w1i+l" -Tdg0/0+w1i+l -X1i
	
	gmt basemap -R10/70/-4/8 -JX8c/5c -Bxa10f5g10+label"X label" -Bya4f2g2+label"Y label" -BWSen+t"Linear X-Y Plot"
gmt end show 


@REM gmt begin 3DMap png
@REM 	gmt basemap -R10/70/-4/8/-10/10 JX8c/5c -JZ5c -Bxa10+label"x" -Bya4+lable"y" -Bzaf+lDepth -BSEwnZ+b+t"3D Plot" -p130/30
@REM gmt end