pipeline{
    agent{
        label'dev'
        }
      try{
        GIT_REPO_URL = null
        command = "grep -oP '(?<=url>)[^<]+' /var/lib/jenkins/jobs/${JOB_NAME}/config.xml"
        GIT_REPO_URL = sh(returnStdout: true, script: command).trim();
        echo "Detected Git Repo URL: ${GIT_REPO_URL}"  
        }
        catch(err){
        throw err
        error "Colud not find any Git repository for the job ${JOB_NAME}"
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