FROM alpine
MAINTAINER Pookuabot <pookuabot@gmail.com>

# install stuff
RUN apk update && apk add bind-tools && apk add nodejs && \
  npm install -g cloudflare-cli

# create cfcli config
RUN echo "defaults:" > /root/.cfcli.yml && \
  echo "  token: api key goes here" >> /root/.cfcli.yml && \
  echo "  email: email@address.com" >> /root/.cfcli.yml && \
  echo "  domain: domain.com" >> /root/.cfcli.yml
