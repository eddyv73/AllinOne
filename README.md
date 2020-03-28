The All in one
This Project wants show, one way to create a Azure Kubernetes services with azure, az cli ,Build a docker images with github actions,
push images to docker hub and show to do use a terraform with Azure and kubernetes.




Requirements and Steps
If you want create kubernetes cluster with terraform on azure.

######
Only Azure
######

A: Create AKS Cluster via  Terraform Script
	1.- Register the Cluster in Active Directory
	2.- Create ClientID and Secret
	3.- Add ClientID and Secret to ”main.tf” file.
	4.- Create ssh key.
	5.- Add Directory in var.tf : var  =  "ssh_public_key"
B: Get control
	1.-Execute “az login”
	2.-Execute “./aks.sh”
C: Verify Deployment
	1.- Execute “kubectl -n pyproject get deployment”
