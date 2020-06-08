#!/bin/bash
###########
# Deploy script build_script.sh
# execute: ./deploy_script.sh image_name:TAG CONTAINER_NAME
###########


if [ $# -ne 2 ]; then
        echo '[ERROR] Add all arguments[image_name:tag container_name]'
        exit 1
else
        USERNAME="jaca1119"
        IMAGE=$1
        CONTAINER_NAME=$2

        sudo docker pull "$USERNAME/$IMAGE"
        sudo docker tag "$USERNAME/$IMAGE" "$CONTAINER_NAME":working
        sudo docker-compose -f ./microservices/docker-compose.yml up -d
fi

echo 'Done'

