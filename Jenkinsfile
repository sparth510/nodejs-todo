pipeline{
    agent{
        label'dev'
        }
        {
            checkout scm
            def repo = sh(returnStdout: true, script: 'git config remote.origin').trim()
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
         addShortText(text: data, background: 'orange', border: 1, $repository_url);
     }
}