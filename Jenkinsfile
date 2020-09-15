pipeline{
    agent{
        label'master'
    }    
    stages{
        stage('first step'){
            steps{
                 script{
                     currentBuild.description = addShortText(text: data, background: 'orange', border: 1);"${GIT_COMMIT}"
                 }
            }
        }
    }
   
}