pipeline{
    agent {label 'docker'}
    tools {
        maven 'maven'
    }
    stages{
        stage("clean work space"){
            steps{
                sh 'cleanWs()'
            }
        }

        

    stage("check out"){
        steps{
            git branch: "test", url: "https://github.com/chumaedeogu/hibernate5.git"
        }
    }
    stage("unit test"){
        steps{
            sh 'mvn clean test'
        }
    }
    }
}

    