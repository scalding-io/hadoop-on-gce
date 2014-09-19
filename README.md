hadoop-on-gce
=============

Repository for deploying a multi-node CDH 5.1.2 cluster on GCE consisting of:

+ A dedicated `namenode` server ( 3.75GB RAM - 10 GB persistent disk ) 
+ A dedicated `resourcemanager` server ( 3.75GB - 10 GB persistent disk ) 

+ A dedicated `manager` server to run [Hue, ClouderaManager, Impala StateStore, HBase REST server, OozieServer] ( 13GB RAM - 10 GB persistent disk ) 

+ A number of `worker` instances, where each worker is running 
  - The `DataNode` , `NodeManager` services


Notes
=====

As this is not a *Production* cluster 
- HDFS Trash is not enabled
- High Availability (HA) NameNode is not enabled
