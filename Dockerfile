FROM loverdos/ubuntu.base:latest
LABEL maintainer Christos KK Loverdos <loverdos@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

# Add java repo
RUN add-apt-repository ppa:webupd8team/java

RUN apt-get update

RUN apt-get -y install openjdk-8-jdk
RUN apt-get -y install ant ant-optional ant-contrib
RUN apt-get -y install maven maven-ant-helper maven-debian-helper maven-repo-helper
