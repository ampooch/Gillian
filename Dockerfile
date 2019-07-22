# Base Image
FROM ubuntu

# Maintainer
MAINTAINER A M Pooch

# Create my image
RUN apt-get install git && \
git clone https://github.com/ampooch/Gillian.git
