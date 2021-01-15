#!/bin/bash
cd K8s/
sleep 4s
#docker login
#echo $BUILD_NUMBER
sudo kubectl apply -f ./backend/backend.yaml
sudo kubectl apply -f ./database/database.yaml
sudo kubectl apply -f ./database/databasepersistent.yaml
sudo kubectl apply -f ./front-end/front-end.yaml
sudo kubectl apply -f ./nginx/nginx.yaml

kubectl rollout restart deployment.apps/backend
kubectl rollout restart deployment.apps/frontend