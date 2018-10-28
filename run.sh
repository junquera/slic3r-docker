#!/bin/bash
DOCKER=bitfab/slic3r #Name of the docker container

DPATH=/files #Path on the docker container

# Absolute path to sync with docker
LPATH=$1

# Nombre del pedido a procesar (carpeta dentro de LPATH)
FNAME=$2

# if [ $# -lt 3 ]; then
# 	echo "Usage: $0 <format> <local path> <file name>"
# 	exit -1
# else
# 	LPATH=$2 #path on the local machine
# 	FNAME=$3 #input file name
# fi
# if [ ! -d $2 ]; then
# 	echo "Error: $2 is not a directory"
# 	exit -2
# fi
# if [ ! -f $2$3 ]; then
# 	echo "Error: $2$3 is not a file"
# 	exit -3
# fi

# start the docker injecting the environment variables FTYPE and FPATH
# and sharing a directory with the host

docker run -v "$LPATH:$DPATH" $DOCKER
exit 0
