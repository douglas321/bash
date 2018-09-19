#!/bin/bash
clear
#for,start at zero end at 10 inclusive inclusive
for count in {0..10}; do
echo "the count= " $count
let count=count+1
done

echo

for count in {0..100..2}; do
echo "the count= " $count
let count=count+1
done

for count in {100..0}; do
echo "the count= " $count
let count=count+1
done

echo
echo

#while,start at zero end at 10 inclusive exclusive
wCount=0
while [[ $wCount -lt 10 ]]; do
echo $wCount
let wCount=wCount+1
done 

echo
echo

#unitl, start at zero end at 10 inclusive inclusive
uCount=0
until [[ $uCount -gt 10 ]]; do
echo $uCount
let uCount=uCount+1
done
