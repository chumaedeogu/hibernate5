pipeline{
    agent {label 'docker'}
    tools {
        maven 'maven'
          }
    stages{
        stage("clean work space"){
            steps{
                cleanWs()
            }
        }

   stage("unit test"){
        steps{
            sh 'mvn clean test'
        }
    }
    }
}


    