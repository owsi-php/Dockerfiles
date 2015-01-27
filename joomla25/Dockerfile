FROM cbrun/httpd

MAINTAINER Christophe Brun <christophe.brun@openwide.fr>

RUN yum -y install wget tar gzip && yum clean all

RUN wget http://joomlacode.org/gf/download/frsrelease/19918/161802/Joomla_2.5.28-Stable-Full_Package.tar.gz && \
mkdir Joomla; cd Joomla; tar xvf ../Joomla_2.5.28-Stable-Full_Package.tar.gz && \
cp -r /Joomla/* /var/www/html/ && \
rm /var/www/html/index.html && \
chown apache:apache /var/www/html -R

EXPOSE 80

CMD ["/bin/bash", "/start.sh"]
