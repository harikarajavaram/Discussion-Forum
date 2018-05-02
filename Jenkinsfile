pipeline {
  agent any
  stages {
    stage('Build Forum') {
      steps {
        sh 'docker build -t shreyakupadhyay/discussionforum:latest .'
      }
    }
    stage('Test Forum') {
      steps {
        sh 'docker run --rm -itd --name discussionforum -p 3000:3000 shreyakupadhyay/discussionforum'
        sh 'docker exec discussionforum bundle exec rspec'
      }
    }
    stage('Deploy forum') {
      steps {
        sh 'ls'
      }
    }
  }
}