#Imagenet Tensorflow

Single command imagenet classifier run through docker.

Use the following command::
    docker run -it -v $PWD:/root/tmp:ro atong01/imagenet-tensorflow python classify_image.py --image_file tmp/$(IMAGE)

Where $(IMAGE) is the imagename, note that your $PWD must be a parent directory of your imagefile.
