#pada kali ini kita akan menggunakan contoh nginx:latest sebagai contoh port expose/fordwarding
#install dlu image nginx:latest
docker pull nginx:latest

#cek image list
docker image ls

#buat container dengan nama contohnginx dari image nginx:latest dari port 80 ke 8080
docker container create --name contohnginx -p 8080:80 nginx:latest