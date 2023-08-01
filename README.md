<br />
<div align="center">
  <h3 align="center">Ansible: Deploy Docker Projects</h3>
</div>

## Features

- [Ansible-Playbook](https://docs.ansible.com/ansible/latest/user_guide/playbooks_intro.html)
- [Docker](https://www.docker.com/)
- [Docker-Compose](https://docs.docker.com/compose/)
- [Nginx](https://hub.docker.com/_/nginx/tags?page=4)
- [PHP8.0-FPM](https://hub.docker.com/_/php/tags)
- [Postgres with TimescaleDB](https://docs.timescale.com/install/latest/installation-docker/#install-self-hosted-timescaledb-from-a-pre-built-container)

## Build
- Run ```cd docker/php/src```
- Run ```cp .env.example``` ```.env```.
- Run ```docker-compose up -d --build```
- Run command ```docker exec -it php php artisan key:generate``` in remote server terminal
- Run command ```docker-exec -it php php artisan migrate``` in remote server terminal

## Launch

open browser: http://ip_address:5000
