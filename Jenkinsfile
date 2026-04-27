pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Verify Tools') {
            steps {
                bat 'git --version'
                bat 'terraform version'
            }
        }

        stage('Terraform Init') {
            steps {
                bat 'terraform init'
            }
        }

        stage('Terraform Plan') {
            steps {
                bat 'terraform plan'
            }
        }
    }
}
