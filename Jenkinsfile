pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/your-user/your-repo.git'
            }
        }

        stage('Test') {
            steps {
                sh './run-tests.sh'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t my-app:latest .'
            }
        }

        stage('Push Image') {
            steps {
                echo 'Push stage skipped for now. Add registry creds later.'
            }
        }

        stage('Deploy to K8s') {
            steps {
                sh 'kubectl apply -f k8s/deployment.yaml'
                sh 'kubectl apply -f k8s/service.yaml'
            }
        }

        stage('ArgoCD Sync') {
            steps {
                sh 'argocd app sync my-app'
            }
        }
    }
}