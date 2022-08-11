#!/bin/bash

num=$(awk -F, '{print NR}' $1 | awk 'END{print}')

mid=$(( (num+1)/2 ))

cat $1 | head -$mid | tail +$mid
