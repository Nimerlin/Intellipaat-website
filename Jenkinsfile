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
        stage('Deploy') {
            steps {

                sh 'sudo cp index.html /var/www/html/'
                sh 'sudo cp images/github3.jpg /var/www/html/images/'
                echo 'Deploying....'
            }
        }
    }
}
