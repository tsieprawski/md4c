#!/bin/sh -x
rm -f *.apk

docker build -t mgdkn/md4c -f scripts/Dockerfile . || exit 1
docker create --rm --name tmp-md4c mgdkn/md4c || exit 1
docker cp tmp-md4c:/md4c.apk . || exit 1
docker cp tmp-md4c:/md4c-dev.apk . || exit 1
docker rm tmp-md4c

ls *.apk
