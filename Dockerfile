FROM gradle:8-jdk17 AS build
WORKDIR /app
COPY . .
RUN gradle build --no-daemon

FROM azul/zulu-openjdk:17

WORKDIR /app

COPY --from=build /app/build/libs/*.jar  /app/notificacao.jar

EXPOSE 8082

CMD ["java", "-jar", "/app/notificacao.jar"]