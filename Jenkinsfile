pipeline {
    agent any
    stages {
        stage("checkout") {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'github-token-devops-project', url: 'https://github.com/cygday/devops-project.git']])
            }

        }
        stage("code quality - sonarqube") {
                steps {
                    withSonarQubeEnv("MySonarQube"){
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
