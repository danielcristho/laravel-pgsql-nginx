#!/usr/bin/env bash

INVENTORY_FILE="ansible/hosts"
PLAYBOOK_FILE_1="ansible/install-docker.yml"
PLAYBOOK_FILE_2="ansible/deploy-stack.yml"

echo "Run Playbook..."
ansible-playbook $PLAYBOOK_FILE_1 -i $INVENTORY_FILE 

echo "Build Docker-Compose..."
ansible-playbook $PLAYBOOK_FILE_2 -i $INVENTORY_FILE 

echo "Done..."
