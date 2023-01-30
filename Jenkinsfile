pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building...'

            }
        }
        stage('Test') {
            steps { 
                echo 'Testing...'
            }
        }
        stage('Prod') {
            steps {

                sh 'cp index.html /var/www/html/'
                sh 'cp images/github3.jpg /var/www/html/images/'
                echo 'Deploying....'
            }
        }
    }
}
