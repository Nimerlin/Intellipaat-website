pipeline {
    agent any

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
        stage('K8S Deployment'){
        steps{
                 withKubeConfig(caCertificate: '', clusterName: '', contextName: '', credentialsId: 'k8s', namespace: '', serverUrl: '') {
                    // some block
                    sh "kubectl delete all --all"
                    sh "kubectl apply -f deployment.yaml"
                    sh "kubectl apply -f service.yaml"
                 }
            }
        }
}
}
