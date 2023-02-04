pipeline {
    agent any

    stages {
        
        stage('Build') {
            steps {

                sh 'docker build -t myproject1 .'
                sh 'docker run -d -p 8001:80 myproject1'
                sh 'docker push nimerlin/project2'
                echo 'Building....'
            }
        }
        stage('deploy')
        {
        steps {

                sh 'kubectl apply -f deployment.yaml'
                sh 'kubectl apply -f service.yaml'
                echo 'Deploying....'
            }
        
        }
    }
}
