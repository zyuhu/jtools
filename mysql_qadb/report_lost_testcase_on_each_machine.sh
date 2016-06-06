#!/bin/bash
set -eu

kernel_version="4.4.9"
host_list="apac2-ph023.bej.suse.com apac2-ph031.bej.suse.com apac2-ph022.bej.suse.com apac2-ph027.bej.suse.com apac2-ph026.bej.suse.com ix64ph1053.qa.suse.de ix64ph1054.qa.suse.de apac2-ph033.bej.suse.com"
for host in ${host_list}
do
echo ${host}:
mysql -u qadb -h 147.2.207.30 -D qadb -p -e "SELECT DISTINCT \`testsuite\` FROM performance_view WHERE \`testsuite\` NOT IN (select distinct  \`testsuite\` from performance_view  where \`host\` = \"${host}\" and \`kernel_version\` = \"${kernel_version}\" order by \`testsuite\` asc) and \`kernel_version\` = \"${kernel_version}\" order by \`testsuite\`;"
done
