pipeline {
    agent any

    stages {
        
        stage('Build') {
            steps {

                sh 'docker build -t project2 .'
                sh 'docker tag project2 nimerlin/project2'
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
