# TASK-3 EXPLANATION

#STEP-1: Am taking a new server with server configurations like server_name, AMI : Amazon linux kernel 5.10, instance_type : t2.micro, key_pair, security_group : all traffic, EBS : 8GIB.  After am connecting with server through SSH.

- COMMAND : sudo -i - To change the Root user.

- After am installing terraform. By using commands.

- COMMAND : sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo .

- COMMAND : sudo yum -y install terraform .

- Next am installing Docker. By using commands.

- COMMAND : yum install docker -y - To install the docker .

- Next docker install completed . After to start the docker service by using commands .

- COMMAND : systemctl start docker - To start the docker .

- COMMAND : systemctl status docker - To check the status .

- SO, Terraform and Docker installation is completed .

- Now am creating a Infrastructure with Terraform . writing a terraform code to create a container .

- Now am creating a NEW FILE touch provider.tf .

- In this file provider.tf The docker provider is used to interact with docker containers and images .

- Am creating a Another File touch main.tf .

- In this File main.tf the docker image and docker container Resources are creating by using commands .

- COMMAND : terraform init .

- COMMAND : terraform plan .

- COMMAND : terraform apply --auto-approve .

- COMMAND : terraform destroy --auto-approve .

- TERRAFORM INIT : Run terraform init to initialize a terraform working directory .

- TERRAFORM PLAN : Run terraform plan to create an execution plan . Terraform compares the desired state from the configuration with the current state and 
                   generates a plan for the changes required to reach the desired state.

- TERRAFORM APPLY : Execute terraform apply to apply the changes outlined in the plan. Terraform makes the necessary API calls to create, update, or delete 
                    resources to align the infrastructure with the desired state.

- TERRAFORM DESTROY : When infrastructure is no longer needed, or for testing purposes, run terraform destroy to tear down all resources created by Terraform. 

- After resources are creted then terraform.tfstate a file is created .

- terraform.tfstate : IT IS A LIVE INFRA STATEFILE .

-  docker image and container are also created . by using commands .

-  Actually Nginx image am taken from dockerhub .

- COMMAND : docker images - To check the list of images .

- COMMAND : docker ps - To check the list of containers .

- After accessing nginx webserver with publicIP:1234 .

- 1234 is a port number by giving in main.tf file .

- COMMAND : terraform state list - this command is works on how many live infras are created .





