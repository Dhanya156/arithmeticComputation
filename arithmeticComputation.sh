#!/bin/bash
echo "Welcome to Sorting Arithmetic Computation Problem "

declare -A result
read -p "Enter first input " a
read -p "Enter second input " b
read -p "Enter third input " c

Compute1=`awk 'BEGIN{printf("%.2f",'$a' + '$b' * '$c')}'`
echo  $Compute1
Compute2=`awk 'BEGIN{printf("%.2f",'$a' * '$b' + '$c')}'`
echo  $Compute2
Compute3=`awk 'BEGIN{printf("%.2f",'$a' + '$b' / '$c')}'`
echo  $Compute3
Compute4=`awk 'BEGIN{printf("%.2f",'$a' % '$b' + '$c')}'`
echo  $Compute4

result[1]="$Compute1"
result[2]="$Compute2"
result[3]="$Compute3"
result[4]="$Compute4"

echo "Dictionary :  ${result[@]}"
echo "Array : "
for i in ${!result[@]}
do
        arr[i]=${result[$i]}
        echo -n "${arr[i]} "
done
