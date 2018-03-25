FROM jenkins/jenkins:lts

USER root

RUN  apt update \
     && apt install -y apt-transport-https \
        ca-certificates \
        curl \
        gnupg2 \
        software-properties-common \
        && curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - \
     && add-apt-repository \
        "deb [arch=amd64] https://download.docker.com/linux/debian \
        $(lsb_release -cs) \
        stable" \
     && apt update && apt install -y docker-ce docker-compose \
     && apt autoremove -y --purge curl software-properties-common \
     && rm -rf /var/lib/apt/lists && rm -rf /var/cache/apt* \
     && echo "jenkins ALL=(ALL:ALL) NOPASSWD:ALL" >> /etc/sudoers \
     && usermod -aG sudo jenkins

USER jenkins
