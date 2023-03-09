
    #here openjdk is docker image for Java 11, as in pom.xml Java version is 11
    FROM openjdk
    #creating a working directory inside the image
    WORKDIR usr/lib
    #setting environment variable same name that are there in application.properties file
    ENV MONGO_DATABASE=ProductDb
    ENV MONGO_URL=mongodb://localhost:27017/ProductDb
    #Copy executable jar file getting created inside target and add it in usr/lib working director
    ADD ./target/customer-0.0.1.jar /usr/lib/customer-0.0.1.jar
    #Run the jar file
    ENTRYPOINT ["java","-jar","customer-0.0.1.jar"]