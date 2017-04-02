FROM ubuntu:16.04
RUN apt-get purge `dpkg -l | grep php| awk '{print $2}' |tr "\n" " "`
RUN apt-get -y update
RUN apt-get -y install software-properties-common
RUN add-apt-repository ppa:ondrej/php
RUN apt-get -y update && apt-get install apache2 libapache2-mod-php5.6 php5.6 php5.6-mysql mysql-server
