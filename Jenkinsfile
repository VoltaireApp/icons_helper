pipeline{
    environment{
        release = "1.0.2"
        flutterPath = "/Applications/Toolbox/flutter/bin/flutter"
    }
    agent any
    stages{
        stage('PUll Git'){
            steps{
                echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"
                echo "Pulling..." + env.GIT_BRANCH
                echo "Nothing to build for the moment."
            }
        }
    }
}