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
                     VERSION_STRING = sh (script: "./url.sh" , returnStdout: true).trim()
                     currentBuild.description = "BUILD BY : ${BUILD_USER} ${VERSION_STRING} "
                     }
                 }
              
            }
        }
    }
}
