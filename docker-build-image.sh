#! /bin/sh

set -a
. ./.env
set +a

docker build -t $DOCKERIMAGENAME .
