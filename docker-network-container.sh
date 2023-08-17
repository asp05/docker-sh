#kita akan menggabungkan container mongo dengan mongoexpress dengan cara membuat network mongonetwork

#buat network mongonetwork
docker network create mongonetwork

#buat container mongodb
docker container create --name mongodb --network mongonetrowk -e MONGO_INITDB_ROOT_USERNAME=root -e MONGO_INITDB_ROOT_PASSWORD=root mongo:latest

#buat container mongoexpress dan koneksikan dengan mongo db di satu network ME_CONFIG_MONGODB_URL: mongodb://root(username):root(password)@mongodb(namacontainer):27017/
docker container create --name mongoexpress --network mongonetrowk -p 8081:8081 -e ME_CONFIG_MONGODB_URL: mongodb://root:root@mongodb:27017/ mongo-express:latest

#disconnect ke network
docker network disconnect mongonetwork mongodb

#connect ke network
docker network connect mongonetwork mongodb