#!/usr/bin/env bash

INVENTORY_FILE=".ansible/hosts"
PLAYBOOK_FILE=".ansible/install-docker.yml"


echo "Run Playbook..."
ansible-playbook $PLAYBOOK_FILE -i $INVENTORY_FILE 

echo "Build Docker-Compose..."
docker-compose -H "ssh://username@srv1" -f /home/username/stack/.docker/docker-compose.yml up --build -d
docker-compose -H "ssh://username@srv1" -f /home/username/stack/.docker/docker-compose.yml ps -a

echo "Done..."