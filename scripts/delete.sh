#!/bin/bash
cd K8s/
sudo kubectl delete -f ./backend/backend.yaml
sudo kubectl delete -f ./database/database.yaml
sudo kubectl delete -f ./database/databasepersistent.yaml
sudo kubectl delete -f ./front-end/front-end.yaml
sudo kubectl delete -f ./nginx/nginx.yaml