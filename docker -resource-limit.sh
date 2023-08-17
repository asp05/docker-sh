#buat docker container dengan resource limit dengan nama smallnginx
docker container create --name smallnginx -p 8081:80 --memory 512m --cpus 0.5 nginx:latest