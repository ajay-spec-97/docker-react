pipeline {
    agent {
        docker {
            image 'node:16-alpine'
            args '-p 3000:3000'
        }
    }
    environment {
        CI = 'true'
    }
    stages {
        stage('Build') {
            steps {
                sh 'sudo chown -R 127:133 "/.npm"'
                sh 'npm run test'
            }
        }
    }
 }
