#!/bin/bash

set -u

sudo apt install -y \
         ansible

ansible-playbook /home/mc/dev_env_bootstrap/deploy.yml