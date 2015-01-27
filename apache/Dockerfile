FROM fedora:21
MAINTAINER "Christophe Brun" <christophe.brun.cl194@gadz.org>

RUN yum -y update && yum -y install httpd supervisor php php-imap php-mcrypt php-gd php-pear-Net-Curl php-mysqlnd php-pear && yum clean all

ADD start.sh /start.sh
RUN chmod -v +x /start.sh && echo "Apache" >> /var/www/html/index.html

EXPOSE 80
ADD supervisord.conf /etc/supervisord.conf


CMD ["/start.sh"]

