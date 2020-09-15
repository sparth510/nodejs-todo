pipeline{
    agent{
        label'dev'
    }
    stages{
        stage('remove backup'){
            steps{
                 sh '''
                 echo hello
                 '''
            }
        }
    }
     post {
         def repository = scm.userRemoteConfigs[1].url  
         addShortText(text: data, background: 'orange', border: 1, $repository);
     }
}