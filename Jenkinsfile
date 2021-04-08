pipeline {
    agent {
        docker 'openjdk:8u131-jdk'
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh 'java -version'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}