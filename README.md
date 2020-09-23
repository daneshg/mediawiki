_**MediaWiki 1.34.2 deployment on Minikube.**_
    
**Layout**
* apache2-php: Web module required for mediawiki
* mysql: Database, backend module required for mediawiki
* deployments: Kubernetes scripts to deploy mediawiki

**Steps to Deploy**
* minikube start
* Modify configuration according to your need
    * apache-config, contains config related to apache
    * mysqldb-secret contains config related to mysql
    * site-config contains config related to Site. Make sure to update **_SITE_URL_**
* Update image location accordingly ...
* ./run.sh
* minikube service mediawiki-frontend (Append /mediawiki to URL)


