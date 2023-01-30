pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                git branch:'master',url:'https://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@github.com/Nimerlin/Intellipaat-website.git'
                echo 'Building..'
            }
        }
        stage('Test') {
            steps { 
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {

                sh 'cp index.html /var/www/html/'
                sh 'cp images/github3.jpg /var/www/html/images/'
                echo 'Deploying....'
            }
        }
    }
}