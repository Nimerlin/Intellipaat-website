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
                    sh "sh /usr/local/bin eksctl delete all --all"
                    sh "sh /usr/local/bin eksctl apply -f deployment.yaml"
                    sh "sh /usr/local/bin eksctl apply -f service.yaml"
                 }
            }
        }
}
}
