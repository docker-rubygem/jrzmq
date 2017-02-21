FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.0.3.2

RUN gem install jrzmq --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["jrzmq"]
CMD ["--help"]
