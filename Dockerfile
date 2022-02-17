FROM alpine:3.13

ARG NGINX_VERSION=1.18.0-r15

RUN apk add --no-cache nginx=${NGINX_VERSION} \
    && mkdir -p /run/nginx

CMD ["nginx", "-g", "daemon off;"]

EXPOSE 80