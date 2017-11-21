#!/bin/zsh

export PATH=$PATH:/usr/local/bin

cd /Users/hiroshi/.provisioning
ansible-playbook -i hosts -vv dev-env-setup.yml
source ~/.zshenv
source ~/.zshrc
