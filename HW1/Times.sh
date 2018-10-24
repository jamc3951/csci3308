#Jamison McGinley
#!/bin/bash
 
file=$1
sum=0

if [ -z "$file" ]
then
echo Usage: Times.sh filename
exit 0
fi


while read a b c d e f
do 
	sum=$(($d+$e+$f))
	sum=$(($sum/3)) 
	echo $a [$sum] $c, $b
done < <(sort -k3,3 -k2,2  -k1,1 $file)


exit 0


