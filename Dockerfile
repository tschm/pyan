# Set the base image to Ubuntu, use a public image
FROM python:3.6-alpine

MAINTAINER Thomas Schmelzer "thomas.schmelzer@gmail.com"

RUN apk add --update --no-cache graphviz ttf-freefont

# copy only the package
COPY ./pyan /pyan/pyan
COPY ./pyan.py /pyan/pyan.py

WORKDIR pyan
