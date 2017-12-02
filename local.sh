# sudo -s "echo '127.0.0.1       nattawut.io app.nattawut.io' >> /etc/hosts"
docker rm -f app-nginx
docker rmi app-nginx:v1.0.0
docker build -t app-nginx:v1.0.0 .
docker run --name=app-nginx -p 80:80 -p 443:443 -d app-nginx:v1.0.0