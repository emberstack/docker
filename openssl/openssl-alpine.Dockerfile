FROM alpine

RUN apk add --update openssl && rm -rf /var/cache/apk/*