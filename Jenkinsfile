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
                     commit = "$(sh url.sh)" 
                     '''
                     script{
                     currentBuild.description = "BUILD BY : ${BUILD_USER} , ${commit}"
                     }
                 }
              
            }
        }
    }
}
