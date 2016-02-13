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

expected output
```
running on default
-----------------------------------------------------------------------------
giant panda, panda, panda bear, coon bear, Ailuropoda melanoleuca (score = 0.89233)
indri, indris, Indri indri, Indri brevicaudatus (score = 0.00859)
lesser panda, red panda, panda, bear cat, cat bear, Ailurus fulgens (score = 0.00264)
custard apple (score = 0.00141)
earthstar (score = 0.00107)
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
