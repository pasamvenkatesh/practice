#!/bin/bash
cd /task2
terraform fmt
terraform validate
terraform plan
terraform apply --auto-approve
echo "**********************************************************************"
echo "move the state file from local to GS bucket & new VM instance created"
echo "**********************************************************************"
gsutil cp /task/* gs://new12344
echo "****************************************************************************"
echo "entire task folder having files are forwarded from local to GS bucket"
echo "****************************************************************************"
repo_name=$1
cd /2.task
curl -u '[pasamvenkatesh]:[Mysaiah@143]' https://api.github.com/user/repos -d "{\"name\":\"$repo_name\"}"
git init
git add .
git commit -m "initial commit"
git remote add origin "https://github.com/pasamvenkatesh/$repo_name.git"
git push -u origin master
