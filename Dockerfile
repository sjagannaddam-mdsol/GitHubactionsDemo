FROM openjdk-8
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} HelloWorldECS.jar
ENTRYPOINT ["java","-jar","/HelloWorldECS.jar"]