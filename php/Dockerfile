FROM php:7.3-fpm


COPY php.ini /usr/local/etc/php/php.ini

RUN mkdir -p /var/local/squirrelmail/data && \
    chown -R www-data:www-data /var/local/squirrelmail/data && \
    chmod -R 770 /var/local/squirrelmail/data


RUN docker-php-ext-install pdo pdo_mysql
RUN apt-get update && apt-get -y install \apt-utils nano wget dialog vim
RUN echo "Install important libraries"
RUN apt-get -y install --fix-missing \
    apt-utils \
    build-essential \
    git \
    curl \
    libcurl4 \
    libcurl4-openssl-dev \
    zlib1g-dev \
    libzip-dev \
    zip \
    libbz2-dev \
    locales \
    libmcrypt-dev \
    libicu-dev \
    libonig-dev \
    libxml2-dev



RUN apt-get clean && rm -rf /var/lib/apt/lists/*


WORKDIR /var/www/html

EXPOSE 9000


RUN chown -R www-data:www-data /var/www/html && chmod -R 755 /var/www/html


CMD ["php-fpm"]