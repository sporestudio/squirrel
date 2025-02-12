# Mail Server using SquirrelMail

Deployment of a Mail Server using Docker conatainers.

## Features

- **Postfix**: SMTP Server to send mails.
- **Dovecot**: IMAP Server to recieve mails.
- **SquirrelMail**: Web interface to management mails.
- **Nginx**: Web server for Squirrelmail access.

## Requirements

- **Docker Compose**.
- **Docker**.
- **Unix-based system**.
- **Valid Domain** to mail server.

## Setup

#### Clone the repository

- First you have to clone this repo in your local machine.

```bash
$ git clone https://github.com/sporestudio/squirrel
$ cd squirrel/
```

#### Deploy the project

- Once we have our repo cloned, we can deploy the project using Docker Compose.

```bash
$ docker-compose up -d --build
```


## LICENSE

This project is under GNU General Public License - [see details](https://github.com/sporestudio/squirrel/blob/main/LICENSE)

## Author

This repository was created by [sporestudio](https://github.com/sporestudio)