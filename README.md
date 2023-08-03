<br />
<div align="center">
  <h3 align="center">Docker: Laravel, PgSQL & Nginx</h3>
</div>

## Features

- [Docker](https://www.docker.com/)
- [Docker-Compose](https://docs.docker.com/compose/)
- [Nginx](https://hub.docker.com/_/nginx/tags?page=4)
- [PHP8.0-FPM](https://hub.docker.com/_/php/tags)
- [Postgres with TimescaleDB](https://www.postgresql.org/)

## Build
- Run ```cd docker/php/src```
- Run ```cp .env.example``` ```.env```.
- Run ```docker-compose up -d --build```
- Run command ```docker exec -it php php artisan key:generate``` in terminal
- Run command ```docker-exec -it php php artisan migrate``` in terminal

## Launch

open browser: http://ip_address:5000