FROM ubuntu:bionic

LABEL \
    authors="olavur@fargen.fo" \
    description="Ubuntu image for bioinformatics on the FarGen cluster." \
    maintainer="Ólavur Mortensen <olavur@fargen.fo>"

# Install some utilities.
RUN apt update -yqq && \
    apt install -yqq \
    python \
    wget \
    curl \
    unzip \
    tmux \
    vim \
    nano \
    less \
    git \
    r-base

# TODO: install RStudio server.
## Install RStudio Server.
#RUN apt install -yqq gdebi-core && \
#    wget https://download2.rstudio.org/server/bionic/amd64/rstudio-server-1.2.5001-amd64.deb && \
#    gdebi rstudio-server-1.2.5001-amd64.deb

# TODO: install miniconda
## Install Miniconda3.
## Recipe from https://hub.docker.com/r/continuumio/miniconda3/dockerfile
## TODO: is it a good idea to "conda activate base"? 
#RUN wget --quiet "https://repo.anaconda.com/miniconda/Miniconda3-4.5.10-Linux-x86_64.sh" -O ~/miniconda.sh && \
#    /bin/bash ~/miniconda.sh -b -p /opt/conda && \
#    rm ~/miniconda.sh && \
#    /opt/conda/bin/conda clean -tipsy && \
#    ln -s /opt/conda/etc/profile.d/conda.sh /etc/profile.d/conda.sh && \
#    echo ". /opt/conda/etc/profile.d/conda.sh" >> ~/.bashrc && \
#    echo "conda activate base" >> ~/.bashrc
#
#COPY environment.yml /
#RUN conda env create -f /environment.yml && conda clean -a
#ENV PATH /opt/conda/envs/fargen-base/bin:$PATH
