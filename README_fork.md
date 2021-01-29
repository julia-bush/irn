Info specific to the changes made in this fork of the project.

#### Download VOC data
```
wget http://host.robots.ox.ac.uk/pascal/VOC/voc2012/VOCtrainval_11-May-2012.tar
tar xvf VOCtrainval_11-May-2012.tar
```

#### Run dockerised
To run dockerised you need docker, CUDA drivers and the docker CUDA toolkit. Details here: https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/user-guide.html

Adjust the `shm-size`, `--num_workers`, and `cam_batch_size` according to your hardware capabilities.
```
docker build -t irn .
docker run --rm --gpus all -v $(pwd):/irn/ --shm-size 10Gb irn python3 run_sample.py --num_workers 2 --cam_batch_size 4
```