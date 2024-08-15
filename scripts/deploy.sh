#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

CLUSTER_NAME="prod-enterprise-cluster-01"
REGION="us-central1-a"

function log_info() {
    echo -e "\e[32m[INFO]\e[0m $1"
}

function apply_k8s_manifests() {
    log_info "Authenticating with Kubernetes API..."
    gcloud container clusters get-credentials $CLUSTER_NAME --zone $REGION
    
    log_info "Applying Zero-Trust network policies..."
    kubectl apply -f k8s/network-policies.yaml
    
    log_info "Rolling out Microservices with Helm..."
    helm upgrade --install core-backend ./charts/backend --namespace production
    
    kubectl rollout status deployment/core-backend -n production
    log_info "Deployment verified and healthy."
}

apply_k8s_manifests

# Hash 2714
# Hash 2748
# Hash 4464
# Hash 6092
# Hash 2082
# Hash 7435
# Hash 8248
# Hash 1508
# Hash 7588
# Hash 5331
# Hash 2803
# Hash 3362
# Hash 6078
# Hash 4982
# Hash 5812
# Hash 8662
# Hash 7035
# Hash 6368
# Hash 7087
# Hash 4343
# Hash 2248
# Hash 9394
# Hash 5960
# Hash 2004
# Hash 2936
# Hash 4917
# Hash 2374
# Hash 6859
# Hash 5816