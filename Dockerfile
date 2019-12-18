FROM golang:1.13.5-alpine

RUN apk add --no-cache git bash gcc \
  && go get -u github.com/cespare/reflex

COPY reflex.conf /usr/local/etc/
COPY build.sh /usr/local/bin/

WORKDIR /app

CMD ["reflex", "-d", "none", "-c", "/usr/local/etc/reflex.conf"]
