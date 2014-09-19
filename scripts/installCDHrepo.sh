#!/bin/bash
#
# Get the cdh5 repo into /etc/yum.repos.d/
#
wget http://archive.cloudera.com/cdh5/redhat/6/x86_64/cdh/cloudera-cdh5.repo -O /etc/yum.repos.d/cloudera-cdh5.repo
yum update -y
