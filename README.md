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

