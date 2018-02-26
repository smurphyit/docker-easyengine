# EasyEngine

FROM ubuntu:16.04
LABEL "Maintainer"="Scott Murphy <smurphy.it@gmail.com>"

ENV DEBIAN_FRONTEND noninteractive
ENV TERM=xterm

RUN apt-get update -q
RUN apt-get install -y git wget apt-utils net-tools ca-certificates libidn11 libssl1.0.0 openssl
#RUN git config --global user.name <your.username.here>
#RUN git config --global user.email <your.email.address.here>
RUN wget -qO ee rt.cx/ee && bash ee
RUN ee site create example.com
EXPOSE 80
WORKDIR /etc/ee

CMD service nginx start && tail -f /dev/null 
