FROM cbrun/httpd

MAINTAINER Christophe Brun <christophe.brun@openwide.fr>

RUN yum -y install wget tar gzip

RUN wget http://joomlacode.org/gf/download/frsrelease/19918/161802/Joomla_2.5.28-Stable-Full_Package.tar.gz
RUN mkdir Joomla; cd Joomla; tar xvf ../Joomla_2.5.28-Stable-Full_Package.tar.gz
RUN cp -r /Joomla/* /var/www/html/
RUN rm /var/www/html/index.html
RUN chown apache:apache /var/www/html -R

EXPOSE 80

CMD ["/bin/bash", "/start.sh"]
