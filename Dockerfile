FROM openjdk:20
ENV MONGO_URI=mongodb://localhost:27017/my-db
LABEL maintainer="bitbytejoy@gmail.com"
EXPOSE 8080
ADD backend/target/backend-0.0.1-SNAPSHOT.jar app.jar
CMD [ "sh", "-c", "java -jar /app.jar" ]

