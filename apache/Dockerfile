FROM fedora:21
MAINTAINER "Christophe Brun" <christophe.brun.cl194@gadz.org>

RUN yum -y update 
RUN yum -y install httpd supervisor
RUN yum -y install php php-imap php-mcrypt php-gd php-pear-Net-Curl php-mysqlnd php-pear 
RUN yum clean all

RUN echo "Apache" >> /var/www/html/index.html

EXPOSE 80
ADD supervisord.conf /etc/supervisord.conf

ADD start.sh /start.sh
RUN chmod -v +x /start.sh

CMD ["/start.sh"]

