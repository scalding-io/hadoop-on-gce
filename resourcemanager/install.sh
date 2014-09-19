#!/bin/bash
yum install -y hadoop-yarn-resourcemanager hadoop-client

#
# Start the service
service hadoop-yarn-resourcemanager start
