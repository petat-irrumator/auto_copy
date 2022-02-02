#! /bin/bash

read -p 'size to look for (e.g: +500k OR -500k) ' SIZE

read  -p 'directory to where to look for files with size '$SIZE" " PATH1

find $PATH1 -type f -size $SIZE >> /home/user/Desktop/filenames.txt 



read -p 'where to copy the files ' PATH2 
read -p 'how many files do you want to copy ' NUM_OF_FILES  
x=0
for FILES in $(seq 1 $NUM_OF_FILES)
do
    x=$(expr $x + 1)
    
    FILE_NAME=$(sed $x'!d' /home/user/Desktop/filenames.txt)

    cp $FILE_NAME $PATH2
    echo $FILE_NAME " copied!!"
done
rm filenames.txt
clear

echo "DONE!"
