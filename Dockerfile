ARG VERSION=alpine

FROM nginx:$VERSION

ENV TIMEZONE Europe/Paris

RUN	apk update && apk upgrade

EXPOSE 80

ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
