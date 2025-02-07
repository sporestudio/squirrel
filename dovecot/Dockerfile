FROM debian:latest

RUN apt update && apt install -y \
    cron \
    dovecot-core \
    dovecot-imapd \
    nano \
    iproute2 \
    systemctl \
    mailutils \
    mutt \
    debconf \
    wget


COPY files/dovecot.conf /etc/dovecot/dovecot.conf
COPY files/10-mail.conf /etc/dovecot/conf.d/10-mail.conf
COPY files/10-auth.conf /etc/dovecot/conf.d/10-auth.conf

RUN chmod 644 /etc/dovecot/dovecot.conf && \
    chmod 644 /etc/dovecot/conf.d/10-mail.conf && \
    chmod 644 /etc/dovecot/conf.d/10-auth.conf


EXPOSE 25 143 587 993

CMD ["dovecot","-F"]