#!/bin/bash
DOCK_DIR=$(pwd)/build #Path of the Dockerfile
DOCK_NAME=bitfab/slic3r #Name of the created docker container

docker build -f $DOCK_DIR/Dockerfile -t $DOCK_NAME $DOCK_DIR
