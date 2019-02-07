if [ $PARAMETER = "QA" ];then
sshpass -p 'suri' scp target/gamutkart.war suri@172.17.0.3:/home/suri/server1/distros/apache-tomcat-8.5.37/webapps
sshpass -p "suri" ssh suri@172.17.0.3 "JAVA_HOME=/home/suri/server1/distros/jdk1.8.0_201" "/home/suri/server1/distros/apache-tomcat-8.5.37/bin/startup.sh"
elif  [ $PARAMETER = "SIT" ];then
sshpass -p 'suri' scp target/gamutkart.war suri@172.17.0.3:/home/suri/server1/distros/apache-tomcat-8.5.37/webapps
sshpass -p "suri" ssh suri@172.17.0.3 "JAVA_HOME=/home/suri/server1/distros/jdk1.8.0_201" "/home/suri/server1/distros/apache-tomcat-8.5.37/bin/startup.sh"
echo "welcome to project"
elif [ $PARAMETER = "UAT" ];then
sshpass -p 'suri' scp target/gamutkart.war suri@172.17.0.3:/home/suri/server1/distros/apache-tomcat-8.5.37/webapps
sshpass -p "suri" ssh suri@172.17.0.3 "JAVA_HOME=/home/suri/server1/distros/jdk1.8.0_201" "/home/suri/server1/distros/apache-tomcat-8.5.37/bin/startup.sh"

sshpass -p 'suri' scp target/gamutkart.war suri@172.17.0.4:/home/suri/server2/distros/apache-tomcat-8.5.37/webapps
sshpass -p "suri" ssh suri@172.17.0.4 "JAVA_HOME=/home/suri/server2/distros/jdk1.8.0_201" "/home/suri/server2/distros/apache-tomcat-8.5.37/bin/startup.sh"
fi
