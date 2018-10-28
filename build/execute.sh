#!/bin/bash

#Use environments variable FTYPE and FPATH
#FPATH=directory where files are stored and readed
#FTYPE=output file format
#FNAME=name of the file
#
# if [ -d $FPATH ] && [ -w $FPATH ]; then
#         if [ -f $FPATH$FNAME ] && [ -r $FPATH$FNAME ]; then
#                 cd $FPATH
#
#         else
#                 echo "Invalid permissions for $FPATH$FNAME"
#         fi
# else
#         echo "Error, $FPATH dir. does not exists or cant be accessed"
# fi

slic3r --merge $(ls /files/$FNAME/*.stl) --output /files/$FNAME/result.gcode
