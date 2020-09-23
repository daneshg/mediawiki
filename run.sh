#!/usr/bin/env bash

kubectl apply -f deployments/storage-class.yaml
kubectl apply -f deployments/mysqldb-secret.yaml
kubectl apply -f deployments/apache-config.yaml
kubectl apply -f deployments/php-config.yaml
kubectl apply -f deployments/site-config.yaml
kubectl apply -f deployments/mediawiki-static-storage.yaml
kubectl apply -f deployments/mediawiki-mysql-storage.yaml
kubectl apply -f deployments/mediawiki-frontend.yaml
kubectl apply -f deployments/mediawiki-backend.yaml
