#Jamison McGinley
#!/bin/bash


file=$1

if [ -z "$file" ]
then
echo Usage: RegexAnswers.sh filename
exit 0
fi


egrep -c "[0-9]$" $file

egrep -i -c "^[aeiou|AEIOU]" $file

egrep -i -c "^[a-z]{9}$" $file

egrep -c  "[0-9]{3}-[0-9]{4}$" $file

egrep -c "303-[0-9]{3}-[0-9]{4}$" $file

egrep -i -c "^[0-9].*[aeiou|AEIOU]$" $file

egrep -i -c  "UCDenver.edu$" $file

egrep -i -c  "[n-z].*\.[a-z].*@" $file
