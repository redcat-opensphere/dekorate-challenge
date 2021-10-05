# Dekorate Challenge

You can just run ./buildDeployS2I.sh to deploy a s2i generated image to openshift

Steps:
```
oc login --token=sha256~sK6nbIf_akoRM2xooo4bX85Dy5DxnvT0eXqoTfP73is --server=https://api.cluster-gbsmc.gbsmc.sandbox13.opentlc.com:6443
oc project user7-challenge2
mvn clean package
oc apply -f target/classes/META-INF/dekorate/openshift.y./buiml
```

Image destination is openshift registry at default-route-openshift-image-registry.apps.cluster-gbsmc.gbsmc.sandbox13.opentlc.com/user7-challenge2/redcat-dekorate-challenge

