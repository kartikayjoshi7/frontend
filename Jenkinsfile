pipeline {
    agent {
        label 'WORKSTATION'
    }

    triggers {
        pollSCM('*/2 * * * *')
        }

    stages {

    stage('Compile the code') {
        steps {
            sh 'echo compile code'
        }
    }
    stage('Check the code quality') {
            steps {
                sh 'echo check the code quality'
            }
        }
    stage('Test cases') {
            steps {
                sh 'echo Test cases'
            }
        }
     }
}