#!/bin/sh

while :
do
    wget http://ld-konakart:8780/konakart/Welcom.action -O/dev/null
    wget http://ld-konakart:8780/konakart/Games/Strategy/1_20_-1_2.action -O/dev/null
    wget http://ld-konakart:8780/konakart/Games/Strategy/GT-Interactive/Disciples%3A-Sacred-Lands/PC-DISC/2_24.action -O/dev/null
    wget http://ld-konakart:8780/konakart/ShowCartItems.action -O/dev/null
    wget http://ld-konakart:8780/konakart/LogIn.action -O/dev/null
    wget http://ld-konakart:8780/konakart/Amazon/3_13.action -O/dev/null
    wget http://ld-konakart:8780/konakart/Electronics/Tablets/Amazon/Kindle-Fire-HD/KFIREHD/2_34.action -O/dev/null
    wget http://ld-konakart:8780/konakart/ShowCartItems.action -O/dev/null
    sleep 60
done
