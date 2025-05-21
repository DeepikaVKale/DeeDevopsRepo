pipeline {
    agent any
    stages{
        stage('Build' & 'Test'){
            stages{
                stage('compile'){
                    steps {
                        echo "Compiling..."
                    }
                }
                stage('unit test'){
                    steps {
                        echo "unit testing..."
            }

        }


        }
        stage('deploy'){
            steps{
                echo "Deployment..."
            }
        }
    }
}