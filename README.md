# auto_copy

a python script and a shell script that will ask you the source directory , destination
directory,and the number of files to copy (this is because the 
destination directory's size is not big enough to accumulate all the
source's directory files. In this case the size of the destination
directory is 14gb which is a usb and the source directory size is 
38 gb ,so the script will ask the number of files which will be 
14 in this case (cause 14 files of 1gb is 14gb) and then copy those
14 files of 1gb to the source directory)


USAGE EXAMPLE:
lets say you have a 14gb usb and you want to copy files to it from a hard drive which has slow read write speed. lets say you want to copy a folder (that also has two subfolders of size 50gb(this sub folder has 4 sub folder of size: 14gb,14gb,14gb,8gb) and 20gb(this sub folder has 2 more subfolders of size:14gb,6gb)) from that sh***y hard drive, whose size is 70 gb .
Now you have to download that folder in parts which can fit inside the usb. You would have to download the folder (of size 70gb) at least 5 times. Using this script you could kinda automate this task
by specifying the requirements. The mechanism is described below if you want to run the script multiple times : 
First sorting the given folder(70gb ) according to a specific given size(in this case 14gb,this is asked in the script ) to multiple sub folders,SO the 70gb folder will be sorted according to (remeber the size of all the sorted folders will be less than or equal to 14gb ): 
1)14gb
2)14gb
3)14gb
4)8gb

5)14gb
6)6gb

now selecting the number of files to be copied at a time (which would be one in this case ) and then selecting the number of times to run the script which would be 6 in this case .
