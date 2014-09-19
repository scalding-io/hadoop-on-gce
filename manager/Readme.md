There is one *manager* role that runs:

+ Cloudera Manager 
+ HBase Server
+ Impala Server ...

To set up the manager:
----------------------

  $ yum install -y git; git clone https://github.com/scalding-io/hadoop-on-gce.git

  $ sh hadoop-on-gce/scripts/installJDK.sh
  $ sh hadoop-on-gce/scripts/installCDHrepo.sh
  $ sh hadoop-on-gce/scripts/installHadoopConf.sh

  $ sh hadoop-on-gce/datanode/install.sh

TODO -> my.cnf
