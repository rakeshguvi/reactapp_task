#!/bin/sh

# Set the registry URL and access token
REGISTRY=docker.io
TOKEN=dckr_pat_VPk80pOTPVgQaQLfmuHGc82od6U

# Log in to the registry using the token
echo $TOKEN | docker login $REGISTRY -u rakeshguvi --password-stdin

#Push the image
image_id=$(docker images | grep 'rakeshguvi/react_' | awk '{print $1}')
if [ "$image_id" == "rakeshguvi/react_dev" ]; then  
      docker push rakeshguvi/react_dev:v1
elif [ "$image_id" == "rakeshguvi/react_prod" ]; then
      docker push rakeshguvi/react_prod:v1
else
      echo " No Image"
fi
