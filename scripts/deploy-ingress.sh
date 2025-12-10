#!/bin/bash
# Script: deploy-ingress.sh
# Doel: NGINX Ingress Controller deployen met NodePort (werkt in Netlab)

echo "=== Verwijder oude ingress-nginx namespace als die bestaat ==="
kubectl delete namespace ingress-nginx --ignore-not-found

echo "=== Deploying NGINX Ingress Controller ==="
kubectl apply -f ~/k8s-project/manifests/ingress.yaml

echo "=== Check Ingress Pods ==="
kubectl get pods -n ingress-nginx

echo "=== Check Ingress Service ==="
kubectl get svc -n ingress-nginx
