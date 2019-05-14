FROM ubuntu:latest

RUN apt-get update
RUN apt-get install apt-transport-https ca-certificates curl software-properties-common -y
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
RUN apt-key fingerprint 0EBFCD88
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
RUN add-apt-repository ppa:git-core/ppa
RUN apt-get update
RUN apt-get install git-lfs -y
RUN git lfs install
RUN curl -L -o /usr/local/bin/aws-vault https://github.com/99designs/aws-vault/releases/download/v4.5.1/aws-vault-linux-amd64
RUN chmod 755 /usr/local/bin/aws-vault
RUN apt-get install docker-ce -y
RUN apt-get install make -y
