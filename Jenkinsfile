pipeline{
    agent{
        label'master'
    } 
     environment {
        DISABLE_AUTH = 'true'
        DB_ENGINE    = 'sqlite'
    }   
    stages{
        stage('first step'){
            steps{
                 wrap([$class: 'BuildUser']){
                     sh 'echo "${BUILD_USER}"'
                     script{
                     currentBuild.description = "BUILD BY : ${BUILD_USER}"
                     currentBuild.description = "COMMIT ID : ${GIT_COMMIT}"
                     currentBuild.description = "BRANCH : ${GIT_BRANCH}"

                     }
                 }
              
            }
        }
    }
}