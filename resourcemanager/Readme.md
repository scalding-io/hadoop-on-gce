All the *worker* nodes act as both *DataNode* and *NodeManager*

To add a new worker on the cluster:
-----------------------------------

  $ yum install -y git; git clone https://github.com/scalding-io/hadoop-on-gce.git

  $ sh hadoop-on-gce/scripts/installJDK.sh
  $ sh hadoop-on-gce/scripts/installCDHrepo.sh
  $ sh hadoop-on-gce/scripts/installHadoopConf.sh

  $ sh hadoop-on-gce/resourcemanager/install.sh
