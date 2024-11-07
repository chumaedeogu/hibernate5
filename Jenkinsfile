pipeline{
    agent {label 'docker'}
    tools {
        maven 'maven'
          }
    environment {
        SONAR_HOME = tool "sonar-scanner"
    }
    stages{
        stage("clean work space"){
            steps{
                cleanWs()
            }
        }
    stage("check out"){
        steps{
            git branch: 'test', url: 'https://github.com/chumaedeogu/hibernate5.git'
        }
    }

   stage("unit test"){
        steps{
            sh 'mvn clean test'
        }
    }
    stage("static analysis"){
        steps{
              withSonarQubeEnv('SonarQubeServer') {
                sh '''
                   ${SONAR_HOME}/bin/sonar-scanner -Dsonar.projectName="gitest"\
                   -Dsonar.projectKey="gitest" \
                   -Dsonar.java.binaries=.
                   '''
   
               }
            
        }
    }
    }
}


    