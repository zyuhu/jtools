#!/bin/bash

zypper rr qa-ibs
zypper ar http://dist.nue.suse.com/ibs/QA:/Head/SLE-12-SP2/ qa-ibs
zypper ar http://147.2.207.1/dist/install/SLP/SLE-12-SP2-SDK-LATEST/x86_64/DVD1/ qa-sdk
zypper ref

zypper -n install qa_testset_automation
zypper -n install git


zypper -n rm snapper-zypp-plugin

sed -i 's/USE_SNAPPER="yes"/#USE_SNAPPER="yes"/g' /etc/sysconfig/yast2
sed -i '/USE_SNAPPER="yes"/a USE_SNAPPER="no"' /etc/sysconfig/yast2

zypper install ca-certificates-suse

zypper rm qa_hamsta


hostname > /etc/hostname

ntp_add_cmd="yast2 ntp-client add server="
ntp_enable_cmd="yast2 ntp-client enable"
ntp_servers=("ntp1.suse.de", "ntp2.suse.de", "ntp3.suse.de")

for srv in ${ntp_servers[@]};do
  eval ${ntp_add_cmd}${srv}
done

eval ${ntp_enable_cmd}

