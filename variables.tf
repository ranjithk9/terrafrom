variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-west-2"
}
variable "ami" {
  description = "aws ami"
  type        = string
  default     = "ami-08d70e59c07c61a3a"
}
variable "key_name" {
    description = "key_name"
    type = string
    default = "rc29" 
}
variable "instance_type" {
  description = "aws instance"
  type        = string
  default = "t2.micro"
  
}
variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "ExInstance"
}
variable "security_groups" {
  description = "security group name"
  type = string
  default = "jenkins2"
}
variable "user_data" {
   description = "user data"
   type = string
   default = <<-EOF
    jenkins.sh
  EOF
  
}




