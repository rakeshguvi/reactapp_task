#!/bin/bash
#git checkout dev
ls | grep package.json
# Get the current git branch
#git_branch=$(git rev-parse --abbrev-ref HEAD)
git_branch=$(ls | grep package.json)
# Check the current git branch
#if [ "$git_branch" == "dev" ]; then
#    docker build -t --no-cache rakeshguvi/react_dev:$(docker images | awk '($1 == "rakeshguvi/react_dev") {print $2 += .01; exit}') .
#else [ "$git_branch" == "main" ];
#      docker build -t --no-cache rakeshguvi/react_prod:$(docker images | awk '($1 == "rakeshguvi/react_prod") {print $2 += .01; exit}') .
#fi
if [ "$git_branch" == "package.json" ]; then
	docker build -t rakeshguvi/react_prod:v1 .
else
	git checkout dev
	docker build -t rakeshguvi/react_dev:v1 .
fi
