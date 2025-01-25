FROM jenkins/jenkins:lts

USER root

# Установим необходимые зависимости
RUN apt-get update && apt-get install -y \
    build-essential \
    rpm \
    dpkg-dev \
    dh-make \
    curl \
    git

# Добавим рабочую директорию
WORKDIR /var/jenkins_home

USER jenkins
