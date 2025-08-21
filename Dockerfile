# 1. 베이스 이미지 선택: Java 17을 실행할 수 있는 가벼운 환경
FROM openjdk:17-jdk-slim

# 2. 빌드된 .jar 파일의 경로를 인수로 지정
ARG JAR_FILE=build/libs/*.jar

# 3. 위 경로의 .jar 파일을 컨테이너 내부로 app.jar 라는 이름으로 복사
COPY ${JAR_FILE} app.jar

# 4. 컨테이너가 시작될 때 실행할 명령어
ENTRYPOINT ["java", "-jar", "/app.jar"]