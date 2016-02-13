#Imagenet Tensorflow

Single command imagenet classifier run through docker.

Use the following command for the default image:
```
docker run atong01/imagenet-tensorflow python classify_image.py
```
or
```
sh run.sh
```

Or, to use your own image file:
```
docker run -v $PWD:/root/tmp:ro atong01/imagenet-tensorflow python classify_image.py --image_file tmp/$(IMAGE)
```
or
```
sh run.sh $(IMAGE)
```
Where $(IMAGE) is the imagename, note that your $PWD must be a parent directory of your imagefile.
