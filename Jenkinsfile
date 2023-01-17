pipeline {
    agent any

    stages {
        stage('Building') {
            steps {
                git branch: 'master', url: 'https://github.com/Moubina/CI-with-github'
                bat 'docker build -t my_app -f Dockerfile .'
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