#Add your commands, one per line. For example, you could do:
#! /bin/bash

read -r -p 'Add Folder : ' path  # prompt user for commit message
# eval cd "${APPLICATION_PATH}"
# ls
eval cd $path
# ls
# echo $path
read -r -p 'Commit message: ' desc  # prompt user for commit message
git add .                           # track all files
git commit -m "$desc"               # commit with message
git push                            # push to origin