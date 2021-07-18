#!/bin/sh

#Install NGINX ingress controller
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update

helm upgrade --install ingress-nginx ingress-nginx/ingress-nginx

#Install helm charts

#helm charts for Golang and Java webapps
helm upgrade --install -f ../deployments/golang.yaml golang-app ../deployments/hotel/ -n prod --create-namespace
helm upgrade --install -f ../deployments/java.yaml java-app ../deployments/hotel/ -n prod --create-namespace

#helm charts for Ingress resource
helm upgrade --install ingress ../deployments/ingress/ -n prod --create-namespace

