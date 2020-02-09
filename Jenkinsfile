pipeline {
    agent { label 'master' }
    stages {
        stage('prep') {
            steps {
                sh '''
                if [ ! -f "./packer" ]; then
                curl https://releases.hashicorp.com/packer/1.5.1/packer_1.5.1_linux_amd64.zip --output packer_1.5.1_linux_amd64.zip \
                && unzip packer_1.5.1_linux_amd64.zip \
                && rm -f packer_1.5.1_linux_amd64.zip
                fi
                '''
            }
        }
        stage('build') {
            steps {
                sh "./build-image.sh"
            }
        }
    }
}
