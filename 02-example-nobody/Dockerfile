FROM alpine:3.13.12

ARG NGINX_VERSION=1.18.0-r15

RUN apk add --no-cache nginx=${NGINX_VERSION} \
    && mkdir -p /run/nginx \
    && chown --changes --silent --no-dereference --recursive 65534:65534 \
    /var/lib/nginx \
    /var/log/nginx

COPY conf/nginx.conf /etc/nginx/
COPY conf/default.conf /etc/nginx/http.d/

CMD ["nginx", "-g", "daemon off;"]

USER nobody

EXPOSE 8888