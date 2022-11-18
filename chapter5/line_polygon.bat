@REM https://docs.gmt-china.org/latest/tutorial/lines/

gmt begin SimpleLine png

    gmt basemap -JX10c -R0/10/0/10 -Baf

    @REM 修改线段的粗细或颜色,-W1p,p 是 GMT 中的一个长度单位。
    @REM -L将线条收尾相连构成闭合多边形 -G填充颜色
    @REM gmt plot point.dat -W2p,red,-
    @REM gmt plot point.dat -W4p,lightblue -L
    @REM gmt plot point.dat -W4p,lightblue -Glightred -L
    @REM gmt plot point.dat -Glightred -L
    @REM gmt plot point.dat -W1p,red
    gmt plot lines.dat -W2p,red -Glightred -L


    
gmt end show 