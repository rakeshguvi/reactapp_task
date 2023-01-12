pipeline {
    agent {
        docker { image 'latest' }
    }
    stages {
        stage('Build docker image'){
            steps{
                script{
                    sh 'docker build -t rakeshguvi/react_dev:v1 .'
                }
            }
        }
        stage('Docker Push') {
    	        agent any
            steps {
      	     withCredentials([usernamePassword(credentialsId: 'rak-docker', passwordVariable: 'rak-dockerPassword', usernameVariable: 'rak-dockerUser')]) {
        	    sh "docker login -u ${env.rak-dockerUser} -p ${env.rak-dockerPassword}"
              sh 'docker push rakeshguvi/react_dev:v1'
        }
      }
    }
  }
}
