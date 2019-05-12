FROM ubuntu:16.04

RUN \
apt-get update && \
apt-get install --yes --force-yes unzip && \
apt-get install --yes --force-yes curl && \
curl https://cache.agilebits.com/dist/1P/op/pkg/v0.5.6-003/op_linux_amd64_v0.5.6-003.zip > 1password-cli.zip && \
unzip 1password-cli.zip -d .

RUN mv op /usr/local/bin
RUN cd / && mkdir shared && cd /shared
WORKDIR /shared
