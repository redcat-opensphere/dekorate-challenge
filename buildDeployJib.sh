oc login --token=sha256~sK6nbIf_akoRM2xooo4bX85Dy5DxnvT0eXqoTfP73is --server=https://api.cluster-gbsmc.gbsmc.sandbox13.opentlc.com:6443
oc project user7-challenge2
mvn clean package -DskipTests -Ddekorate.build=true