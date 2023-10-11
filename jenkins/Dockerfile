FROM jenkins/jenkins
USER root

# Устанавливаем необходимые зависимости
RUN apt-get update && apt-get install -y curl lsb-release

# Устанавливаем Docker CLI с помощью скрипта
RUN curl -fsSL https://get.docker.com | sh

# Добавляем репозиторий Docker
RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.asc] https://download.docker.com/linux/debian $(lsb_release -cs) stable" > /etc/apt/sources.list.d/docker.list

# Устанавливаем ключ для репозитория Docker
RUN curl -fsSLo /usr/share/keyrings/docker-archive-keyring.asc https://download.docker.com/linux/debian/gpg

RUN curl -fsSL https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose

USER jenkins

