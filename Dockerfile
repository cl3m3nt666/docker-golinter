FROM golang:1.7-alpine
LABEL maintainer="clement@le-corre.eu"
# 1 for false (default)
ENV SET_EXIT_STATUS 1
# 1 For false
ENV WATCHING 0

RUN apk add --update --no-cache git bash \
    && go get -u github.com/golang/lint/golint \
    && apk del git


COPY entrypoint.sh /bin/entrypoint

ENTRYPOINT entrypoint /go/src $WATCHING $SET_EXIT_STATUS
