FROM registrynatura.azurecr.io/nginx:latest

MAINTAINER InfraDigital Natura "infradigital@natura.net"

ADD conf.d /etc/nginx/conf.d
ADD conf.d.api /etc/nginx/conf.d.api
ADD sites-enabled /etc/nginx/sites-enabled
ADD api-enabled /etc/nginx/api-enabled
ADD nginx.conf /etc/nginx

EXPOSE 8080 8443

RUN touch /var/run/nginx.pid; mkdir /var/nginx; chown -R nginx /var/cache/nginx /var/log/nginx /var/run/nginx.pid /var/nginx /etc/nginx/conf.d /etc/nginx/sites-enabled /etc/nginx/conf.d.api /etc/nginx/api-enabled

USER nginx

CMD ["nginx", "-g", "daemon off;"]
