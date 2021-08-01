#!/bin/bash

set -e

execution_dir=$(pwd)
folders=$(find . -name .git)

echo $execution_dir
for f in $folders 

do
curr="${execution_dir}/${f}/../"

echo $curr

cd $curr
curr=$(pwd)
echo $curr
origin_url=$(git remote get-url origin)
cd ../
backup="${curr}.backup"
mv $curr $backup



echo $?
echo **************************
done



