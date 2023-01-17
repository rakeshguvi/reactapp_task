#!/bin/bash
git checkout dev
# Get the current git branch
git_branch=$(git rev-parse --abbrev-ref HEAD)

# Check the current git branch
if [ "$git_branch" == "dev" ]; then
    docker build -t --no-cache rakeshguvi/react_dev:$(docker images | awk '($1 == "rakeshguvi/react_dev") {print $2 += .01; exit}') .
else [ "$git_branch" == "main" ];
    docker build -t --no-cache rakeshguvi/react_prod:$(docker images | awk '($1 == "rakeshguvi/react_prod") {print $2 += .01; exit}') .
fi
