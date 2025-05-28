pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
        }
        
         stage('Checkout SCM GITHUB') {
            steps {
                deleteDir()
                git branch: 'main', credentialsId: 'usergit ', url: 'https://github.com/yanichoupinou/depotgithub.git'
                
            }
        }
         stage('Build image Docker') {
            steps {
                sh 'docker rm -f $(docker ps -qa) || true'
                sh 'docker rmi -f $(docker images -q) || true'
                sh "docker build -t my-nginx ."
                sh "docker tag my-nginx v1.0:my-nginx"
            }
        }
          stage('déploiement Docker') {
            steps {
                sh 'docker rm -f $(docker ps -qa) || true' 
                //sh "docker stop my-nginx"
                //sh "docker rm my-nginx"
                sh "docker run -d --name monsite --hostname monsite -p 8585:80  v1.0:my-nginx"
                sh 'docker exec -i monsite bash -c ifconfig | grep broadcast'
            }
        }
    }
}
