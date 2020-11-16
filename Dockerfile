FROM continuumio/anaconda
ADD unet_cea.yaml /
RUN mkdir /unet_cea
RUN conda env create -f unet_cea.yaml

