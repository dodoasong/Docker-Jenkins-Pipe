pipeline
{
    agent any
    stages
    {
        stage('Git checkout')
        {
            steps
            {
                git 'https://github.com/selenium-saikrishna/maven.git'
            }
        }
        stage('Maven Configuration')
        {
            steps
            {
                sh 'mvn package'
            }
        }
        stage('Build Docker Image')
        {
            steps
            {
                sh 'docker build -t dodoasong/Docker-Jenkins-Pipe:1.0.0 .'
            }
        }
        stage('Push Docker Image')
        {
            steps
            {
                'withCredentials(string(credentialsId: dockerHPwd variable: dockerHubPwd'
                sh 'docker login -u dodoasong -p ${dockerHubPwd'
                sh 'docker push dodoasong/Docker-Jenkins-Pipe:1.0.0'
            }
        }
        stage('Run on Jenkins Server')
        {
            steps
            {
                sh 'docker run -d -p 9090:8080 dodoasong/Docker-Jenkins-Pipe:1.0.0'
            }
        }
    }
}
    
