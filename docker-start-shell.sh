#! /bin/sh

set -a
. ./.env
set +a

# Fix for running GUI programs from within the docker container:
#
# Make xorg disable access control, i.e. let any x client connect to our
# server.
xhost +

docker start $DOCKERCONTAINERSHELL --attach --interactive
