pipeline {
    agent any
    stages {
        stage('CI - Build and Push Docker Image') {
            steps {
                script {
                    // Checkout code from GitHub
                    git 'https://github.com/AhmedGomaa98/K8S-Tree-Tier-Updates.git'
                    
                    // Build Docker image
                    sh 'docker build -t my-app:latest .'
                    
                    // Push Docker image to Docker Hub or any registry
                    sh 'docker tag my-app:latest mydockerhubusername/my-app:latest'
                    sh 'docker push mydockerhubusername/my-app:latest'
                }
            }
        }

        stage('CD - Deploy to Kubernetes') {
            steps {
                script {
                    // Set Kubernetes context (if needed)
                    sh 'kubectl config use-context minikube'
                    
                    // Create the webapp namespace
                    sh 'kubectl create namespace webapp || true'
                    
                    // Apply the Kubernetes deployment and service manifests
                    sh 'kubectl apply -f k8s/deployment.yaml -n webapp'
                    sh 'kubectl apply -f k8s/service.yaml -n webapp'
                }
            }
        }
    }
}
