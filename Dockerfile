FROM debian:latest

#ENV SSH_AUTH_SOCK /ssh-agent

RUN apt-get update
RUN apt-get install -y \
  dnsutils \
  net-tools \
  openssh-server \
  telnet \
  inetutils-ping \
  vim \
  nano \
  less \
  dnsutils \
  tcpdump \
  apache2 

#mariadb-client php php-intl php-mbstring php-xml php-apcu php-curl php-mysql

LABEL version="1.1"
LABEL description="M&I"

EXPOSE 22
EXPOSE 80/tcp

COPY index.html /var/www/html/index.html

CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
