FROM openjdk:11
WORKDIR /app
COPY target/*.jar /app/petclinic.jar
CMD ["java", "-jar", "/app/petclinic.jar"]