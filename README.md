# rails_docker
how to use ENV variables in RAILS with Docker

Setup project:
```
export COMPOSE_FILE=app.development.docker-compose.yml

docker-compose build

docker-compose run --rm web bundle

docker-compose run --rm web rake secret

docker-compose run --rm web rake db:create

docker-compose run --rm web rake db:migrate

docker-compose run --rm web rake db:seed
```


Some basic Git commands are:
```
docker-compose up 

docker-compose ps

docker-compose up -d

docker-compose down
```

Run rails console:
```
docker-compose run --rm web bundle exec rails console
```

To have a better performance on OSX recommended to use docker-sync
Installation here: https://github.com/EugenMayer/docker-sync/wiki/1.-Installation

Start docker-sync demon

```
docker-sync start
```

Start project

```
export COMPOSE_FILE=app.development.docker-compose.yml;docker-compose-sync.yml
docker-compose up 
```

OR

```
docker-compose -f app.development.docker-compose.yml -f docker-compose-sync.yml up 
```
