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
                sh "docker build -t my-nginx ."
                sh "docker tag my-nginx v1.0:my-nginx"
            }
        }
    }
}
