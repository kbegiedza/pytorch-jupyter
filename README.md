- [How to run?](#how-to-run)
  - [CPU](#cpu)
  - [CUDA](#cuda)

# How to run?

## CPU
1. Run: `docker run -p 8888:8888 -v $(pwd):/home/jovyan/ ghcr.io/kbegiedza/pytorch-jupyter:1.10-cpu`
2. Navigate to url showed in terminal/shell or copy token from output and navigate to [localhost:8888](http://localhost:8888) in browser

## CUDA
0. Install [nvidia-docker2](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html)
1. Run: `docker run --gpus all -p 8888:8888 -v $(pwd):/home/jovyan/ ghcr.io/kbegiedza/pytorch-jupyter:1.10-cuda`
2. Navigate to url showed in terminal/shell or copy token from output and navigate to [localhost:8888](http://localhost:8888) in browser
