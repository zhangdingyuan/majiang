#!/bin/sh



docker stop boss
docker rm boss
docker run -d  --restart=always  --name boss -p 11000:11000 -p 11001:11001 boss:dev


docker stop scene
docker rm scene
docker run -d  --restart=always  --name scene -p 12000:12000  --link boss:boss scene:dev

docker stop gateway
docker rm gateway
docker run -d  --restart=always  --name gateway -p 8010:8010  --link boss:boss --link scene:scene gateway:dev

