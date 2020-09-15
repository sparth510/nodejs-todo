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
                 script{
                    wrap([$class: 'BuildUser'])   
                    currentBuild.description = BUILD BY : "${BUILD_USER}"
                 }
            }
        }
    }
   
}