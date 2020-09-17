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
                     currentBuild.description = "BUILD BY : ${BUILD_USER} , sh''' sh url.sh'''"
                     }
                 }
              
            }
        }
    }
}
