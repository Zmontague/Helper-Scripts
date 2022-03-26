#!/bin/bash
psResults=$(ps aux)
while read -r z
do
  var=$var$(awk '{print "memory_useage{process=\""$11"\", pid=\""$2"\"}", $4psResults}');
done <<< "$psResults"
curl -X POST -H "Content-Type: text/plain" --data "$var" http://localhost:9091/metrics/job/top/instance/machine
