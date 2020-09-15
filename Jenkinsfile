pipeline{
    agent{
        label'master'
    } 

    stages{
        stage('first step'){
            steps{
                 wrap([$class: 'BuildUser']){
                     sh 'echo "${BUILD_USER}"'
                     sh '''
                     String determineRepoName() {     return scm.getUserRemoteConfigs()[0].getUrl().tokenize('/').last().split("\\.git")[0] }
                     '''
                     script{
                     currentBuild.description = "BUILD BY : ${BUILD_USER} , COMMIT ID : ${GIT_COMMIT}"
                     }
                 }
              
            }
        }
    }
}