pipeline{
    agent{
        label'master'
    } 
     environment {
        DISABLE_AUTH = 'true'
        DB_ENGINE    = 'sqlite'
        String determineRepoName() {
        return scm.getUserRemoteConfigs()[0].getUrl().tokenize('/')[3].split("\\.")[0]
}
    }   
    stages{
        stage('first step'){
            steps{
                 wrap([$class: 'BuildUser']){
                     sh 'echo "${BUILD_USER}"'
                     script{
                     currentBuild.description = "BUILD BY : ${BUILD_USER} , COMMIT ID : ${GIT_COMMIT} , REPO NAME : ${determineRepoName} "
                     }
                 }
              
            }
        }
    }
}