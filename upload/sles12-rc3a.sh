#!/bin/bash


sshpass -p "O!dHacker5" rsync -av /root/sles12-sp1-rc3a_xen.html root@147.2.207.100:/srv/www/htdocs/Performance_Comparing_Result/SLE12SP1_RC3A/xen0/sles12-sp1-rc3a_xen.html
sshpass -p "O!dHacker5" rsync -av /tmp/comparing_result_by_arch/xen root@147.2.207.100:/srv/www/htdocs/Performance_Comparing_Result/SLE12SP1_RC3A/xen0

