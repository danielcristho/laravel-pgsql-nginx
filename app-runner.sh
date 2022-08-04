#!/usr/bin/env bash

INVENTORY_FILE=".ansible/hosts"
PLAYBOOK_FILE=".ansible/install-docker.yml"
EXTRA_ARGS="--syntax-check"


echo "Run Playbook..."
ansible-playbook $EXTRA_ARGS $PLAYBOOK_FILE
ansible-playbook $PLAYBOOK_FILE -i $INVENTORY_FILE 