<br />
<div align="center">
  <h3 align="center">Ansible: Docker, Laravel, PgSQL and Nginx Projects</h3>

## Features

- [Ansible-Playbook](https://docs.ansible.com/ansible/latest/user_guide/playbooks_intro.html)
- [Docker](https://www.docker.com/)
- [Docker-Compose](https://docs.docker.com/compose/)
- [Nginx](https://hub.docker.com/_/nginx/tags?page=4)
- [PHP8.0-FPM](https://hub.docker.com/_/php/tags)
- [Postgres with TimescaleDB](https://docs.timescale.com/install/latest/installation-docker/#install-self-hosted-timescaledb-from-a-pre-built-container)

## Build

- Add remote server add to [inventory](https://github.com/danielcristho/laravel-pgsql-nginx/blob/master/ansible/hosts)
- Run command ``` ./apprunner.sh ```
- Run command ```docker exec -it php php artisan key:generate``` in remote server terminal
- Run command ```docker-exec -it php php artisan migrate```

## Launch

open browser: http://ip_address:5000 