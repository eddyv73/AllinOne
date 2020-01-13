#!/bin/sh

##Prev az login##
##Only for get context in aks##
echo Get  AKS Context
az aks get-credentials --resource-group aks --name wister
kubectl create namespace pyproject
##Only if hub is private##
##kubectl -n pyproject create secret docker-registry wistersecret --docker-server=URLDOCKERHUB --docker-username=wister --docker-password=PWDHUB --docker-email=e@wister.mx

echo Deployment begin
kubectl -n pyproject apply -f ./deploymentpyproject
echo Deployment End

kubectl -n pyproject get pods
kubectl -n pyproject get hpa

echo External IP
kubectl -n pyproject get svc pyprojectlb -o jsonpath='{.status.loadBalancer.ingress[0].ip}'
