#!/bin/bash
yum install -y hadoop-hdfs-namenode

#
# NAMENODE_DIR must match the value of 'dfs.namenode.name.dir' in 'hdfs-site.xml'
#
NAMENODE_DIR = /data/1/dfs/nn
mkdir -p ${NAMENODE_DIR}
chown -R hdfs:hdfs ${NAMENODE_DIR}
chmod 700 ${NAMENODE_DIR}

#
# Format the namenode - datanode's data are invalidated
sudo -u hdfs hdfs namenode -format

#
# Start the service
service hadoop-hdfs-namenode start
