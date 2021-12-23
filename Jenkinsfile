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
                sh 'sudo npm install -g eslint --unsafe-perm=true --allow-root'
                sh 'npm run test'
            }
        }
    }
 }
