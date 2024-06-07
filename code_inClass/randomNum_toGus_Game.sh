#!/bin/bash
# Code a script for input a number
# If the number guessed by the user is the same as the random number and the preset number, exit directly and prompt

# 编写一个脚本，提示用户输入一个数，当输入的数字和预设数字（随机生成一个小于100的数字）进行比较，要求：
# 如果用户所猜的数字与随机与预设数字相同时，直接退出，并提示恭喜你猜对了，你一共才了多少次，否则让用户一直猜
# 如果用户所猜的数字比随机数小，就显示 对不起，你猜小了
# 如果用户所猜的数字比随机数大，就显示 对不起，你猜大了
# 随机数字生成 a=$(($RANDOM%100+1))
a=$(($RANDOM%100+1))
i=0
echo "请输入一个1-100之间的数字："
read gusNum
flag_c="N"
while (( $flag_c == "N" ))
do
        if [ $gusNum -lt $a ]
        then
                echo "猜小啦！！！"
                echo "请重新输入:"
                read gusNum
                let i++
        elif [ $gusNum -gt $a ]
        then
                echo "猜大啦！！！"
                echo "请重新输入:"
                read gusNum
                let i++
        else
                echo "恭喜你猜对啦！你猜了$i次"
                echo "=======游戏结束======="
                break
        fi
done
