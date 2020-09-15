pipeline{
    agent{
        label'master'
    } 

    stages{
        stage('first step'){
            steps{
                 wrap([$class: 'BuildUser']){
                     sh 'echo "${BUILD_USER}"
                     checkout scm
                     def url = sh(returnStdout: true, script: 'git config remote.origin.url').trim()
                     echo url'
                     script{
                     currentBuild.description = "BUILD BY : ${BUILD_USER} , COMMIT ID : ${GIT_COMMIT}  "
                     }
                 }
              
            }
        }
    }
}