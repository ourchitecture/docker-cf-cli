FROM buildpack-deps:stretch

LABEL organization="Ourchitecture"
LABEL license="MIT"
LABEL url="https://github.com/ourchitecture/docker-cf-cli"

ARG CLI_VERSION="6.46.0"

USER root

RUN apt-get update \
    && curl -SL "https://cli.run.pivotal.io/stable?release=linux64-binary&version=${CLI_VERSION}&source=github" | tar -zx \
    && mv cf /usr/local/bin \
    && cf --version

CMD ["cf"]
