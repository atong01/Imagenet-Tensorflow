docker run -v $PWD:/root/tmp:ro atong01/imagenet-tensorflow python classify_image.py --image_file tmp/$1 2> /dev/null
