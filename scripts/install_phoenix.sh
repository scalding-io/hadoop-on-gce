#!/bin/bash

echo "Downloading Phoenix 4.x - HBase 0.98.1+" ; sleep 2
cd /opt; wget http://mirror.gopotato.co.uk/apache/phoenix/phoenix-4.1.0/bin/phoenix-4.1.0-bin.tar.gz
tar -zxvf phoenix-4.1.0-bin.tar.gz

echo "Checking whether any version of phoenix is installed in any of the region servers.." ; sleep 2
parallel-ssh -h regionservers.txt -i ls -la /opt/cloudera/parcels/CDH/lib/hbase/lib/ | grep phoenix

echo "SCP phoenix-*-server J-hadoop2.jar into region servers lib folder"; sleep 2
echo parallel-scp -h regionservers.txt /opt/phoenix-4.1.0-bin/hadoop2/phoenix-*-server-hadoop2.jar /opt/cloudera/parcels/CDH/lib/hbase/lib/

echo "Checking whether phoenix is installed"; sleep 2
parallel-ssh -h regionservers.txt -i updatedb
parallel-ssh -h regionservers.txt -i locate phoenix | grep CDH

echo "SCP phoenix-*-client-hadoop2 JAR to regionservers"; sleep 2
parallel-scp -h regionservers.txt /opt/phoenix-4.1.0-bin/hadoop2/phoenix-4.1.0-client-hadoop2.jar /opt/cloudera/parcels/CDH/lib/hadoop/client/

echo "Please restart HBASE through Cloudera Manager !!"; sleep 3
echo "Start phoenix shell with          :   /opt/phoenix-4.1.0-bin/hadoop2/bin/sqlline.py node-01:2181:/hbase "
echo "Check perfomance (10 M rows) with :   /opt/phoenix-4.1.0-bin/hadoop2/bin/performance.py node-01:2181:/hbase "
