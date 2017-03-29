#!/bin/sh

echo "构建"

echo "构建环境"

cd boss
docker build -t="boss:dev" .
cd ../

cd gateway
docker build -t="gateway:dev" .
cd ../

cd scene
docker build -t="scene:dev" .
cd ../


