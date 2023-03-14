pipeline{
    agent any

    stages {
        stage('checkout') {
            steps{
                git 'https://github.com/ranjithk9/terrafrom.git'
                
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