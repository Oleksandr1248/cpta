pipeline {
    agent {
        docker { image 'docker-image' }
    }
    
    stages {
        stage('Install DEB') {
            steps {
                script {
                    sh 'dpkg -i lab1.deb'  // Для DEB
                }
            }
        }
        
        stage('Run Script') {
            steps {
                sh '/usr/local/bin/lab1.sh'
            }
        }
    }
}
