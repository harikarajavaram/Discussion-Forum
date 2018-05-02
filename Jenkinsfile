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
        sh 'docker run shreyakupadhyay/discussionforum'
        sh 'docker exec bin/rails db:migrate RAILS_ENV=development'
        sh 'bundle exec rspec'
      }
    }
    stage('Deploy forum') {
      steps {
        sh 'ls'
      }
    }
  }
}