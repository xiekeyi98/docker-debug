FROM alpine

ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
RUN apk add --update ca-certificates openssl && update-ca-certificates
RUN apk add --update curl tcpdump iftop strace
RUN apk add --update bash && rm -rf /var/cache/apk/*

ENTRYPOINT [ "bash","-c","--","while true; do sleep 30 ; done;"]

