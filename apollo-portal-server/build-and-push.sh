#!/bin/sh

# apollo version
VERSION=v1.0.0

APP_NAME=apollo-portal-server

DOCKER_REGISTRY=docker-server.com

HARBOR_PROJECT=library

HARBOR_USER=admin

HARBOR_PASSWORD=Harbor12345

MYIMAGE=$APP_NAME:$VERSION
# =========================build images========================================
docker build -t $APP_NAME:$VERSION .

# ==========================push image to registry========================
# uncomment if you need push
docker login ${DOCKER_REGISTRY} -u $HARBOR_USER -p $HARBOR_PASSWORD
echo "INFO：Starting push image of ${MYIMAGE} to docker registry ${DOCKER_REGISTRY}"
docker tag ${MYIMAGE}  ${DOCKER_REGISTRY}/$HARBOR_PROJECT/${MYIMAGE}
docker push ${DOCKER_REGISTRY}/$HARBOR_PROJECT/${MYIMAGE}