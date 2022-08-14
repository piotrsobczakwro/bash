#!/bin/bash

echo "Provide file which you want to delete"
echo "You are in $PWD"
# File to test delete
touch test

list_file=`ls -lstr `

echo "List of files: $list_file"
echo "Write file to delete"
read provide_file;

echo "You provided file $provide_file"
echo "Confirm that you want to delete file (Y/N) !"
read confirm;

if [ $confirm = "Y" ]
then
  rm test
  echo "File deleted $provide_file"
  [ ! -e $provide_file ]
    echo "$provide_file not exist" 
else
  echo "Pressed (N) will not delete that file ... sorry"
fi

