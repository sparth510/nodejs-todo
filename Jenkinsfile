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
   
}