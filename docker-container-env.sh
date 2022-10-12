
docker image pull mongo:latest

docker container create --name contohmongo --publish 27017:27017 --env MONGO_INITDB_ROOT_USERNAME=aaa --env MONGO_INITDB_ROOT_PASSWORD=aaa mongo:latest
