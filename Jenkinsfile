pipeline{
    agent{
        label'master'
    }    
    stages{
        stage('first step'){
            steps{
                 script{
                     currentBuild.description =" ${GIT_COMMIT}"
                 }
            }
        }
    }
   
}