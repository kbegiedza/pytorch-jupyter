FROM jupyter/base-notebook:hub-1.5.0

ENV DEBIAN_FRONTEND noninteract

ENV NVIDIA_VISIBLE_DEVICES all
ENV NVIDIA_DRIVER_CAPABILITIES compute,utility
ENV LD_LIBRARY_PATH /usr/local/nvidia/lib:/usr/local/nvidia/lib64ive
ENV JUPYTER_ENABLE_LAB yes

USER root

RUN apt update -q && apt install -yq --no-install-recommends \
    zip \
    gcc \
    unzip \
    libc-dev \
    python3-opencv \
    build-essential \
    apt-transport-https

USER $NB_USER

RUN python3 -m pip install --quiet --no-cache-dir \
    pycocotools \
    opencv-python \
    ipywidgets==7.6.3 \
    torch==1.10.0+cu113 \
    torchvision==0.11.1+cu113 \
    torchaudio==0.10.0+cu113 \
    -f https://download.pytorch.org/whl/cu113/torch_stable.html