
docker container create --name mongodata --publish 27018:27017 --mount "type=bind,source=/Users/IZZAN/Downloads/belajar-docker-dasar/mongo-data,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=aaa --env MONGO_INITDB_ROOT_PASSWORD=aaa mongo:latest
