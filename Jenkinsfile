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
         repository_url : https://github.com/sparth510/nodejs-todo.git
         def repository =repository_url scm.userRemoteConfigs[1].url  
         addShortText(text: data, background: 'orange', border: 1, $repository_url);
     }
}