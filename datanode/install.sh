#!/bin/bash
yum install -y hadoop-hdfs-datanode hadoop-client hadoop-yarn-nodemanager hadoop-mapreduce

#
# DATANODE_DIR must match the value of 'dfs.datanode.name.dir' in 'hdfs-site.xml'
DATANODE_DIR=/data/1/dfs/dn
mkdir -p ${DATANODE_DIR}
chown -R hdfs:hdfs ${DATANODE_DIR}
chmod 700 ${DATANODE_DIR}

#
# Start the service
service hadoop-hdfs-datanode start
