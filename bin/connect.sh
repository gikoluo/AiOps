#!/bin/sh


LDAP_SERVER="192.168.30.102"
JENKINS_SERVER="192.168.30.200"
GITLAB_SERVER="192.168.30.12"
TARGET_SERVER="192.168.10.50"


t=`echo $1 | awk '{print toupper($0)}'`
target="${t}_SERVER"
eval target=\$$target
echo "connecting to $1 $target"
ssh -i lijidong.key "root@$target"
