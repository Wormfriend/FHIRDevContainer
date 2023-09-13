FROM node:latest 
RUN apt update
RUN apt install openjdk-17-jdk openjdk-17-demo openjdk-17-doc openjdk-17-jre-headless openjdk-17-source -y
RUN apt install ruby-full build-essential -y
RUN npm install -g fsh-sushi
WORKDIR /fhir-ig-publisher
RUN wget https://github.com/HL7/fhir-ig-publisher/releases/latest/download/publisher.jar
WORKDIR /workspaces/fsh_seminar
RUN git clone https://github.com/FSHSchool/courses-fsh-seminar-exercise.git
RUN echo "alias publisher='java -jar /fhir-ig-publisher/publisher.jar'" >> ~/.bashrc