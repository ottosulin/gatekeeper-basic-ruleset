#!/bin/bash

kind create cluster
kubectl apply -f https://raw.githubusercontent.com/open-policy-agent/gatekeeper/release-3.7/deploy/gatekeeper.yaml

# Apply
kubectl apply -f policy/

kubectl apply -f test_pod_fail.yaml
test $? -eq 1 || echo 'Policy did not fail as intended!'

kubectl apply -f test_pod_allowed.yaml
test $? -eq 0 || echo 'Policy did not allow as intended!'