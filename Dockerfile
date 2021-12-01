FROM nginx

COPY ./nginx/conf.d/default.template /etc/nginx/conf.d/default.template
COPY ./index.html /usr/share/nginx/html/index.html
COPY ./entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh
ENV APP_CONFIG="env=prod;product=test;"
ENV NGINX_PORT=80

ENTRYPOINT ["/entrypoint.sh"]
