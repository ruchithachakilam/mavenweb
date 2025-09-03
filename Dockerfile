# Use official Tomcat image
FROM tomcat:9.0

# Set working directory inside the container
WORKDIR /usr/local/tomcat/webapps/

# Copy the WAR file into Tomcat’s webapps folder (optional step, can be done via volume mount instead)
COPY target/maven_web-app.war ./ROOT.war

# Start Tomcat (default CMD from tomcat image is catalina.sh run, but we'll set explicitly)
CMD ["catalina.sh", "run"]
