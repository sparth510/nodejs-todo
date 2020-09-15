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
                wrap([$class: 'BuildUser'])
                script{   
                    currentBuild.description = BUILD BY : "${GIT_COMMIT}"
                 }
            }
          
        }
    }
   
}