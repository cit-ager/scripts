#!/bin/bash

curl -s https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.rpm.sh | sudo bash
EXT_IP=$(curl ifconfig.co)
sudo EXTERNAL_URL="$EXT_IP" yum install -y gitlab-ce
