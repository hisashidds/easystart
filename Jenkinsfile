pipeline {
    agent { dockerfile true }

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
            recordIssues enabledForFailure: true, tool: checkStyle()
            //recordIssues enabledForFailure: true, tool: spotBugs()
        }
    }
}