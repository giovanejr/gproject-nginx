FROM registrynatura.azurecr.io/nginx

MAINTAINER Giovane Japa Jr "giovanejr@gmail.com"

ADD conf.d /etc/nginx/conf.d
ADD sites-enabled /etc/nginx/sites-enabled
ADD nginx.conf /etc/nginx

EXPOSE 8080 8443

RUN touch /var/run/nginx.pid; mkdir /var/nginx; chown -R nginx /var/cache/nginx /var/log/nginx /var/run/nginx.pid /var/nginx /etc/nginx/conf.d /etc/nginx/sites-enabled 

##RUN apt-get update && apt-get install -y curl

USER nginx

CMD ["nginx", "-g", "daemon off;"]
