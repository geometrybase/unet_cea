FROM continuumio/anaconda
RUN apt-get update && apt-get install -y gcc
RUN mkdir /unet_cea
ADD . /unet_cea/
WORKDIR /unet_cea
RUN conda env create -f unet_cea.yaml
CMD ["/opt/conda/envs/unet_cea/bin/jupyter", "notebook", "--notebook-dir=/unet_cea", "--ip='0.0.0.0'","--port=8888", "--no-browser","--allow-root"]
