FROM jupyter/r-notebook:da2c5a4d00fa

MAINTAINER Robert Gieseke <robert.gieseke@pik-potsdam.de>

USER root

RUN apt-get update && \
    apt-get install -y libboost-filesystem-dev libboost-system-dev --no-install-recommends && \
    apt-get clean

COPY . ${HOME}

USER root
RUN chown -R ${NB_UID} ${HOME}

USER ${NB_USER}

ENV BOOSTLIB /usr/local/lib
ENV BOOSTROOT /usr/include/boost

RUN make hector