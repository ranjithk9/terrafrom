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
        stage("Terraform apply") {
            steps{
                echo "terraform action from the parameter is --> $(action)"
                sh ("terraform $(action) --auto-approve");
            }
        }


    }
}