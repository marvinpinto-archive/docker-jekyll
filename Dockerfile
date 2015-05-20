# vim: set filetype=dockerfile :
FROM ubuntu:14.04

RUN apt-get update \
  && apt-get install -y software-properties-common \
  && apt-add-repository -y ppa:brightbox/ruby-ng \
  && apt-add-repository -y ppa:git-core/ppa \
  && apt-get update \
  && apt-get install -y \
    git \
    aspell \
    ruby2.2 \
    ruby2.2-dev \
    zlib1g-dev \
    libcurl4-openssl-dev \
    build-essential \
  && gem install --no-document bundler \
  && apt-get clean autoclean \
  && apt-get autoremove -y --purge \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
  && rm -rf /var/lib/{apt,dpkg,cache,log}/
