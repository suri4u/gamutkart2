pipeline {
	agent any

	stages {
	    stage('Checkout') {
	        steps {
				checkout scm			        }
		    }
		stage('Build') {
	        steps {
				sh ' /home/suri/distros/apache-maven-3.6.0/bin/mvn install'
	        }
		}
		stage('Deployment') {
			steps {
				sh 'sshpass -p "suri" scp /home/suri/.jenkins/workspace/pipe-line/target/gamutkart.war root@172.17.0.2:/home'
			}
		}

	}
}
