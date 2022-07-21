#!/bin/bash

#making a task_2 folder
echo "making a folder"
mkdir task_2
echo "moving to task_2 folder"
cd task_2
#Creating 3 files in task-2 repository
echo "creating first file in the folder task-2"
touch f1
echo "creating 2nd file in the folder task-2"
touch f2
echo "creating 3rd file in the folder task-2"
touch f3
echo "moving back to scripts folder"
cd ..

#copying the files of folder to another folder
echo "creating a new folder"
mkdir task2_temp
echo "copying files to the task2_temp folder"
cp task_2/* task2_temp

#swapping names
echo "moving task_2 folder to temp folder"
mv task_2 temp
echo "moving task2_temp folder to task_2 folder"
mv task2_temp task_2
echo "moving temp(task_2) folder to task2_temp folder"
mv temp task2_temp
