# Dekorate Challenge

You can just run ./buildDeployJib.sh to deploy a jib generated image to openshift

Steps:
```
oc login --token=sha256~sK6nbIf_akoRM2xooo4bX85Dy5DxnvT0eXqoTfP73is --server=https://api.cluster-gbsmc.gbsmc.sandbox13.opentlc.com:6443
oc project user7-challenge2
mvn clean package -DskipTests -Ddekorate.build=true -Ddekorate.deploy=true
```

Image source and destination is defined in pom.xml (used dockerhub public repo https://hub.docker.com/repository/docker/dgonzalosgt/redcat-dekorate-challenge-jib)
