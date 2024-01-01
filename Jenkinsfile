properties([buildDiscarder(logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '', daysToKeepStr: '2', numToKeepStr: '2')), pipelineTriggers([pollSCM('* * * * *')])])
pipeline {
    agent any
    tools {
     maven 'Maven'
     }
    stages {
        stage('git clone') {
            steps {
                git branch: 'main', url: 'https://github.com/Manvith124/sample-app.git'
            }
        }
        stage('maven_build') { 
            steps {
                sh 'mvn clean install'
            }
        }
        stage('Docker_image_build') { 
            steps {
                echo " Need to create steps for docke build" 
            }
        }

    }
}
