#!usr/bin/env bash

service postfix restart
service dovecot restart

cron -f