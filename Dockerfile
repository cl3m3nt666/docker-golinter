FROM golang:1.7-alpine
MAINTAINER Clement LE CORRE <clement@le-corre.eu>

RUN apk add --update --no-cache git \
    && go get -u github.com/golang/lint/golint \
    && apk del git

ENTRYPOINT ["golint"]
CMD ["-h"]
