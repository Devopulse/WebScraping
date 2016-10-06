#!/usr/bin/env bash

[root@rsharma-centos7 tmp]# cat test.txt | grep QPS
Total QPS: 24049
[root@rsharma-centos7 tmp]#
[root@rsharma-centos7 tmp]#
[root@rsharma-centos7 tmp]# cat test.txt | grep QPS | awk -F":" '{print $2}'
 24049
[root@rsharma-centos7 tmp]# cat test.txt | grep QPS | awk -F": " '{print $2}'
24049
[root@rsharma-centos7 tmp]#
[root@rsharma-centos7 tmp]#
[root@rsharma-centos7 tmp]# cat test.txt | grep BPS | awk -F": " '{print $2}'
7459 (BPS
[root@rsharma-centos7 tmp]# cat test.txt | grep BPS | awk -F": " '{print $3}'
124.3167)
[root@rsharma-centos7 tmp]# cat test.txt | grep BPS | awk -F": " '{print $3}' |awk -F ")" '{print $1}'
124.3167
[root@rsharma-centos7 tmp]# dog post metric seconds.change `cat test.txt | grep QPS | awk -F":" '{print $2}'`