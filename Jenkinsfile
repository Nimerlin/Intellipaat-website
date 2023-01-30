pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
<<<<<<< HEAD
                git branch: ‘master’,url: https://github.com/Nimerlin/Intellipaat-website.git
                echo 'Building...'
=======
                echo 'Building..'
>>>>>>> 66e25e40064c8ac5d2ca06eb766273a09745d477
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
