FROM debian:latest

RUN apt update && apt install -y \
    cron \
    nano \
    iproute2 \
    systemctl \
    mailutils \
    mutt \
    debconf \
    wget

RUN echo "postfix postfix/mailname string spore.test" | debconf-set-selections
RUN echo "postfix postfix/main_mailer_type string 'localhost'" | debconf-set-selections

RUN apt-get install postfix -y

RUN touch /var/log/mail.log && chmod 666 /var/log/mail.log

RUN useradd -m -p '$1$74DwVVAy$6FwmhPYyVGeKB999en7I61' mengano && \
    useradd -m -p '$1$8mn2mnKJ$axLiAO6ocmx2fT9MR1DSF1' fulano

COPY files/main.cf /etc/postfix/main.cf

EXPOSE 25 143 587 993

CMD ["postfix", "start-fg"]