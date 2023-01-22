#!/bin/bash
#git checkout dev
#ls | grep package.json
# Get the current git branch
git_branch=$(git rev-parse --abbrev-ref HEAD)
#git_branch=$(ls | grep package.json)
# Check the current git branch
if [ "$git_branch" == "dev" ]; then
	docker build -t rakeshguvi/react_dev:v1 .
else
	docker build -t rakeshguvi/react_prod:v1 .
fi
#if [ "$git_branch" == "package.json" ]; then
#	docker build -t rakeshguvi/react_prod:v1 .
#else
#	git checkout dev
#	docker build -t rakeshguvi/react_dev:v1 .
#fi
