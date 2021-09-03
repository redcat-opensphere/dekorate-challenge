# Dekorate Challenge

## Introduction

The main goal will be for you to deploy a Spring Boot Application in OpenShift using Dekorate for generating and customizing its OpenShift manifests.
The purpose of this challenge is to demonstrate the following:

- How you can use the openshift-spring-starter which contains all the required modules, including the annotation processors that detect spring web applications.
- How Dekorate detects that this is a web app and automatically configures services.
- How you can trigger a container image build after the compilation.

If you have never used Dekorate before, I recommend checking the [Dekorate github repository](https://github.com/dekorateio/dekorate#readme) where you will find a complete documentation of the project with plenty of [examples](https://github.com/dekorateio/dekorate/tree/master/examples). 
There also are a couple of very useful blog posts to have a global vision about how to use Dekorate:
- [Dekorate for creating K8s manifests](https://developers.redhat.com/blog/2019/08/15/how-to-use-dekorate-to-create-kubernetes-manifests)
- [Dekorate for frameworkless applications](https://developers.redhat.com/blog/2021/03/17/using-dekorate-to-generate-kubernetes-manifests-for-java-applications)


## Set up
As this exercise is focused on the deployment of a simple Spring Boot Microservice Application, you are provided with the code for the  application. It is a minimal Hello World application based on Spring Boot. The code is available on the `src` folder of this repo.
Navigate to the directory and build the project by running the following command:
```
mvn package
```
You can launch the application by running `mvn spring-boot:run` or `java -jar target/dekorate-challenge-1.0-SNAPSHOT.jar`.
Then, open a browser to [http://localhost:8080](http://localhost:8080) and verify that the `Hello world` message is shown. Now you are set for starting to use Dekorate.

Once you have done the needed actions to enable and configure Dekorate, the OpenShift manifests are available in the `target/classes/META-INF/dekorate` directory. As mentioned in the different documentation resources, it is generated at every `mvn compile` launching.

## Bonus track (optional)
This challenge comes with 1 bonus track where you will learn how to configure the image build strategy that OpenShift will use. Apart from S2I for OpenShift, Dekorate currently supports Docker and Jib as image build strategies, feel free to choose one of them to complete this part.

Remember to deploy the application on the OpenShift cluster using the manifests generated by Dekorate. 


## Help
Once the manifests have been generated under the `target/classes/META-INF/dekorate` directory, you can deploy the application to the OpenShift cluster by running the following commands:
```shell
oc login
oc apply -f target/classes/META-INF/dekorate/openshift.yml
```
Or if you prefer, you can also use the hooks provided by Dekorate ;-) and do it in a single step:

```shell
mvn clean package -Ddekorate.build=true -Ddekorate.push=true -Ddekorate.deploy=true
```
Note that depending on the Image Build strategy you are using some of these flags might not be needed. Also, you may need to be logged in to an Image Registry in order to be able to push the container image.

As deliverables, we would like to have the url of the Spring Boot Application deployed on OpenShift and a github repository containing the code that you should have modified to generate/customize the OpenShift manifests.

I will be joinable during the Developer Games to resolve any doubts or questions you may have.
Happy Developer Games!
