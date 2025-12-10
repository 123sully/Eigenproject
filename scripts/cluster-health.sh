#!/bin/bash
# Script: deploy-ingress.sh
# Doel: NGINX Ingress Controller deployen

echo "=== Deploying NGINX Ingress Controller ==="
kubectl apply -f ~/k8s-project/manifests/ingress.yaml

echo "=== Check Ingress Pods ==="
kubectl get pods -n ingress-nginx
