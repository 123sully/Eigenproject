#!/bin/bash
# Script: deploy-monitoring.sh
# Doel: Prometheus + Grafana deployen

echo "=== Deploying Monitoring Stack ==="
kubectl apply -f ~/k8s-project/manifests/monitoring.yaml

echo "=== Check Pods in monitoring namespace ==="
kubectl get pods -n monitoring
