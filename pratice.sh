#!/bin/bash
repo_name=$1
cd /2.task
curl -u '[pasamvenkatesh]:[Mysaiah@143]' https://api.github.com/user/repos -d "{\"name\":\"$repo_name\"}"
git init
git add .
git commit -m "initial commit"
git remote add origin "https://github.com/pasamvenkatesh/$repo_name.git"
git push -u origin master
