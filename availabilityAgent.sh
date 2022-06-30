  GNU nano 4.8                                                                                              availabilityAgent.sh
#!/bin/bash
TEST_PERIDOCITY=5

while true
do
while read line; do
        ping -D $line -c  1 1>/dev/null
        EC=$?
                if [  "$EC" -eq "0" ]; then
                echo Test result for ${line} is 1 at $(date +%s%N)
                else
                echo Test result for ${line} is 0 at $(date +%s%N)
                fi
done < hosts
echo
sleep $TEST_PERIODICITY
done

e