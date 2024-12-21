pipeline {
    agent any
    environment {
        EMAIL_RECIPIENT = 'd95378752@gmail.com'
    }
    stages {
        stage('BUILD STAGE') {
            steps {
               script{
                echo 'Building the Criticial Project in progress .............'
               }
            }
        }
    }
    post {
        success {
            emailext (
                to: "${EMAIL_RECIPIENT}",
                subject: "BUILD SUCCESSFUL: ${env.JOB_NAME} #${env.BUILD_NUMBER}",
                body: "The Build was successful. You can view it at ${env.BUILD_URL}"
            )
        }
        failure {
            emailext (
                to: "${EMAIL_RECIPIENT}",
                subject: "BUILD FAILED !!!!: ${env.JOB_NAME} #${env.BUILD_NUMBER}", 
                body: "The Build was FAILED. You can view it at ${env.BUILD_URL}"                
            )
        }
    }
}