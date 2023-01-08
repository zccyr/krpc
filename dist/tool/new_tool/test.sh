#!/bin/bash
str="service.proto"
echo ${str}

array=(${str//./ })

echo ${#array[@]}

echo ${array[0]}
echo ${array[1]}




echo zhangchangchun