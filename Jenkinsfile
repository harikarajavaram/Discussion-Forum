pipeline {
  agent any
  triggers {
        pollSCM('* * * * *')
    }
  stages {
    stage('Build Forum') {
      steps {
        sh 'docker build -t harikarajavaram/discussionforum:latest .'
      }
    }
    stage('Test Forum') {
      steps {
        sh 'docker stop deployforum'
        sh 'docker run --rm -itd --name discussionforum -p 3000:3000 harikarajavaram/discussionforum'
        sh 'docker exec discussionforum bundle exec rspec'
        sh 'docker stop discussionforum'
      }
    }
    stage('Pushing forum - docker hub') {
      steps {
        sh '''docker login -u=harikarajavaram -p=thanks123

'''
        sh 'docker tag harikarajavaram/discussionforum harikarajavaram/discussionforum:latest'
        sh 'docker push harikarajavaram/discussionforum:latest'
      }
    }
    stage('Deploying - Rundeck') {
      steps {
        build 'rundeckjob'
      }
    }
  }
  post {
    always {
      echo 'I will always say Hello again!'

    }

  }
}
