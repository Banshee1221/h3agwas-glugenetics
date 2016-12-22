FROM ubuntu:latest

MAINTAINER Eugene de Beste

RUN apt-get update -y && \
    apt-get install -y  \
        build-essential \
        wget \
        python \
        libblas-dev \
        liblapack-dev \
        libatlas-dev \ 
        python-setuptools \ 
        cython \ 
        python-pip \ 
        sqlite3 \ 
        sqlite \ 
        libsqlite3-dev \ 
        libsqlite-dev \ 
        python-numpy \ 
        python-scipy \ 
        zlib1g-dev \
        libsuitesparse-dev

RUN pip install --upgrade pip
RUN pip install numexpr \
    tables \ 
    pysqlite \ 
    ply \ 
    h5py \ 
    pysam \ 
    biopython \ 
    matplotlib \ 
    xlrd \ 
    xlwt \
    toolz \
    six \
    fastcache \
    multiprocess \
    ecos \
    scs \
    CVXcanon \
    cvxopt

RUN wget https://github.com/bioinformed/glu-genetics/archive/1.0b1.tar.gz
RUN tar zxf 1.0b1.tar.gz
RUN cd glu-genetics-1.0b1 && \
    python setup.py install
