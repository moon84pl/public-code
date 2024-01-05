FROM debian

WORKDIR /var/www/html
COPY wordpress/ ./
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install apache2 -y
RUN apt -y install wget lsb-release apt-transport-https ca-certificates
RUN wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
RUN echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/php.list
RUN apt update
RUN apt-get install -y php8.2 php8.2-dom php8.2-simplexml php8.2-ssh2 php8.2-xml php8.2-xmlreader php8.2-curl php8.2-imagick php8.2-exif php8.2-ftp php8.2-gd php8.2-iconv php8.2-mbstring php8.2-mysqli php8.2-posix php8.2-sockets php8.2-tokenizer php8.2-zip php8.2-ssh2 php8.2-memcache php8.2-memcached
RUN chown -R www-data:www-data .
RUN a2enmod rewrite
RUN a2enmod proxy
RUN a2enmod proxy_fcgi
RUN a2enmod env
RUN a2enmod expires
RUN a2enmod headers
EXPOSE 80
CMD apachectl -D FOREGROUND

