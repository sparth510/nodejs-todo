pipeline{
    agent{
        label'master'
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
        Set build description{
        addShortText(text: data, background: 'orange', border: 1 ); ${GIT_COMMIT}
    }
    }
}