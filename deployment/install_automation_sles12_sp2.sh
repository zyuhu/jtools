#!/bin/bash

zypper rr qa-ibs
zypper ar http://dist.nue.suse.com/ibs/QA:/Head/SLE-12-SP2/ qa-ibs
zypper ref

zypper -n install qa_testset_automation


zypper -n rm snapper-zypp-plugin

sed -i 's/USE_SNAPPER="yes"/#USE_SNAPPER="yes"/g' /etc/sysconfig/yast2
sed -i '/USE_SNAPPER="yes"/a USE_SNAPPER="no"' /etc/sysconfig/yast2

zypper install ca-certificates-suse

zypper rm qa_hamsta


t=`hostname`
echo "${t}" > /etc/hostname
hostname -F /etc/hostname
