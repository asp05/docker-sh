#part environment variables
#kita akan menggunakannya dengan contoh image mongo:latest
docker pull mongo:latest

#cek image list
docker image ls

#buat container dengan nama contohmongo dari image mongo:latest dari port 27017 ke 27017 lalu di publish
#jangan lupa set environment variables
docker container create --name contohmongo -p 27017:27017 -e MONGO_INITDB_ROOT_USERNAME=admin -e MONGO_INITDB_ROOT_PASSWORD=password mongo:latest