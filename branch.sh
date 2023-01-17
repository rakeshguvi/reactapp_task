#!/bin/bash
git checkout dev
# Get the current git branch
git_branch=$(git rev-parse --abbrev-ref HEAD)

# Check the current git branch
if [ "$git_branch" == "dev" ]; then
    docker build -t rakeshguvi/react_dev:v1 .
else [ "$git_branch" == "main" ];
    git checkout main
fi
