#! /bin/bash

read -p 'size to look for (e.g: +500k OR -500k) ' SIZE

read  -p 'directory to where to look for files with size '$SIZE" " PATH1
cd $PATH1
read -p 'type of file ("d" for directory and "f" for otherwise ) '  TYPE               

find -type $TYPE -size $SIZE > /home/user/Desktop/filenames.txt 

NUM_OF_FILES_TO_BE_COPIED=$( wc -l /home/user/Desktop/filenames.txt )

echo "total files to copy (minus 1 ): "$NUM_OF_FILES_TO_BE_COPIED "File directory where the names are stored"
read -p "Do you want to run the script multiple times(y / n): " MULTIPLE_TIMES_BOOLEAN






if [ $MULTIPLE_TIMES_BOOLEAN == "y" ];
then
    clear
    read -p "how many times do you want to run the script: " TIMES_TO_RUN_THE_SCRIPT

    read -p 'where to copy the files ' PATH2 
    read -p 'how many files do you want to copy ' NUM_OF_FILES  

    x=1
    a=0

    for TIME_TO_RUN in $(seq 1 $TIMES_TO_RUN_THE_SCRIPT)
    do
        


        if [ $TYPE == "d" ];
    then
        
        for FILES in $(seq 1 $NUM_OF_FILES)
    do
        x=$(expr $x + 1)
    
        FILE_NAME=$(sed $x'!d' /home/user/Desktop/filenames.txt)

        cp -r "$FILE_NAME" "$PATH2"
        echo $FILE_NAME " copied!!"
        echo "TIMES THE SCRIPT IS RUN: " $TIME_TO_RUN
        read 
        
    done

    elif [ $TYPE == "f" ];
    then
        
        for FILES in $(seq 1 $NUM_OF_FILES)
    do
        a=$(expr $a + 1)
    
        FILE_NAME=$(sed $a'!d' /home/user/Desktop/filenames.txt)

        cp  "$FILE_NAME" "$PATH2"
        echo $FILE_NAME " copied!!"
        echo "TIMES THE SCRIPT IS RUN: " $TIME_TO_RUN
        read
    done

    fi

    done

    rm filenames.txt


    echo "----------DONE!----------"


























elif [ $MULTIPLE_TIMES_BOOLEAN == "n" ];
then
    clear
    read -p 'where to copy the files ' PATH2 
    read -p 'how many files do you want to copy ' NUM_OF_FILES  


if [ $TYPE == "d" ];
then
    x=1
    for FILES in $(seq 1 $NUM_OF_FILES)
do
    x=$(expr $x + 1)
    
    FILE_NAME=$(sed $x'!d' /home/user/Desktop/filenames.txt)

    cp -r "$FILE_NAME" "$PATH2"
    echo $FILE_NAME " copied!!"
done

elif [ $TYPE == "f" ];
then
    x=0
    for FILES in $(seq 1 $NUM_OF_FILES)
do
    x=$(expr $x + 1)
    
    FILE_NAME=$(sed $x'!d' /home/user/Desktop/filenames.txt)

    cp  "$FILE_NAME" "$PATH2"
    echo $FILE_NAME " copied!!"
done

fi





rm filenames.txt


echo "----------DONE!----------"



fi
