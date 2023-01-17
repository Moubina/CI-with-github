pipeline {
    agent any

    stages {
        stage('Building') {
            steps {
                bat 'pip install -r requirements.txt'
            }
        }
        stage('Testing') {
            steps {
                bat 'echo pytest'
            }
        }
        stage('Deploying') {
            steps {
                bat 'docker build -t image1 .'
                bat 'docker run -p 5000:5000 image1'
            }
        }
    }
}