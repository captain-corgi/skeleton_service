FROM openjdk:8-jre-alpine
RUN mkdir /skeleton_service /skeleton_service/log \
	&& chmod 777 /skeleton_service/log
COPY build/skeleton_service.jar /skeleton_service/
ADD build/skeleton_service.jar skeleton_service.jar
WORKDIR /skeleton_service

ENTRYPOINT ["java", "-jar","-Dspring.profiles.active=${TARGET_ENV}", "-Dspring.datasource.username=${DB_USER_NAME}", "-Dspring.datasource.password=${DB_PASSWORD}", "skeleton_service.jar"]