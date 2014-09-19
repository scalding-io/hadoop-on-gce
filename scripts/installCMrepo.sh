#!/bin/bash
#
# Get the Cloudera Manager, Version 5 repo for CentOS 6 into /etc/yum.repos.d/
#
wget http://archive.cloudera.com/cm5/redhat/6/x86_64/cm/cloudera-manager.repo -O /etc/yum.repos.d/cloudera-manager.repo
yum update -y
