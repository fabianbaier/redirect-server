FROM nginx
MAINTAINER Fabian Baier <me@fabianbaier.io>
RUN mkdir -p /etc/nginx/ssl
RUN rm -f /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/example_ssl.conf /etc/nginx/nginx.conf
COPY nginx.conf /etc/nginx/nginx.conf
COPY certs/ /etc/nginx/ssl/
COPY sites/ /etc/nginx/conf.d/
EXPOSE 80 443
