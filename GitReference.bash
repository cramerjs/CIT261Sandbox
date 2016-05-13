GIT Reference

// create new repository at current location
git init 

// checkout a repo
  // creates a working copy of a local repo
git clone /path/to/repository

// 3 TREES
  // 1. Working Directory - holds the actual files
  // 2. Index - staging area
  // 3. HEAD - points to last commit

// Working Dir --add--> Index(stage) --commit--> HEAD

// 
git status

// stage/track a file
git add <filename.txt>
  // stage/track all files
  git add *

// commit changes that have been staged with a message
git commit -m "<Type message here>"

// add multiple files with one command
git add '<*.txt>'

// check commit log
git log

// add a remote repository
git remote add origin <https://github.com/try-git/try_git.git>

// push local changes to origin repo (on GitHub)
  // default remote repo name = origin
  // default local branch name = master
  // -u tells Git to remember the parameters
git push -u origin master

// check for changes on remote repo and pull down any changes
git pull origin master

// check changes/differences since last commit/push
  // HEAD pointer = refers to most recent commit
git diff HEAD

// see the changes you just staged
git diff --staged

git diff <source_branch> <target_branch>

// unstage files
git reset <dir/file.txt>

// change files back to how they were at last commit
// replaces the changes in your working tree with the last content in HEAD
git checkout -- <target>

// create a branch
git branch <branch>

// view branches
git branch

// switch branches
git checkout <branch>

// create a new branch and switch to it
git checkout -b <branch>

// remove files from disk and stage removal of files
git rm '<*.txt>'

// checkout/switch to the master branch
git checkout master

// merge another branch into your active branch (master)
  // current branch (master) will be overwritten by this branch
git merge <branch>

// delete a branch
git branch -d <branch>

// push local changes to remote repo
git push

// push branch to remote repo (make it available to others)
  // a branch is not normally available to others
git push origin <branch>

// tagging
git tag <1.0.0/version> <first 10 characters of commit ID you want to reference>

// to get commit ID use log
git log --author=bob
git log --pretty=oneline // compressed
git log --graph --oneline --decorate --all // visual tree
git log --name-status // only which files have changed
git log --help

// drop all local changes and commits, fetch latest history from server and
// point your local master branch at it
git fetch origin
git reset --hard origin/master

// built-in git GUI
gitk

// use colorful git output
git config color.ui true

// show log on just one line per commit
git config format.pretty oneline

// use interactive adding
git add -i