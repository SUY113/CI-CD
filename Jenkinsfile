pipeline{
    agent any
    stages {
        stage ('Pull Github repository'){
            steps {
                git branch: 'main', url: 'https://github.com/20120615t/MMTNC-LAB03.git'
            }
        }
        stage ('Build and publish Docker image'){
            steps {
                withDockerRegistry(credentialsId: 'DockerHub', url: 'https://index.docker.io/v1/') {
                   bat 'docker build -t 20120615/mmtnc-lab03 .'
                   bat 'docker push 20120615/mmtnc-lab03'
                }
            }
        }
    }
}