FROM nginx:1.13.7-alpine

COPY var/www/app/ /var/www/app/
COPY etc/nginx/nginx.conf /etc/nginx/nginx.conf
COPY etc/nginx/ssl/ /etc/nginx/ssl/
COPY etc/nginx/sites-available/ /etc/nginx/sites-available/

RUN mkdir -p /etc/nginx/sites-enabled/ && \
    ln -s /etc/nginx/sites-available/app.nattawut.io.conf /etc/nginx/sites-enabled/app.nattawut.io.conf

EXPOSE 80 443
