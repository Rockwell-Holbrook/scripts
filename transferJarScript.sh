#!/bin/bash

#Variables: 
sum=`md5sum aaaaa.txt`
shortenedSum=`md5sum aaaaa.txt | cut -c1-6`
date=`date +%Y-%m-%d`
jarPath="accessmanager/target/accessma*-with-dependencies.jar"

#Print the md5sum for record keeping
echo "MD5SUM OF THE NEW JAR: " 
echo $sum 
echo `ls -l accessmanager/target/accessm*.jar`

#Do the Transfers
echo " "
echo "Transfer Jar to Slave-756"
scp -p $jarPath root@prvqenam756.namdom022.lab:/root/NAMAutomationJars

echo " "
echo "Transfer Jar to Slave-758"
scp -p $jarPath root@prvqenam758.namdom022.lab:/root/NAMAutomationJars

echo " "
echo "Transfer Jar to Slave-765"
scp -p $jarPath root@prvqenam765.namdom022.lab:/root/NAMAutomationJars

#Rename and keep a record. 
echo " "
read -p "Enter Jar Description Message (No Spaces Allowed): " description
scp -p $jarPath root@prvqenam756.namdom022.lab:/root/NAMAutomationJars/NAMJar.$date.$shortenedSum.$description