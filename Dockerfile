#FROM opensim
FROM ubuntu:16.04

#to fix problem with /etc/localtime
ENV TZ America/New_York
ENV DEBIAN_FRONTEND noninteractive

RUN echo $TZ > /etc/timezone && apt-get update && apt-get install -y -q tzdata \
                     && rm /etc/localtime  \
                     && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
                     && dpkg-reconfigure -f noninteractive tzdata 
RUN apt-get install -y mono-complete
RUN apt-get install -y vim x11-apps
COPY src  /opt/radegast
WORKDIR /opt/radegast
