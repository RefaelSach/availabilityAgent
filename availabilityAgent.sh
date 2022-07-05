#!/bin/bash
TEST_PERIODICITY=5

while true
do
  while read line; do
          ping -D $line -c 1 -W 1 &> /dev/null 2>&1
          EC=$?
          TEST_TIMESTAMP=$(date +%s%N)
                  if [  "$EC" -eq "0" ]; then
                  RESULT=1
                  else
                  RESULT=0
                  fi
                  echo Test result for ${line} is $RESULT at $TEST_TIMESTAMP
                  curl -X POST 'http://localhost:8086/write?db=hosts_metrics' --data-binary "availability_test,host=$line value=$RESULT $TEST_TIMESTAMP"

  done < hosts
echo
sleep $TEST_PERIODICITY
done