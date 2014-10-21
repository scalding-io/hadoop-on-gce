## Deploy a CDH cluster on GCE
[![Gitter](https://badges.gitter.im/Join Chat.svg)](https://gitter.im/scalding-io/hadoop-on-gce?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

Repository for deploying a multi-node CDH 5.1.3 cluster on GCE.
Currently it uses homogeneous instances but this will change in the feature.
Instances' settings are inside `cluster.conf`. Please remember to create your own ssh key with `ssh-keygen` before running `build-cluster`.
You may choose which services you need during the cluster setup.

---

To **build** (initialize) the cluster:

    ./build-cluster

Follow the on-screen instructions to complete the installation.

---

To **stop** the cluster while keeping the disks so we can start it in the feature in seconds:

    ./stop-cluster

---

To **start** the cluster from the saved disks:

    ./start-cluster

Remember, after this you have to restart the _Cloudera Management Service_ first and then restart the cluster.

---

To **destroy** the cluster (VMs, disks, firewall rules):

    ./destroy-cluster

---
