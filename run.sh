#!/usr/bin/env bash

set -e

export SITE_NAME=${SITE_NAME:-"My MediaWiki"}
export NODE_PORT=${NODE_PORT:-30003}
export SITE_URL="http://$(minikube ip | sed 's/\"//g'):${NODE_PORT}"

export APACHE_IMAGE_FULL_PATH=${APACHE_IMAGE_FULL_PATH}
export MYSQL_IMAGE_FULL_PATH=${MYSQL_IMAGE_FULL_PATH}

if [[ -z $APACHE_IMAGE_FULL_PATH || -z $MYSQL_IMAGE_FULL_PATH  ]];
then
  echo -e "Please update image names ..."
  exit 2
fi 

SCRIPTS_DIR="$(pwd)/deployments"

mkdir $SCRIPTS_DIR || true

echo -e "Generating deployment scripts from templates ..."
for file in templates/*.template
do
  YAML_FILE=$(echo $file | sed 's/.template//g'| sed 's/templates\///g')
  envsubst < $file | sed 's/{REPLACE_WITH_DOLLER}/\$/g' > $SCRIPTS_DIR/$YAML_FILE
done

kubectl apply -Rf $SCRIPTS_DIR 

sleep 10

echo -e "\n##########################################################\n"
echo -e "To verify all pods status run, kubectl get pods "
echo -e "To access service run, minikube service mediawiki-frontend"
echo -e "\n##########################################################\n"
