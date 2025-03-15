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
# Hash 5975
# Hash 6247
# Hash 2624
# Hash 8156
# Hash 8938
# Hash 6349
# Hash 8282
# Hash 7250
# Hash 3871
# Hash 5768
# Hash 1623
# Hash 4433
# Hash 5478
# Hash 8474
# Hash 9161
# Hash 8675
# Hash 4567
# Hash 1515
# Hash 5969
# Hash 8232
# Hash 4234
# Hash 2171
# Hash 9759
# Hash 3793
# Hash 9654
# Hash 1445
# Hash 2809
# Hash 1223
# Hash 9866
# Hash 6255
# Hash 7756
# Hash 5910
# Hash 2917
# Hash 6486
# Hash 8339
# Hash 4627
# Hash 3995
# Hash 5323
# Hash 1520
# Hash 2698
# Hash 4832
# Hash 1976
# Hash 3717
# Hash 4258
# Hash 9554
# Hash 8240
# Hash 1593
# Hash 3318
# Hash 5887
# Hash 6875
# Hash 8806
# Hash 3542
# Hash 5373
# Hash 4596
# Hash 4456
# Hash 4602
# Hash 6026
# Hash 8562
# Hash 4397