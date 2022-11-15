# 使用等距圆锥投影(-JD)绘制中国国界省界数据
gmt begin CN-border-JD png
    gmt set MAP_GRID_PEN_PRIMARY 0.25p,gray,2_2
    gmt coast -JD105/35/36/42/10c -R70/140/3/60 -G244/243/239 -S167/194/223 -Ba10f5g10 -Lg85/11+c11+w900k+f+u
    gmt plot CN-border-La.gmt -W0.1p
gmt end show



# 使用墨卡托投影(-JM)绘制中国国界省界数据
gmt begin CN-border-JM png
    gmt set MAP_GRID_PEN_PRIMARY 0.25p,gray,2_2
    # 绘制中国地图
    gmt coast -JM105/35/10c -R70/138/13/56 -Ba10f5g10 -G244/243/239 -S167/194/223
    gmt basemap -Lg85/17.5+c17.5+w800k+f+u --FONT_ANNOT_PRIMARY=4p
    gmt plot CN-border-La.gmt -W0.1p

    # 绘制南海区域
    gmt inset begin -DjRB+w1.8c/2.2c -F+p0.5p
        gmt coast -JM? -R105/123/3/24 -G244/243/239 -S167/194/223 -Df
        gmt plot CN-border-La.gmt -W0.1p
    gmt inset end
gmt end show


# 绘制中国以及邻国国界

gmt begin CN-border-neighbouring-countries png
    gmt set MAP_GRID_PEN_PRIMARY 0.25p,gray,2_2
    gmt coast -JD105/35/36/42/10c -R70/140/3/60 -G244/243/239 -S167/194/223 -Ba10f5g10 -Lg85/11+c11+w900k+f+u

    # 使用 clip 命令和 CN-border-L1.gmt 数据将中国区域裁剪出来
    gmt clip CN-border-L1.gmt -N
        # 绘制中国邻国国界,AF 至 VN 是中国的 14 个邻国的国界代码
        gmt coast -EAF,BT,IN,KZ,KG,LA,MN,MM,NP,KP,PK,RU,TJ,VN+p0.1p
    gmt clip -C

    # 绘制中国国界
    gmt plot CN-border-La.gmt -W0.1p
gmt end show