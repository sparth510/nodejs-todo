pipeline{
    agent{
        label'master'
    } 

    stages{
        stage('first step'){
            steps{
                 wrap([$class: 'BuildUser']){
                     sh 'echo "${BUILD_USER}"'
                     script{
                     currentBuild.description = "BUILD BY : ${BUILD_USER} , COMMIT URL = https://github.com/$(git config --get remote.origin.url | cut -d/ -f4 | cut -d. -f1)/$(git config --get remote.origin.url | cut -d/ -f5 | cut -d. -f1)/$(git rev-parse --short=5000 HEAD~0)"
                     }
                 }
              
            }
        }
    }
}
