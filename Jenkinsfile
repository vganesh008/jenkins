pipeline{
    agent any
    stages{
        stage('git clone'){
            steps{
                 git 'https://github.com/vganesh008/jenkins.git'
            }
        }
        stage('D hub'){
            steps{
                // This step should not normally be used in your script. Consult the inline help for details.
withDockerRegistry(credentialsId: '9c11aff2-7e5c-40eb-9ceb-6c437eba7984', url: 'https://hub.docker.com/') {
    // some block
}
            }
        }
        stage('image build'){
            steps{
                sh 'docker build -t vganesh008:test01 .'
            }
        }
         stage('image pudg to hub'){
            steps{
                sh 'docker push vganesh008:test01 .'
            }
        }
        stage('container test'){
            steps{
                sh 'docker -H tcp://172.31.17.132:2375 ps'
            }
        }
        stage('container'){
            steps{
                sh 'docker -H tcp://172.31.17.132:2375 ps -aq'
               
            }
        }    
        stage('container build'){
            steps{
                sh 'docker -H tcp://172.31.17.132:2375 run --rm -dit -p 8000:80 --name ganesh --hostname test nginx'
            }
        }
         stage('container post test'){
            steps{
                sh 'docker -H tcp://172.31.17.132:2375 ps'
            }
        }

    }
}