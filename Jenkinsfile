pipeline {
  //No agent type specified. Must be one of 
  // [any, docker, dockerContainer, dockerfile, label, none] @ line 2, column 5.
    // agent {
    //   node {
    //     label 'docker-node1'
    //   }
    // }
    agent any
    // agent {
    //   dockerfile true
    // }
    stages {
      stage('Build') {
        
        steps {
          sh '''
            pwd
            cd .
            rm -f Dockerfile
            echo "FROM python:alpine3.19 \nWORKDIR /work \nCMD python3 --version" >> Dockerfile
            docker ps
            docker ps -a
            docker images

            docker build -t test-image .
            docker images
            docker run -d --name test-cont test-image
            docker logs test-cont
            docker ps
            docker ps -a
            docker container stop test-cont
            docker container stop test-cont
            docker rm test-cont
            docker ps 
            docker ps -a
            docker images
          '''
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