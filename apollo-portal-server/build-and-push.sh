#!/bin/sh

# apollo version
VERSION=v1.2.1

APP_NAME=apollo-portal-server

DOCKER_REGISTRY=registry.cn-shanghai.aliyuncs.com

HARBOR_PROJECT=shalousun

HARBOR_USER=admin

HARBOR_PASSWORD=Harbor12345

MYIMAGE=$APP_NAME:$VERSION
# =========================build images========================================
docker build -t $APP_NAME:$VERSION .

# ==========================push image to registry========================
# uncomment if you need push
sudo docker login --username=1666157232@qq.com registry.cn-shanghai.aliyuncs.com
echo "INFO：Starting push image of ${MYIMAGE} to docker registry ${DOCKER_REGISTRY}"
docker tag ${MYIMAGE}  ${DOCKER_REGISTRY}/$HARBOR_PROJECT/${MYIMAGE}
docker push ${DOCKER_REGISTRY}/$HARBOR_PROJECT/${MYIMAGE}
