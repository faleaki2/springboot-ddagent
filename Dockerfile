FROM springbootapp-git:latest
COPY dd-java-agent.jar /deployments
ENTRYPOINT ["java" , "-javaagent:/deployments/dd-java-agent.jar", "-jar" , "/deployments/hello-0.0.1-SNAPSHOT.jar"]
