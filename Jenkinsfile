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
                     currentBuild.description = "BUILD BY : UPSTREAM_BUILD_USER_ID=${BUILD_USER_ID}${BUILD_USER} , COMMIT ID : ${GIT_COMMIT}  "
                     }
                 }
              
            }
        }
    }
}