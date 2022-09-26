#!/bin/bash

ANSIBLE_PATH=~/ansible

## apt update
apt update && apt upgrade -y

## 最低限必要なものとansibleのinstall
apt-get install build-essential procps curl file git ansible

## repositoryのclone
git clone https://github.com/KEY60228/ubuntu-ansible.git ${ANSIBLE_PATH}

## ansible
cd ${ANSIBLE_PATH}
ansible-playbook -i inventory/localhost localhost.yml
