pipeline {
    agent any
    stages {
        stage("checkout") {
            steps {
                git url:"https://github.com/cygday/devops-project.git", branch: "main"
            }

        }
        stage("code quality - sonarqube") {
                steps {
                    withSonarQubeEnv("SonarQube"){
                    sh "SonarScanner"
                }
            }
            
        }
        stage("build") {
            steps {
                sh "docker build -t web-app:latest ."
            }

        }
        stage("push") {
            steps {
                sh "docker -t web-app:latest cygday/web-app:latest"
                sh "docker push cygday/web-app:latest"
        }
        stage("deploy") {
            steps {
                sh "./deploy.sh"
            }
        }
    }
    post {
        success {
            echo "cicd pipeline completed"
        }
        failure {
            echo " cicd pipeline failure"
        }
    }
}