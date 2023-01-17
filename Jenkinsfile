pipeline {
    agent any

    stages {
        stage('Building') {
            steps {
                bat 'pip install -r requirements.txt'
                bat 'docker build -t image1:latest .'
            }
        }
        stage('Testing') {
            steps {
                bat 'echo pytest'
            }
        }
        stage('Deploying') {
            steps {
                
                bat 'docker run -p 5000:5000 image1'
            }
        }
    }
}