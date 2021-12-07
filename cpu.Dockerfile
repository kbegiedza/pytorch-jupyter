FROM jupyter/base-notebook:hub-1.5.0

ENV DEBIAN_FRONTEND noninteract
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
    torch==1.10.0+cpu \
    torchvision==0.11.1+cpu \
    torchaudio==0.10.0+cpu \
    -f https://download.pytorch.org/whl/cpu/torch_stable.html