
gmt begin map png
    gmt coast -JH180/12c -Rg -Bafg -W0.5p -A1000
    gmt plot twopoint.dat -W2p,red
    @REM 如果想要在地理投影下也是要直线连接两点，则需要使用 -A 选项
    gmt plot twopoint.dat -W2p,blue -A
gmt end show