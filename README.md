# aws-terraform

Step 1:

Edit variables.tf:  
variable "key_name" {default = your_key} 
variable "instance_count" {your_value}
variable "subnet_count" {your_value}

Edit lab_variables.tfvar
private_key_path = "your_path"


Step 2:
$ git clone

$ terraform apply -var-file="lab_variables.tfvar" 

