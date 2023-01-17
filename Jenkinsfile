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
                bat 'docker build -t my_app .'
                bat 'docker run -p 5000:5000 my_app'
            }
        }
    }
}