#backup volume ada dengan dua cara,yaitu manual atau sedikit otomatis
#jika manual kita bisa membuat 2 buah mounting dengan bindmount dan juga volume kemudian archive dengan tar dari volume dan backup ke bindmount

#kita buat container terlebih dahulu
docker container create --name nginxbackup --mount "type=bind,source=/home/andi/Documents/belajar-docker/backup,target=/backup" --mount "type=volume,source=mongovolume,target=/data" nginx:latest

#jalankan container
docker container start nginxbackup

#exec container
docker container exec -it nginxbackup /bin/bash

#archive semua data didalam dir data kemudian pindahkan ke dir backup
tar -cvf /backup/backup.tar /data

#buat otomatis backup dengan cara membuat container langsung di hapus sekali dijalankan
docker container run --rm --name ubuntu --mount "type=bind,source=/home/andi/Documents/belajar-docker/backup,target=/backup" --mount "type=volume,source=mongovolume,target=/data" ubuntu:latest tar -cvf /backup/backuplagi.tar.gz /data