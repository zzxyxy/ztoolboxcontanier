FROM ubuntu:22.10

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt -y install git gnupg2 vim mc zsh inetutils-ping net-tools openssh-client curl wget iproute2 nmap ncat jq
RUN curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash
RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
RUN install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
RUN git clone https://github.com/ahmetb/kubectx /opt/kubectx
RUN ln -s /opt/kubectx/kubectx /usr/local/bin/kubectx
RUN ln -s /opt/kubectx/kubens /usr/local/bin/kubens
