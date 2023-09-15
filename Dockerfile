FROM node:latest 
RUN apt update
RUN apt -y install openjdk-17-jdk openjdk-17-demo openjdk-17-doc openjdk-17-jre-headless openjdk-17-source
RUN apt -y install ruby-full build-essential zlib1g-dev
RUN apt -y install graphviz
RUN npm install -g fsh-sushi
WORKDIR /fhir-ig-publisher
RUN wget https://github.com/HL7/fhir-ig-publisher/releases/latest/download/publisher.jar
RUN echo "alias publisher='java -jar /fhir-ig-publisher/publisher.jar'" >> ~/.bashrc
RUN echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
RUN echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
RUN echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
RUN gem install jekyll bundler
WORKDIR /fsh_seminar
RUN git clone https://github.com/FSHSchool/courses-fsh-seminar-exercise.git
WORKDIR /fsh_seminar/courses-fsh-seminar-exercise
RUN ./_updatePublisher.sh
WORKDIR /scripts
RUN wget https://dot.net/v1/dotnet-install.sh -O dotnet-install.sh
RUN bash ./dotnet-install.sh --version latest
RUN echo 'export DOTNET_ROOT="$HOME/.dotnet"' >> ~/.bashrc
RUN echo 'export PATH="$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools"' >> ~/.bashrc
RUN $HOME/.dotnet/dotnet tool install -g firely.terminal