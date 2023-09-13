FROM node:latest 
WORKDIR /app
RUN git clone https://github.com/HL7/fhir-ig-publisher.git
RUN apt update
RUN apt install openjdk-17-jdk openjdk-17-demo openjdk-17-doc openjdk-17-jre-headless openjdk-17-source -y
RUN apt install maven -y
RUN npm install -g fsh-sushi
WORKDIR /app/fhir-ig-publisher
RUN mvn -Dmaven.test.skip -Dproject.build.sourceEncoding=UTF-8 -Dproject.reporting.outputEncoding=UTF-8 install
RUN cp /app/fhir-ig-publisher/org.hl7.fhir.publisher.cli/target/org.hl7.fhir.publisher.cli-*-SNAPSHOT.jar /app/fhir-ig-publisher/org.hl7.fhir.publisher.cli/target/publisher.jar
RUN echo "alias publisher='java -jar /app/fhir-ig-publisher/org.hl7.fhir.publisher.cli/target/publisher.jar'" >> ~/.bashrc
