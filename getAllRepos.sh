#!/bin/bash
#Script to get all repositories under a user from bitbucket
#Usage: getAllRepos.sh [username] [password]
 
curl -u ${1}:${2} https://api.bitbucket.org/1.0/user/repositories > repoinfo
 
for repo_name in `cat repoinfo | jq '.[] | "git@bitbucket.org:"+.owner +"/"+"\(.name)"+".git"' | sed 's/"//g'`
do
    echo "Cloning " $repo_name
    git clone $repo_name
    echo "--------------------------------------------"
done
