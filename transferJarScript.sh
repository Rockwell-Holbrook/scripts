#!/bin/bash

#Variables:
jarPath="accessmanager/target/accessma*-with-dependencies.jar"
sum=`md5sum $jarPath`
shortenedSum=`md5sum $jarPath | cut -c1-6`
date=`date +%Y%m%d.%H%M`

#Print the md5sum for record keeping
echo "MD5SUM OF THE NEW JAR: "
echo $sum
echo `ls -l accessmanager/target/accessm*.jar`

#Do the Transfers
echo " "
echo "Transfer Jar to Slave-756"
scp -p $jarPath root@prvqenam756.namdom022.lab:/root/NAMAutomationJars/NAM.jar	

echo " "
echo "Transfer Jar to Slave-758"
scp -p $jarPath root@prvqenam758.namdom022.lab:/root/NAMAutomationJars/NAM.jar

echo " "
echo "Transfer Jar to Slave-765"
scp -p $jarPath root@prvqenam765.namdom022.lab:/root/NAMAutomationJars/NAM.jar

#Rename and keep a record.
echo " "
read -p "Enter Jar Description Message (No Spaces Allowed): " description
scp -p $jarPath root@prvqenam756.namdom022.lab:/root/NAMAutomationJars/NAM.jar.$date.$shortenedSum.$description