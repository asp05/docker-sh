#cara untuk membersihkan /menghapus secara otomatis file yang sudah tidak digunakan lagi yaitu dengan cara prune
#menghapus image
docker image prune

#menghapus container
docker container prune

#menghapus volume
docker volume prune

#menghapus network
docker network prune

#menghapus semua
docker system prune