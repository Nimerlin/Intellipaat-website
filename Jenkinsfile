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

                sh 'docker build -t myproject1 .'
                sh 'docker run -d -p 80:80 myproject1'
                echo 'Deploying....'
            }
        }
    }
}
