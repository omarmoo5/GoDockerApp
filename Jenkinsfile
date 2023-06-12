pipeline {
  agent any
  environment {
    DOCKERHUB_CREDENTIALS = credentials('dockerhub')
  }
  stages {
    stage('Build') {
      steps {
        sh 'docker build -t omarmokhtar99/go-docker-app:latest .'
      }
      post {
        failure {
            error('Docker build failed!')
        }
      }
    }
    stage('Login') {
      steps {
        sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
      }
    }
    stage('Push') {
      steps {
        sh 'docker push omarmokhtar99/go-docker-app'
      }
    }
  }
  post {
    always {
      sh 'docker logout'
    }
    success {
          sh 'docker rmi omarmokhtar99/go-docker-app:latest'
    }
  }
}