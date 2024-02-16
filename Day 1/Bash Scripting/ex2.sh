#!/bin/bash
#echo "This script will exit with a 0 exit status."
#exit 0
file_names=$@
for file in ${file_names}
do
	if [ -f ${file} ]
	then
		echo "File exists and its a regular file"
		exit 0
	elif [ -d ${file} ]
	then
		echo "File is a directory"
		exit 1
	else
		echo "Some other type of file"
		exit 2
	fi
done
read -p "Enter Command: " CMD
echo ${CMD}
${CMD}
if [ $? -ne 0 ]
then
	echo "Command failed"
        exit 1
fi
exit 0