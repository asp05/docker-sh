#cara merestore dari data backup tar.gz ke volume mongorestore adalah sebagai berikut
#buat volume untuk restore data
docker volume create mongorestore

#restore data dari backup ke volume mongorestore
docker run --rm --name ubunturestore --mount "type=bind,source=/home/andi/Documents/belajar-docker/backup,target=/backup" --mount "type=volume,source=mongorestore,target=/data" ubuntu:latest bash -c "cd /data && tar -xvf /backup/backup.tar.gz --strip 1"