pipeline{
    agent{
        label'master'
    } 

    stages{
        stage('first step'){
            steps{
                 wrap([$class: 'BuildUser']){
                     sh 'echo "${BUILD_USER}"'
                     script{
                     VERSION_STRING = sh (script: " sh url.sh" , returnStdout: true).trim()
                     addShortText (text: "ExampleText", background: "red", border: "1", borderColor: "black", color: "black")
                     }
                 }
              
            }
        }
    }
}
