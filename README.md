This project will test network connection to a number of hosts which is decided via the hosts file.
the data will be inserted in to influxdb database and will be displayed in grafana.

there will be 4 files.

1) availabilityagent.sh
2) docker-compose.yml
3) build.sh
4) hosts
5) README.md


INSTALLATION

use Git to clone the project:

gh repo clone RefaelSach/availabilityAgent

To run for testing :
1) docker-compose up
2) ./availabilityAgent.sh

OR

Run the script
./build.sh

and DONE :)