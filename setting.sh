#!/bin/bash

ANSIBLE_PATH=~/Documents/10-study/git/m1-mac-ansible

## command line tools
xcode-select --install

## install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

## install ansible
brew install ansible

## clone repo
git clone -b template https://github.com/norif711/m1-mac-ansible.git ${ANSIBLE_PATH}

## ansible
cd ${ANSIBLE_PATH}
ansible-playbook site.yml
