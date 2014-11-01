## Cluster Start/Stop ##

These commands delete the VMs but keep the disk in order to start new VMs from them.
The new VMs have new IPs (but same hostnames) and cloudera sometimes doesn't like that.
If that's the case —cloudera has old IP addresses— below is the fix.

To fix it stop `cloudera-scm-agent` on all machines:

    # /sbin/service cloudera-scm-agent stop

Then at the server stop `cloudera-scm-server` and `cloudera-scm-server-db`:

    # /sbin/service cloudera-scm-server stop
    # /sbin/service cloudera-scm-server-db stop

Start them again:

    # /sbin/service cloudera-scm-server-db start
    # /sbin/service cloudera-scm-server start

Start `cloudera-scm-agent` on all machines:

    # /sbin/service cloudera-scm-agent start

Also __after a reboot__ you may have to restart `cloudera-scm-agent` on all machines.
