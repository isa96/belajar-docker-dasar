
docker volume create mongorestore

docker container run --rm --name ubunturestore --mount "type=bind,source=/Users/IZZAN/Downloads/belajar-docker-dasar/backup,destination=/backup" --mount "type=volume,source=mongorestore,destination=/data" ubuntu:latest bash -c "cd /data && tar xvf /backup/backup.tar.gz --strip 1"

docker container create --name mongorestore --publish 27020:27017 --mount "type=volume,source=mongorestore,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=aaa --env MONGO_INITDB_ROOT_PASSWORD=aaa mongo:latest

docker container start mongorestore
