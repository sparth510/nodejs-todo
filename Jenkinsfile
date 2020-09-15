pipeline{
    agent{
        label'master'
    }
    environment{        
    }
    stages{
        stage('first step'){
            steps{
                 sh '''
                 echo hello
                 '''
            }
        }
    }
    post{
        addShortText(text: data, background: 'orange', border: 1) $GIT_CHECKOUT_DIR;
    }
}