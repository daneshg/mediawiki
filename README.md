_**MediaWiki 1.34.2 deployment on Minikube.**_
    
**Layout**
* apache2-php: Web module required for mediawiki
* mysql: Database, backend module required for mediawiki
* templates: Kubernetes scripts to deploy mediawiki

Modify configuration according to your need
   * apache-config, contains config related to apache
   * mysqldb-secret contains config related to mysql
   * site-config contains config related to Site. Make sure to update **_SITE_URL_**
    
**Steps to deploy**

        Update environment variables in run.sh
        
        set following variables
         
        Optional:
            * SITE_NAME: defaults to "My MediaWiki"
            * NODE_PORT: defaults to 30003
        Mandatory:
            * APACHE_IMAGE_FULL_PATH, Apache-php image 
            * MYSQL_IMAGE_FULL_PATH, Mysql Image
        
        minikube start
        ./run sh
        
        To list pods status:
        * kubectl get pods
         
        To access mediawiki service
        * minikube service mediawiki-frontend 


Note: 
* Not for production deployment
    * $wgSecretKey is exposed in Localsettings.php
    * HostPath is used
    * Running as privileged:true 
 