#!/bin/sh

cd $PROVISION_HOME
ansible-playbook -i hosts -vv dev-env-setup.yml
source ~/.zshenv
source ~/.zshrc
