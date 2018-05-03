#!/bin/bash

#Print the md5sum for record keeping
echo "MD5SUM OF THE NEW JAR: " 
echo md5sum IAAMAuto-1.0-SNAPSHOT-jar-with-dependencies.jar

#Do the Transfers
echo "Transfer Jar to Slave-756"
scp /mnt/c/Users/rholbrook/Documents/nam-git/iaam-auto/target/IAAMAuto-1.0-SNAPSHOT-jar-with-dependencies.jar root@prvqenam756.namdom022.lab:/root/NAMAutomationJars
echo "Transfer Jar to Slave-758"
scp /mnt/c/Users/rholbrook/Documents/nam-git/iaam-auto/target/IAAMAuto-1.0-SNAPSHOT-jar-with-dependencies.jar root@prvqenam758.namdom022.lab:/root/NAMAutomationJars
echo "Transfer Jar to Slave-765"
scp /mnt/c/Users/rholbrook/Documents/nam-git/iaam-auto/target/IAAMAuto-1.0-SNAPSHOT-jar-with-dependencies.jar root@prvqenam765.namdom022.lab:/root/NAMAutomationJars