# Set the base image to Ubuntu, use a public image
FROM continuumio/miniconda3

RUN apt-get -y update && \
    apt-get install -y graphviz

# copy only the package
COPY ./pyan /pyan/pyan
COPY ./pyan.py /pyan/pyan.py

WORKDIR pyan
