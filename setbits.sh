#!/bin/bash
pinCount=0 

while [ $pinCount -lt 4 ]
do 
gpio write $pinCount $((($1 >> $pinCount) &1))
pinCount=$(($pinCount+1))

done
