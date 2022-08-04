#!/usr/bin/env bash

INVENTORY_FILE=".ansible/hosts"
PLAYBOOK_FILE=".ansible/install-docker.yml"


echo "Run Playbook..."
ansible-playbook $PLAYBOOK_FILE -i $INVENTORY_FILE 