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
* Update **_image_** location accordingly in, frontend and backend yaml respectively. 
* ./run.sh
* minikube service mediawiki-frontend (Append /mediawiki to URL)


Note: 
* Not for production deployment; $wgSecretKey is exposed in Localsettings.php 
 