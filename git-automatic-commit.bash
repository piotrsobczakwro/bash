#/bin/bash

# Script: git-automatic-commit.sh 

echo "Executing script: $0"

# Can be shorten as git pull 
for arguments in pull
do
  git ${arguments}
done


files=$(git status --short | awk {'print $2'})

for single_file in ${files}; 
do 
  echo "${files} to commit"
  git add "${single_file}"
  git commit -m "Changes in file: ${single_file}"
  echo "Current commit: $(git rev-parse --verify HEAD)"
  git push
done




