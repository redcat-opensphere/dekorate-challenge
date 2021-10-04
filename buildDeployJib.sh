oc login --token=sha256~qyzY-3-eqI2-2YY72n11XzpejROte7MJDySI1IdxLWg --server=https://api.cluster-gbsmc.gbsmc.sandbox13.opentlc.com:6443
#IMAGE=image-registry.openshift-image-registry.svc:5000/user7-challenge2/redcat-dekorate-challenge
#mvn compile jib:build -Dimage=$IMAGE -Dmaven.wagon.http.ssl.insecure=true -Djib.to.auth.username=user7 -Djib.to.auth.password=openshift

# https://github.com/GoogleContainerTools/jib/tree/master/examples/spring-boot
mvn clean package -Ddekorate.build=true -DskipTests -Dmaven.wagon.http.ssl.insecure=true -Djib.to.auth.username=unused -Djib.to.auth.password=sha256~d4UFMMAFIRig8vPUP4BpkJ6Hkj9bHFR824e0mObXOV4