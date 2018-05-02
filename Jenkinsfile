pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
    }

  }
  stages {
    stage('Build Forum') {
      steps {
        sh 'echo "build successful"'
      }
    }
    stage('Test Forum') {
      steps {
        sh 'bin/rails db:migrate RAILS_ENV=development'
        sh 'bundle exec rspec'
      }
    }
    stage('Deploy forum') {
      steps {
        sh 'docker'
      }
    }
  }
}