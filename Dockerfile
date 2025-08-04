FROM nginx:alpine

WORKDIR /app
COPY /sound /app

RUN rm -rf /usr/share/nginx/html \
    && ln -s /app /usr/share/nginx/html

RUN sed -i -e '/location.*\/.*{/a autoindex on\;' /etc/nginx/conf.d/default.conf

EXPOSE 80