openssl req -x509 -nodes \
        -days 365 \
        -newkey rsa:2048 \
        -keyout /etc/nginx/ssl/jshin.42.fr.key \
        -out /etc/nginx/ssl/jshin.42.fr.crt \
        -subj "/C=KR/ST=Seoul/O=42Seoul/OU=jshin/CN=inception/"
    
chown nginx /etc/nginx/ssl/jshin.42.fr.crt
chown nginx /etc/nginx/ssl/jshin.42.fr.key
