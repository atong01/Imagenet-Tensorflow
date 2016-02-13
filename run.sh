#!/bin/bash
if [ "$#" -eq 0 ];
then
    echo running on default
    echo -----------------------------------------------------------------------------
    IMAGE=''
    docker run -v $PWD:/root/tmp:ro atong01/imagenet-tensorflow python classify_image.py $IMAGE 2> /dev/null
fi
for var in "$@"
do
    IMAGE='--image_file tmp/'$var
    echo running on $var
    echo -----------------------------------------------------------------------------
    docker run -v $PWD:/root/tmp:ro atong01/imagenet-tensorflow python classify_image.py $IMAGE 2> /dev/null
    echo
done
