gmt begin CN-faults png,pdf
    gmt coast -JM15c -RCN -Baf -W0.5p,black -A10000
    gmt plot CN-faults.gmt -W1p,red
gmt end show