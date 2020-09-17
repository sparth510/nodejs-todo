pipeline{
    agent{
        label'master'
    } 

    stages{
        stage('BUILD'){
            steps{
                 wrap([$class: 'BuildUser']){
                     sh 'echo "${BUILD_USER}"'
                     chmod +x url.sh
                     script{
                     URL = sh (script: "./url.sh" , returnStdout: true).trim()
                     addShortText (text: "COMMIT_LINK", link:"$URL", background: "red", border: "1", color: "black")
                     addShortText (text: "BUILD BY: $BUILD_USER", background: "yellow", border: "2", borderColor: "black", color: "black")
                     }
                 }
              
            }
        }
    }
}
