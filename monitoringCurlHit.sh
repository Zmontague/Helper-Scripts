# Replace "server address" with IP/url of server. Easy to use a busy box on kubernetes and run the command. 
# Easy K8s setup: k run curl-test --image=radial/busyboxplus:curl -i --tty --rm
# k is kubectl setup as my normal alias, these commands will start the pod as interactive and remove when finished. 


for i in $(seq 1 10000)
do
  curl "server address" > curlTest.txt
done
