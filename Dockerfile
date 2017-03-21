FROM centos
MAINTAINER Pookuabot <pookuabot@gmail.com>

# update and install epel-release
RUN yum update -y && yum install -y epel-release

# install a few packages
RUN yum install -y git && yum install -y sudo && yum install -y nodejs && \
  yum install -y vim && yum install -y bind-utils && npm install -g cloudflare-cli

# create cfcli config
RUN echo "defaults:" > /root/.cfcli.yml && \
  echo "  token: api key goes here" >> /root/.cfcli.yml && \
  echo "  email: email@address.com" >> /root/.cfcli.yml && \
  echo "  domain: domain.com" >> /root/.cfcli.yml
