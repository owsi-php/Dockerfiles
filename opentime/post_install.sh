
sed -e "s/config\['root_url'\] = \"\"/config['root_url'] = \"http:\/\/localhost\/opentime\"/" \
    -e "s/dbconfig\['host'\] = \"localhost\"/dbconfig['host'] = \"mysql_server\"/" \
    -e "s/dbconfig\['user'\] = \"\"/dbconfig['user'] = \"opentime\"/" \
    -e "s/dbconfig\['pass'\] = \"\"/dbconfig['pass'] = \"opentime\"/" \
    /data/services/web/opentime/cfg/config.inc.php.dist >/data/services/web/opentime/cfg/config.inc.php

cp /data/services/web/opentime/cfg/param.inc.php.dist /data/services/web/opentime/cfg/param.inc.php

mysql -h mysql_server -u root -pmysqlPassword <<__ENDQUERY__
create database opentime character set 'utf8' collate utf8_general_ci;
grant all on opentime.* to 'opentime'@'%' identified by 'opentime';
flush privileges;
__ENDQUERY__

mysql -h mysql_server -u root -pmysqlPassword -e "show databases;"

mysql -f -h mysql_server -u opentime -popentime opentime </data/services/web/opentime/sql/content.sql
