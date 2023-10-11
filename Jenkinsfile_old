pipeline {
  agent any
  options {
    buildDiscarder(logRotator(numToKeepStr: '5'))
  }
  environment {
    DOCKERHUB_CREDENTIALS = credentials('dockerhub')
  }
  stages {
    stage('Build') {
      steps {
        sh 'docker build -t artsemyeuroman/trgtest:hello_world .'
      }
    }
    stage('Login') {
      steps {
        sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
      }
    }
    stage('Push') {
      steps {
        sh 'docker push artsemyeuroman/trgtest:hello_world'
      }
    }
    stage('Deploy'){
      steps {
        sh 'docker pull artsemyeuroman/trgtest:hello_world'
        sh 'docker-compose up -d '
      }
    }
  }
  post {
    always {
      sh 'docker logout'
    }
  }
}
