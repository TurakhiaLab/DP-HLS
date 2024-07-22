pipeline {
    agent any
    stages {
        stage('Generate Build Files') {
            steps {
                script {
                        sh '''
                            mkdir -p jenkins-build
                            cd jenkins-build
                            cmake ..
                        '''
                }
            }
        }
        stage('Build Target 1') {
            steps {
                script {
                        sh '''
                            cd jenkins-build
                            make test_csim_global_affine
                        '''
                }
            }
        }
        stage('Build Target 2') {
            steps {
                script {
                        sh '''
                            cd jenkins-build
                            make test_csim_banding_local_affine
                        '''
                }
            }
        }
        stage('Run Target 1') {
            steps {
                script {
                        sh '''
                            cd jenkins-build
                            ./test_csim_global_affine
                        '''
                }
            }
        }
        stage('Run Target 2') {
            steps {
                script {
                        sh '''
                            cd jenkins-build
                            ./test_csim_banding_local_affine
                        '''
                }
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}
