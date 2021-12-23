pipeline {
    agent {
        docker {
            image 'node:16-alpine'
            args '-p 3000:3000'
        }
    }
    environment {
        NPM_CONFIG_CACHE = "${WORKSPACE}/.npm"
        CI = 'true'
    }
    stages {
        stage('build-run-tests') {
            steps {
                sh 'npm install'
                sh 'npm run test'
            }
        stage('app-deploy-run') {
            steps {
                sh 'npm run start'
            }
        }
    }
 }
