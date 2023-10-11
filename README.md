# Project description
Here is the project, that  create and push a docker image of simple "Hello_world!" python application, followed by deployment this application, using Jenkins multibrunch pipline

In branch **main** there is a **jenkins** folder with Dockerfile, which create an image with Jenkins, docker and docker-compose.

With Jenkins_old file you can build and push an app image, push it into docker hub repository and, using docker-compose.yml file deploy the application by pulling created image from docker-hub (from **main** brunch).

Jenkinsfile file have same instructions but with "push to release brunch" condition.
