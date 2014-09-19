#!/bin/bash
#
# Based on the embedded PostGre database
#

yum install -y cloudera-manager-daemons cloudera-manager-server cloudera-manager-server-db-2

yum install -y mysql-server.x86_64
yes | cp hadoop-on-gce/manager/my.cnf /etc/my.cnf

echo "Postgre embedded server requires SELinux to be disabled"
cat /etc/selinux/config && setenforce 0 && sestatus

service cloudera-scm-server-db start
service cloudera-scm-server start

echo "Open up the port tcp:7180" 
echo "http://146.148.126.124:7180/cmf/express-wizard/wizard#"
