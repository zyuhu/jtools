#!/bin/bash



week=`date "+%V"`
mailx -v -A suse -s "[qa-reports] Workreport of week ${week}, 2016" qa-reports@suse.de
