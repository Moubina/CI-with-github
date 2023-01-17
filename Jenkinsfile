pipeline {
    agent any

    stages {
        stage('Building') {
            steps {
                bat 'pip install -r requirements.txt'
                bat 'docker build -t image1 .'
            }
        }
        stage('Testing') {
            steps {
                bat 'python -m unittest'
            }
        }
        stage('Deploying') {
            steps {
                
                bat 'docker run -d image1'
            }
        }
    }
}