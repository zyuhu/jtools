#!/bin/bash


sshpass -p "O!dHacker5" rsync -av /root/sles12-sp1-gmc_xen.html root@147.2.207.100:/srv/www/htdocs/Performance_Comparing_Result/SLE12SP1_GMC/xen0/sles12-sp1-gmc_xen.html
sshpass -p "O!dHacker5" rsync -av /tmp/sles12-sp1-gmc/comparing_result_by_arch/xen0 root@147.2.207.100:/srv/www/htdocs/Performance_Comparing_Result/SLE12SP1_GMC

