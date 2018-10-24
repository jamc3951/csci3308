#Jamison McGinley
#!/bin/bash

file=$1


if [ -z "$file" ]
then
echo Usage: TimesAwk.sh filename
exit 0
fi

while read Line 
do

echo $Line|awk '{print $1 " [" int(($4 + $5 + $6)/3) "] " $3 ", " $2 }'	 
done < <(sort -k3,3 -k2,2  -k1,1 $file)


