#!/bin/bash

kubectl delete -f client-pod.yaml
kubectl delete -f mysql.yaml
kubectl delete -f mysql-pv.yaml
kubectl delete -f mysql-secret.yaml
