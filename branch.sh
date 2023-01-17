#!/bin/bash

# Get the current git branch
git_branch=$(git rev-parse --abbrev-ref HEAD)

# Check the current git branch
if [ "$git_branch" == "master" ]; then
    git checkout master
elif [ "$git_branch" == "develop" ]; then
    git checkout develop
else
    git checkout master
fi
