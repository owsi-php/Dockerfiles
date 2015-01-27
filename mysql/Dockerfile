FROM fedora:21
MAINTAINER "Christophe Brun" <christophe.brun.cl194@gadz.org>

RUN yum -y update && yum -y install community-mysql-server community-mysql supervisor && yum clean all

ADD supervisord.conf /etc/supervisord.conf
ADD start.sh /start.sh
ADD config_mysql.sh /config_mysql.sh

RUN chmod 755 /start.sh &&  chmod 755 /config_mysql.sh  && /config_mysql.sh

EXPOSE 3306

CMD ["/bin/bash","/start.sh"]
