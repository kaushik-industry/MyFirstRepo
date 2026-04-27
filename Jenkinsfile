pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Check Tools') {
            steps {
                bat 'git --version'
                bat 'terraform version'
            }
        }

        stage('Init') {
            steps {
                bat 'terraform init'
            }
        }

        stage('Plan') {
            steps {
                bat 'terraform plan'
            }
        }
    }
}
