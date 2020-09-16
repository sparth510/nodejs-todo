  pipeline{
    agent{
        label'master'
    } 

    stages{
        stage('first step'){
            steps{
                 wrap([$class: 'BuildUser']){
                     sh 'echo "${BUILD_USER}"'
                     String determineRepoName() {
                        return scm.getUserRemoteConfigs()[0].getUrl().tokenize('/')[3].split("\\.")[0]
                     }
                     sh '''
                     echo ${determineRepoName}
                     '''
                     script{
                     currentBuild.description = "BUILD BY : ${BUILD_USER} , COMMIT ID : ${GIT_COMMIT} , GIT_COMMIT_URL = <a href=`https://stackoverflow.com/questions/14082635/make-an-url-a-result-of-hudson-build`>abc</a> "
                     }
                 }
              
            }
        }
    }
}