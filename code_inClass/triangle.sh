#!/bin/bash

for ((i=1;i<=10;i++))
do
    ##输出空心倒三角
    for ((n=9;n>=$i;n--))
    do
        echo -n " "
    done

    a=$[($i*2)-1]
    for ((j=1;j<=$a;j++))
    do
        echo -n "*"
    done

    #换行
    echo ""

done
