FROM segment/chamber:2 AS chamber

# Build the app.
FROM ubuntu:latest

COPY --from=chamber /chamber /bin/chamber
RUN apt-get update
RUN apt-get install apt-transport-https ca-certificates curl software-properties-common -y
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
RUN apt-key fingerprint 0EBFCD88
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
RUN add-apt-repository ppa:git-core/ppa
RUN apt-get update
RUN apt-get install git-lfs -y
RUN git lfs install
RUN apt-get install docker-ce -y
RUN apt-get install make -y
