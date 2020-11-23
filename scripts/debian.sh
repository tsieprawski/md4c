#!/bin/sh -x
rm -f *.deb

docker build -t mgdkn/md4c:debian -f scripts/Dockerfile.debian . || exit 1
docker create --rm --name tmp-md4c mgdkn/md4c:debian || exit 1
docker cp tmp-md4c:/md4c.deb . || exit 1
docker cp tmp-md4c:/md4c-dev.deb . || exit 1
docker rm tmp-md4c

ls *.deb
