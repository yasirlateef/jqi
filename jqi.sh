#! /bin/bash

# A utility wrapper for JQ tool
# Author: Yasir Lateef<yasirlateef112@gmail.com>

read -p "Please enter the source file name: " sourceFile
read -p "Please enter the required jq filter: " jqFilter
read -p "Please enter the target file name: " targetFile

echo We shall filter $sourceFile for "$jqFilter" and write the result to $targetFile

# Verify if jq is installed
JQ_EXISTS="$(which jq)"

if [[ -z "$JQ_EXISTS" ]]
then
	echo jq tool not found! Please install jq and try again!
	exit
fi

# Verify if source file exists
if [ ! -f $sourceFile ]
then
	printf "\nSource file not found. Please make sure the file exists!"
	exit
fi

# Verify source file is readable
if [ ! -r $sourceFile ]
then
	printf "\n Could not read $sourceFile. Permission Denied"
fi

touch $targetFile
cat $sourceFile | jq "$jqFilter" > $targetFile

printf "\nSuccess! Created "$targetFile" with filtered values"
