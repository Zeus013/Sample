#!/bin/bash
rrpm=`iostat -hx | grep sd | awk '{sum+=$2}END{print sum;}'`
wrqm=`iostat -hx | grep sd | awk '{sum+=$3}END{print sum;}'`
rsec=`iostat -hx | grep sd | awk '{sum+=$6}END{print sum;}'`
wsec=`iostat -hx | grep sd | awk '{sum+=$7}END{print sum;}'`
svctm=`iostat -hx | grep sd | awk '{sum+=$13}END{print sum;}'`
echo "rrpm,wrqm,rsec,wsec,svctm"
echo -e "$rrpm,$wrqm,$rsec,$wsec,$svctm"
