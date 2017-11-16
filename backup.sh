#!/bin/bash
arq=$1

a=$( cat $arq | wc -l)

if [ $a -lt 100 ]
then
    if [ -d ./pequeno ]
    then
        mv $arq ./pequeno/
    else
        mkdir pequeno
        mv $arq ./pequeno/
    fi
elif [ $a -lt 500 ]
    then
    if [ -d ./medio ]
    then
        mv $arq ./medio/
    else
        mkdir medio
        mv $arq ./medio/
    fi
else
    if [ -d ./grande ]
    then
        mv $arq ./grande/
    else
        mkdir grande
        mv $arq ./grande/
    fi

fi