currentBuild.description = """
 ${GIT_COMMIT}
"""
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
        addShortText(text: data, background: 'orange', border: 1);
    }
}