#!/bin/bash

# Generate Prometheus ConfigMaps
kubectl create configmap --dry-run=true prometheus-k8s --from-file=assets/prometheus/ -oyaml > manifests/prometheus/prometheus-k8s-cm.yaml
kubectl create configmap --dry-run=true prometheus-k8s-rules --from-file=assets/prometheus/rules/ -oyaml > manifests/prometheus/prometheus-k8s-rules-cm.yaml
