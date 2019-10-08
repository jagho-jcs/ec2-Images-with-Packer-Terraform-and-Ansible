#!/bin/bash
set -ex

# Add EPEL repository

export DEBIAN_FRONTEND=noninteractive
sudo -s -- <<EOF
apt-get install -y  software-properties-common
apt-add-repository --yes --update ppa:ansible/ansible
apt-get update
apt-get install -y ansible
EOF