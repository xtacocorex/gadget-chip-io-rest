#!/bin/sh

CONTAINER_IMAGE=${CONTAINER_IMAGE:-xtacocorex/gadget-chip-io-rest}

case "$1" in
    build)
        docker build --no-cache=true -t "${CONTAINER_IMAGE}" .
        ;;
    tag)
        docker tag gadget-chip-io-rest xtacocorex/gadget-chip-io-rest
        ;;
    push)
        docker push xtacocorex/gadget-chip-io-rest
        ;;
    all)
        echo "BUILDING"
        docker build --no-cache=true -t "${CONTAINER_IMAGE}" .
        echo "TAGGING"
        docker tag gadget-chip-io-rest xtacocorex/gadget-chip-io-rest
        echo "PUSHING"
        docker push xtacocorex/gadget-chip-io-rest
        ;;
    remove-tags)
        docker rmi `docker images | grep gadget-chip-io-rest | grep "<none>" | tr -s " " | cut -d " " -f 3`
        ;;
esac
