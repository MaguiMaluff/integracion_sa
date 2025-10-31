# Usamos JDK 17 slim
FROM openjdk:17-jdk-slim

# Carpeta de trabajo
WORKDIR /app

# Copiamos el .jar generado por Maven
COPY target/*.jar app.jar

# Copiamos el logback personalizado
COPY src/main/resources/logback-spring.xml logback-spring.xml

# Exponemos el puerto 8080
EXPOSE 8080

# Ejecutamos la app
ENTRYPOINT ["java", "-jar", "app.jar"]
