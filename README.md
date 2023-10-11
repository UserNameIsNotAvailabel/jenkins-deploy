# Project description
Here is the project, that  create and push a docker image of simple "Hello_world!" python application, followed by deployment this application, using Jenkins multibrunch pipline

In branch **main** there is a **jenkins** folder with Dockerfile, which create an image with Jenkins, docker and docker-compose.

With Jenkins_old file you can build and push an app image, push it into docker hub repository and, using docker-compose.yml file deploy the application by pulling created image from docker-hub (from **main** brunch).

Jenkinsfile file have same instructions but with "push to release brunch" condition.

The Hello_world.xml file is the export of the Jenkins multiline pipline, to import it use following command:
```
java -jar jenkins-cli.jar -s http://localhost:9090 create-job main < Helo_world.xml
```

_Note_: Replace *http://localhost:9090* with your Jenkins client URL


# Self-review

In this task I use Docker-In-Docker method. There is a not very good decision, because there is a Docker plugin exists in Jenkins, but I spend a lot of time trying to manage it, and didn't succeed. 
