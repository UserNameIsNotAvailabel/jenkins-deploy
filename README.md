# Project description
Here is the project, that  create and push a docker image of simple "Hello_world!" python application, followed by deployment this application using Jenkins multibrunch pipline on a localhost

In branch **main** there is a **jenkins** folder with Dockerfile, which create an image with Jenkins, docker and docker-compose.

With Jenkins_old file was used for build and push an app image into docker hub repository and, using docker-compose.yml file deploy the application by pulling created image from docker-hub (from **main** brunch).

Jenkinsfile file have same instructions but with "push to release brunch" condition.

nginx configuration for this task:

```
    server {
        listen       80;
        server_name  localhost;

        #charset koi8-r;

        #access_log  logs/host.access.log  main;

        location / {
            root   /usr/share/nginx/html;
            index  index.html index.htm;
            include proxy_params;
            proxy_pass http://hello_world.py:8080
```

The Hello_world.xml file is the export of the Jenkins multiline pipline, to import it use following command:
```
java -jar jenkins-cli.jar -s http://localhost:9090 create-job main < Helo_world.xml
```

_Note_: Replace *http://localhost:9090* with your Jenkins client URL


# Self-review

In this task I use Docker-In-Docker method. There is a not very good decision, because there is a Docker plugin exists in Jenkins, but I spend a lot of time trying to manage it, and didn't succeed. 
