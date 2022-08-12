#/bin/bash

# Script: git-check-commit_by_sha.sh 

echo "Executing script: $0"

for commit in $@
do
  git log ${commit} --oneline
done