#cara menggunakan volume ke container bisa dengan cara
docker container create --name mongovolume --mount "type=volume,source=mongovolume,target=/data/db" mongo:latest

#jika ingin di publish dengan port forwarding kemudian kita melkaukna environment variable bisa dengan cara diatas dan dengan sedikit perubahan
docker container create --name mongovolume -p 27017:27017 -e MONGO_INITDB_ROOT_USERNAME=admin -e MONGO_INITDB_ROOT_PASSWORD=password --mount "type=volume,source=mongovolume,target=/data" mongo:latest
