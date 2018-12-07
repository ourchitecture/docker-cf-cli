FROM buildpack-deps:jessie

LABEL organization="Ourchitecture"
LABEL license="MIT"
LABEL url="https://github.com/ourchitecture/docker-ibmcloud-cli"

ARG CLI_VERSION="6.34.1"

USER root

RUN apt-get update \
    && curl -SL "https://cli.run.pivotal.io/stable?release=linux64-binary&version=${CLI_VERSION}&source=github" | tar -zx
    && mv cf /usr/local/bin
    && cf --version
