#!/bin/bash

trigger=1.00 
load=`cat /proc/loadavg | awk '{print $1}'` 
response=`echo | awk -v T=$trigger -v L=$load 'BEGIN{if ( L > T){ print "greater"}}'` 
if [[ $response = "greater" ]] 
then sar -q | mail -s"High load on server - [ $load ]" pgowda@student.unimelb.edu.au 
fi
