#!/bin/bash
echo "\nStarting H2 As A Service @ Startup Containers\n"
cd /softwares/h2/bin
nohup java -cp h2*.jar org.h2.tools.Server -webAllowOthers & 
echo "waiting to bringup H2 Process"
sleep 180
nc -v localhost 8082
if [ $? -eq 0 ] 
then
  echo "\nStarted H2 SuccessFully"
else
  echo "\nFailed In Starting Up H2"
fi
