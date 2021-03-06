pipeline {
    agent {
        docker { image 'ubuntu' }
    }
    options {
        skipStagesAfterUnstable()
    }
    stages {
        stage('Build') {
            steps {
                echo "Building..."
            }
        }
        stage('Test'){
            steps {            
                echo "Testing..."
            }
        }
        stage('Deploy') {
            steps {
                echo "Deploying..."
                echo "Finished!"
            }
        }
    }
}