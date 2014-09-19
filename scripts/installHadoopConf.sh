#!/bin/bash

# Create the new hadoop conf folder
mkdir -p /etc/hadoop/conf.my_cluster
alternatives --install /etc/hadoop/conf hadoop-conf /etc/hadoop/conf.my_cluster 50
alternatives --set hadoop-conf /etc/hadoop/conf.my_cluster

# Get hadoop conf from github repo
yum install -y git
git clone https://github.com/scalding-io/hadoop-on-gce.git
cp hadoop-on-gce/hadoop-conf/* /etc/hadoop/conf.my_cluster/
