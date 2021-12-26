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
RUN apt-get install -y php7.4 php7.4-dom php7.4-gmagick php7.4-simplexml php7.4-ssh2 php7.4-xml php7.4-xmlreader php7.4-curl php7.4-exif php7.4-ftp php7.4-gd php7.4-iconv php7.4-json php7.4-mbstring php7.4-mysqli php7.4-posix php7.4-sockets php7.4-tokenizer php7.4-zip php7.4-ssh2 php7.4-memcache php7.4-memcached
RUN chown -R www-data:www-data .
RUN a2enmod rewrite
RUN a2enmod proxy
RUN a2enmod proxy_fcgi
EXPOSE 80
CMD apachectl -D FOREGROUND

