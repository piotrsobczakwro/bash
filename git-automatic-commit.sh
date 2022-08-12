#/bin/bash

# Script: git-automatic-commit.sh

echo "Executing script: $0"

for arguments in pull
do
  git ${arguments}
done


files=$(git status --short | awk {'print $2'})

for i in ${files}; 
do 
  git add "${i}"
  git commit -m "Changes in file: ${i}"
  echo "Current commit: $(git rev-parse --verify HEAD)"
  git push
done




