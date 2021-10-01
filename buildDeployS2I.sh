oc login --token=sha256~1EZRCdsrHxX_xL3yvZZcHKNnh5fxGWTyeg8ml0-lP9c --server=https://api.cluster-gbsmc.gbsmc.sandbox13.opentlc.com:6443
oc project user7-challenge2
mvn clean package
oc apply -f target/classes/META-INF/dekorate/openshift.y./buiml