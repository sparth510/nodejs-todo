  String determineRepoName() 
  {
      return scm.getUserRemoteConfigs()[0].getUrl().tokenize('/')[3].split("\\.")[0]
    }
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
                     echo ${determineRepoName}
                     '''
                     script{
                     currentBuild.description = "BUILD BY : ${BUILD_USER} , COMMIT URL = https://github.com/$(git config --get remote.origin.url | cut -d/ -f4 | cut -d. -f1)/$(git config --get remote.origin.url | cut -d/ -f5 | cut -d. -f1)/$(git rev-parse --short=5000 HEAD~0) "
                     }
                 }
              
            }
        }
    }
}
