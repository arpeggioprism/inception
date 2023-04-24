FROM alpine:3.16

EXPOSE 443
RUN apk update && \
    apk upgrade && \
    apk add nginx openssl curl iputils && \
	mkdir -p /etc/ssl

COPY config/default.conf /etc/nginx/http.d/default.conf
COPY script/nginx.sh /tmp/nginx.sh

CMD ["/bin/sh", "/tmp/nginx.sh"]
