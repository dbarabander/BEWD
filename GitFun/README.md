# Git Cheatsheat 

## Merge Tool 
One time setup download this tool (or feel free to google around and use your own!):
https://sourcegear.com/diffmerge/downloads.php

## Setup git to use diffmerge
```
git config --global merge.tool diffmerge

git config --global mergetool.diffmerge.cmd "diffmerge --merge
--result=\$MERGED \$LOCAL \$BASE \$REMOTE"

git config --global mergetool.diffmerge.trustExitCode true
```
(Stolen from [here](http://adventuresincoding.com/2010/04/how-to-setup-git-to-use-diffmerge) ) 

## When ever you have merge conflicts, you can resolve each file by using the mergetool command:

`git mergetool`

## Branches

If you'd like to conserve your own work, without overwriting the upstream changes, use branches. 

## Create a branch
`git branch my_work`

## Checkout a branch 
`git checkout my_work`

## Checkout master again 
`git checkout master`

## If you'd like to merge in changes from master
```
git checkout master
git pull
git checkout my_work 
git merge master
```

