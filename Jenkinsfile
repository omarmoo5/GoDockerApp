pipeline {
    agent { docker { image 'python:3.10.7-alpine' } }
    stages {
        stage('build') {
            steps {
                sh 'python --version'
            }
        }
    }
}

// pipeline {
//     agent any
//
//     stages {
//         stage('Build and Push Docker Image') {
//             steps {
//                 script {
//                     docker.withRegistry('https://registry.example.com', 'credentials-id') {
//                         sh 'docker build -t your-image-name .'
//                         sh 'docker push your-image-name'
//                     }
//                 }
//             }
//         }
//     }
//
//     post {
//         always {
//             script {
//                 // Report errors or perform cleanup actions here
//             }
//         }
//     }
// }
