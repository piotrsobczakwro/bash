#/bin/bash

# Script: git-check-commit_by_sha.sh 
# Description: Checking commit by sha1 

echo "Executing script: $0"

for commit in $@
do
  git log ${commit} --oneline
done