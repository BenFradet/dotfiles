#!/bin/bash

declare -a arr=(SK US DE GB CN)

for lang in ${arr[@]}
do
    varname=B1ServerDemoDB_$lang
    unset FEATURE
    export FEATURE=$varname
    ./CreateDemoDB_postinstall.sh
done
