#!/bin/bash
declare -A dictionary
read -p "Enter first input : " a
read -p "Enter second input : " b
read -p "Enter third input : " c

ans=a+b
ans1=ans*c

ans2=a*b
ans3=ans2+c

ans4=c+a
ans5=ans4/b

ans6=a%b
ans7-ans6+c

# Static input of Array 
arr=(ans1 ans3 ans5 ans7) 
  
echo "Array in original order"
echo ${arr[*]} 
  
# Performing ascending order 
for ((i = 0; i<5; i++)) 
do
      
    for((j = 0; j<5-i-1; j++)) 
    do
      
        if [ ${arr[j]} -gt ${arr[$((j+1))]} ] 
        then
            # swap 
            temp=${arr[j]} 
            arr[$j]=${arr[$((j+1))]}   
            arr[$((j+1))]=$temp 
        fi
    done
done
  
echo "Array in ascending order :"
echo ${arr[*]} 
