#!/bin/bash

# Get the current git branch
git_branch=$(git rev-parse --abbrev-ref HEAD)

# Check the current git branch
if [ "$git_branch" == "dev" ]; then
    git checkout dev
else [ "$git_branch" == "main" ];
    git checkout main
fi
