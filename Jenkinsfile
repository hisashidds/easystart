pipeline {
    agent { dockerfile true }
    tools {
        jdk 'default'
    }
    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh 'ant'
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

    post {
        always {
            junit testResults: '**/TEST-*.xml'

            //recordIssues enabledForFailure: true, tools: [mavenConsole(), java(), javaDoc()]
            recordIssues enabledForFailure: true, tools: checkStyle()
            //recordIssues enabledForFailure: true, tools: spotBugs()
        }
    }
}