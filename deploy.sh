image_id=$(docker images | grep 'rakeshguvi/react_' | awk '{print $1}')
if [ "$image_id" == "rakeshguvi/react_dev" ]; then  
      docker push rakeshguvi/react_dev:v1
elif [ "$image_id" == "rakeshguvi/react_prod" ]; then
        docker push rakeshguvi/react_prod:v1
else
        echo " No Image"
fi
