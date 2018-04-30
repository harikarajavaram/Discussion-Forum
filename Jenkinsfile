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
        sh '''bundle install
bundle exec rspec'''
      }
    }
  }
}