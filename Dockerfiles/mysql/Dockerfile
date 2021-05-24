FROM debian


# Install server
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install mariadb-server procps -y 
RUN /bin/bash /etc/init.d/mysql start
CMD ["mysqld"]
