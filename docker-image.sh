# jika daemon tidak respon di linux maka cek command groups
# cara menamatkan daemon docker di linux sudo usermod -aG docker usernamelaptop

# 1. cek image list
docker image ls

# 2. install image
docker pull image:version
#contoh
# docker pull nginx:latest

# 3. remove image
docker image rm image:version
#contoh
# docker image rm nginx:latest