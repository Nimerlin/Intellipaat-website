pipeline {
    agent {
        kubernetes {
            label 'mypod'
        }
    }

    stages {
        
        stage('Build') {
            steps {

                sh 'docker build -t nimerlin/project2 .'
                sh 'docker tag nimerlin/project2 nimerlin/project2'
                sh 'docker login -u "nimerlin" -p "Resume@1998" docker.io'
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
