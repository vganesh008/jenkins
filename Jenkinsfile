pipeline{
    agent any
    stages{
        stage('git clone'){
            steps{
                 git 'https://github.com/vganesh008/jenkins.git'
            }
        }
        stage('image build'){
            steps{
                sh 'docker build -t vganesh008:test01 .'
            }
        }
        stage('container test'){
            steps{
                sh 'docker -H tcp://172.31.17.132:2375 ps'
            }
        }
        stage('container kill'){
            steps{
                sh 'docker -H tcp://172.31.17.132:2375 ps -aq'
                sh 'docker -H tcp://172.31.17.132:2375 rm $(docker ps -qa)'
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