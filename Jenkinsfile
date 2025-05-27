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
    }
}
