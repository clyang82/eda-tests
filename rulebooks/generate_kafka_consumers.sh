#!/bin/bash

SECRETUSER="${SECRETUSER:-global-hub-kafka-user}"

export bootstrapServers=`oc get kafka kafka -ojsonpath='{.status.listeners[1].bootstrapServers}'`
for i in $(seq 1 1); do
    kubectl get secret $SECRETUSER -o jsonpath='{.data.ca\.crt}' | base64 -d > ./ca.crt
    kubectl get secret $SECRETUSER -o jsonpath='{.data.user\.crt}' | base64 -d > ./client.crt
    kubectl get secret $SECRETUSER -o jsonpath='{.data.user\.key}' | base64 -d > ./client.key
    kubectl create secret generic my-consumer-$i --from-literal=bootstrap_server=$bootstrapServers --from-file=ca.crt=./ca.crt --from-file=client.crt=./client.crt --from-file=client.key=./client.key
done
