#!/bin/bash

maxMem=6700;
currentMem=`free | awk 'NR==2 {print int($3/1024)}'`;

# Если первый аргумент пустой
if [ ! -z "$1" ]
	then
		maxMem="${1}";
fi

# Если текущая память больше установленного порога,
# то убиваем хром, т.к. это он полюбасу во сем виноват :)
if (( "$currentMem" > "$maxMem"  ))
	then
		`DISPLAY=0:0 /bin/bash notify-send "Память на исходе. Убиваем хром"`
		`pkill -9 -f chrome`
		`pkill -9 -f chromium`
fi
