pipeline{
    agent{
        label'master'
    } 

    stages{
        stage('first step'){
            steps{
                 wrap([$class: 'BuildUser']){
                     sh 'echo "${BUILD_USER}"'
                     sh'''
                     checkout scm
                     def url = sh(returnStdout: true, script: 'git config remote.origin.repo').trim()
                     echo url
                     '''
                     script{
                     currentBuild.description = "BUILD BY : ${BUILD_USER} , COMMIT ID : ${GIT_COMMIT}  "
                     }
                 }
              
            }
        }
    }
}