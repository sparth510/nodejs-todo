pipeline{
    agent{
        label'master'
    }    
    stages{
        stage('first step'){
            steps{
                 script{
                     currentBuild.description = BUILD BY : "${BUILD_USER}"
                 }
            }
        }
    }
   
}