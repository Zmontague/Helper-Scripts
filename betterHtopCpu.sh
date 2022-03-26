#!/bin/bash
# This is used for prom/grafana scraping, more or less just fun way to run htop. 
# You'll need to replace localhost:9091 with your prom server and ensure you have pushgateway configured.
psResults=$(ps aux)
while read -r z
do
  var=$var$(awk '{print "cpu_usage{process=\""$11"\", pid=\""$2"\"}", $3psResults}');
done <<< "$psResults"
curl -X POST -H "Content-Type: text/plain" --data "$var" http://localhost:9091/metrics/job/top/instance/machine
