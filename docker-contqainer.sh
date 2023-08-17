# jika daemon tidak respon di linux maka cek command groups
# cara menamatkan daemon docker di linux sudo usermod -aG docker usernamelaptop


# 1. cek container list
docker container ls
# atau jika ingin cek semua container
docker container ls -a

# 2. membuat container
docker container create --name namacontainer image:version

# 3. menjalankan container
docker container start namacontainer

# 4. menghentikan container
docker container stop namacontainer

# 5. menghapus container
docker container rm namacontainer

