#!/bin/bash
#
# CDH 5 is supported with Oracle JDK 1.7
# Latest Certified Version is 1.7.0_55
# 
# Reference -> http://www.cloudera.com/content/cloudera-content/cloudera-docs/CDH5/latest/CDH5-Requirements-and-Supported-Versions/cdhrsv_jdk.html
#
wget --no-cookies \
     --no-check-certificate \
     --header "Cookie: oraclelicense=accept-securebackup-cookie" \
     http://download.oracle.com/otn-pub/java/jdk/7u55-b13/jdk-7u55-linux-x64.rpm

rpm -Uvh jdk-7u55-linux-x64.rpm
