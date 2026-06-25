FROM ubuntu:latest

WORKDIR /srv/netuno

# Install base packages
RUN apt-get update \
  && apt-get install -y curl wget unzip software-properties-common gnupg vim

# Install node
RUN curl -L https://raw.githubusercontent.com/tj/n/master/bin/n -o /usr/local/bin/n \
  && chmod +x /usr/local/bin/n \
  && n lts

# Install bun
ENV BUN_INSTALL=/usr/local
RUN curl -fsSL https://bun.sh/install | bash

# Install java
RUN apt-get update \
  && apt-get install -y openjdk-11-jdk \
  && echo "JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64" >> /root/.bashrc \
  && echo 'PATH="$JAVA_HOME/bin:$PATH"' >> /root/.bashrc

# Install netuno
RUN wget https://github.com/netuno-org/platform/releases/download/stable/netuno-setup.jar -O netuno-setup.jar \
  && java -jar netuno-setup.jar install
