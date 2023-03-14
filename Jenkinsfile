pipeline{
    agent any

    stages {
        stage('git clone') {
            steps{
                git ''
            }
        }
        stage("Terraform init") {
            steps{
                sh ("tarraform init")
            }
        }
        stage("Terrafrom action") {
            steps{
                sh ("terraform apply--auto-approve");
            }
        }


    }
}