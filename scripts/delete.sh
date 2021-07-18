#!/bin/sh

#delete releases
helm uninstall golang-app -n prod 
helm uninstall java-app -n prod
helm uninstall ingress-nginx -n prod

