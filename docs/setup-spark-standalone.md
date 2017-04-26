Link: http://data-flair.training/blogs/install-deploy-run-spark-2-x-multi-node-cluster-step-by-step-guide/


1. setup java on master (linux ubuntu)

-- Add new user (from nilayan default)
sudo adduser naman sudo
-- sudo su - naman

-- Install oracle jdk
sudo apt-get install python-software-properties
$sudo add-apt-repository ppa:webupd8team/java
$sudo apt-get update
$sudo apt-get install oracle-java8-installer
sudo apt-get install scala
sudo apt-get install vim

# sudo update-alternatives --config java (to get the path of java)
sudo vim /etc/environment 
JAVA_HOME="/usr/lib/jvm/java-8-oracle"
source /etc/environment


sudo nano /etc/hosts
192.168.1.97 master
192.168.1.96 slave1





