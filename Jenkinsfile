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
                bat 'pip install -r requirements.txt'
                bat 'python -m unittest test_main.py'
            }
        }
        stage('Deploying') {
            steps {
                bat 'docker run -p 5000:5000 my_app'
            }
        }
    }
}