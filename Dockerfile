# vim: set filetype=dockerfile :
FROM ubuntu:14.04

RUN apt-get update \
  && apt-get install -y software-properties-common \
  && apt-add-repository -y ppa:brightbox/ruby-ng \
  && apt-get update \
  && apt-get install -y aspell ruby2.2 ruby2.2-dev \
  && gem install --no-document bundler \
  && apt-get install -y build-essential \
  && apt-get clean autoclean \
  && apt-get autoremove -y --purge \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
  && rm -rf /var/lib/{apt,dpkg,cache,log}/
