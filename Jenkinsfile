pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                git branch: ‘master’,url: https://github.com/Nimerlin/Intellipaat-website.git
                echo 'Building...'
            }
        }
        stage('Test') {
            steps { 
                echo 'Testing...'
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