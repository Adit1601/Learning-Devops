#!/bin/bash
MSG="Shell Scripting is Fun!"
#echo "Shell Scripting is Fun!"
#echo $MSG
echo ${MSG}
NAME=$(hostname)
echo "This script is running on ${NAME}."
if [ -f /etc/shadow ]
then
        echo "Shadow passwords are enabled."
fi
if [ -w /etc/shadow  ]
then
        echo "You have permissions to edit /etc/shadow."
else
        echo "You do NOT have permissions to edit /etc/shadow."
fi
if [ 2 -eq 3  ]
then
        echo "Two is equal to three"
else
        echo "2 is not equal three"
fi
if [ "${MSG}" = "Shell scripting is fun!"  ]
then
        echo "message matched"
else
        echo "message not matched"
fi
for i in man bear pig dog cat
do
        echo "${i}"
done
#read -p "whats the name: " USER
#echo ${USER}
#read -p "enter file path: " check_file
check_files=$@
for check_file in ${check_files}
do
        if [ -f ${check_file} ]
        then
                echo "file exists and is a regular file"
        elif [ -d ${check_file} ]
        then
                echo "its a path of a directory"
        else
                echo "Its some other type of file"
        fi
done
ls -l ${check_file}