#!/bin/bash



week=`date "+%V"`
week=$(($week - 1))
mailx -v -A suse -s "[qa-reports] Workreport of week ${week}, 2015" qa-reports@suse.de
