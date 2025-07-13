pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/Jayavardhan81/jenkins.git'
            }
        }

        stage('Test') {
            steps {
                bat './run-tests.bat'
            }
        }

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t my-app:latest .'
            }
        }

        stage('Push Image') {
            steps {
                echo 'Push stage skipped for now. Add registry creds later.'
            }
        }

        stage('Deploy to K8s') {
            steps {
                bat 'kubectl apply -f k8s/deployment.yaml'
                bat 'kubectl apply -f k8s/service.yaml'
            }
        }

        stage('ArgoCD Sync') {
            steps {
                bat 'argocd app sync my-app'
            }
        }
    }
}