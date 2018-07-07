FROM hrak/nginx-ldap

WORKDIR /etc/nginx

RUN apk add --no-cache openssl &&\
    openssl genrsa -des3 -passout pass:x -out server.pass.key 2048 &&\
    openssl rsa -passin pass:x -in server.pass.key -out server.key &&\
    rm server.pass.key &&\
    openssl req -new -key server.key -out server.csr -subj "/C=JP/ST=Tokyo/L=Shibuya/O=ZOE, Inc./OU=Development/CN=default" &&\
    openssl x509 -req -sha256 -days 3650 -in server.csr -signkey server.key -out server.crt && \
    openssl dhparam -out dhparam.pem 2048

COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./nginx/conf.d /etc/nginx/conf.d
COPY ./nginx/html /usr/share/nginx/html
