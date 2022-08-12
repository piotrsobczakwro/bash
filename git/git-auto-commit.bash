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
  echo "Commiting: ${files}"
  git add "${single_file}"
  git commit -m "Changes in file: ${single_file}" 2>/dev/null
  echo "Current commit: $(git rev-parse --verify HEAD)"
  git push 2> /dev/null
done