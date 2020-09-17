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
                     sh '''
                     commit= "$(sh url.sh)"
                     '''
                     currentBuild.description = "BUILD BY : ${BUILD_USER} ${commit} "
                     }
                 }
              
            }
        }
    }
}
