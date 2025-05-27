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
                sh "rm -rf projet-scm-pipelin"
                sh "git clone https://github.com/yanichoupinou/depotgithub.git"
                
            }
        }
    }
}
