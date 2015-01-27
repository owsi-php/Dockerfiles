FROM cbrun/httpd

MAINTAINER Christophe Brun <christophe.brun@openwide.fr>

RUN yum -y install wget tar gzip subversion community-mysql && yum clean all

RUN svn co svn://svn.noparking.net/usr/local/svn/plugins/openwide  --username ow-phpdev@openwide.fr --password ui6#0FKoM*YI && \
mkdir -p /data/services/web/opentime && \
cp -r openwide/opentime/* /data/services/web/opentime/ && \
cp -r openwide/plugins/openwide /data/services/web/opentime/plugins/ && \
ln -s /data/services/web/opentime /var/www/html/opentime && \
chown apache:apache /var/www/html -R

ADD post_install.sh post_install.sh

EXPOSE 80

CMD ["/bin/bash", "/start.sh"]
