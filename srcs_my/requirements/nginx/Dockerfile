FROM alpine:3.16

EXPOSE 443
RUN apk update && \
    apk add nginx openssl curl iputils && \
    mkdir -p /etc/ssl

COPY ./conf/default.conf /etc/nginx/http.d/default.conf
COPY ./tools/nginx.sh /tmp/nginx.sh

CMD ["/bin/sh", "/tmp/nginx.sh"]
