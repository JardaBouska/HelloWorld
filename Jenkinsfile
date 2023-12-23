pipeline {
    agent {
        docker {
            image 'my-jenkins-agent'
        }
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                script {
                    bat 'dotnet restore'
                    bat 'dotnet build'
                }
            }
        }

        stage('Test') {
            steps {
                script {
                    bat 'dotnet test'
                }
            }
        }

        // Další etapy podle potřeby
    }
}
