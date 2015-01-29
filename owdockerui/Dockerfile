FROM fedora:21
MAINTAINER "Christophe Brun" <christophe.brun.cl194@gadz.org>

RUN yum -y update && yum -y install python-pip && yum -y clean all
RUN mkdir -p /data/services/dockerui
COPY ./ /data/services/dockerui/
ADD start.sh /start.sh
RUN pip install -r /data/services/dockerui/requirements.txt

EXPOSE 4000

CMD ["/bin/bash", "/start.sh"]
