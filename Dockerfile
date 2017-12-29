FROM ubuntu:17.10

# Adds metadata to the image as a key value pair example LABEL version="1.0"
LABEL maintainer="Duccio Aiazzi <duccio.aiazzi@gmail.com>"

##Set environment variables
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

RUN apt-get update --fix-missing && apt-get install -y wget bzip2 ca-certificates \
    build-essential \
    curl \
    git-core \
    pkg-config \
    python3-dev \
    python3-pip \
    python3-setuptools \
    python3-virtualenv \
    unzip \
    && \
apt-get clean && \
rm -rf /var/lib/apt/lists/*
RUN apt-get update
RUN apt-get install -y llvm
#GDAL
RUN apt-get install -y software-properties-common python-software-properties
RUN add-apt-repository -y ppa:ubuntugis/ubuntugis-unstable
RUN apt install -y gdal-bin python-gdal python3-gdal

RUN pip3 install --upgrade pip
RUN pip3 install numpy scipy pandas geopandas psycopg2 sqlalchemy networkx osmnx  
RUN apt install --reinstall gnupg2
RUN apt install dirmngr


#Setup File System
RUN mkdir ds
ENV HOME=/ds
ENV SHELL=/bin/bash
VOLUME /ds
WORKDIR /ds

CMD ["/bin/bash"]