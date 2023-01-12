pipeline {
    agent any
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
      	     withCredentials([usernamePassword(credentialsId: 'dockerHub', passwordVariable: 'dockerHubPassword', usernameVariable: 'dockerHubUser')]) {
        	    sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}"
              sh 'docker push shanem/spring-petclinic:latest'
        }
      }
    }
  }
