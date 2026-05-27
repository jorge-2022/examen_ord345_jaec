# Paso 1: Usamos una imagen ligera de Linux con Java 23 ya instalado
FROM eclipse-temurin:23-jre-alpine

# Paso 2: Creamos el directorio de trabajo dentro del contenedor
WORKDIR /app

# Paso 3: COPY EXPLÍCITO del archivo .jar generado por Maven en la carpeta target
# Tomamos el nombre exacto de tu artefacto del pom.xml
COPY target/examen-ord-ra345-1.0.0.jar app.jar

# Paso 4: Exponemos el puerto por el que escucha Spring Boot de manera estándar
EXPOSE 8080

# Paso 5: Comando para arrancar la aplicación al encender el contenedor
ENTRYPOINT ["java", "-jar", "app.jar"]
