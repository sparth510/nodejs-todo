pipeline{
    agent{
        label'master'
    }    
    stages{
        stage('first step'){
            steps{
                 script{
                     currentBuild.displayName = " ${GIT_COMMIT}"
                 }
            }
        }
    }
   
}