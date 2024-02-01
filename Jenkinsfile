pipeline {
  //No agent type specified. Must be one of 
  // [any, docker, dockerContainer, dockerfile, label, none] @ line 2, column 5.
    agent {
      node {
        label 'docker-node1'
      }
    }
    // agent {
    //   dockerfile true
    // }
    stages {
      stage('Build') {
        steps {
          echo 'hi'
          echo $NODE_NAME
          // sh 'python3 --version' 
        }
      }
        // stage('Back-end') {
        //     agent {
        //         docker { image 'maven:3.9.6-eclipse-temurin-17-alpine' }
        //     }
        //     steps {
        //         sh 'mvn --version'
        //     }
        // }
        // stage('Front-end') {
        //     agent {
        //         docker { image 'node:20.11.0-alpine3.19' }
        //     }
        //     steps {
        //         sh 'node --version'
        //     }
        // }
    }
}