Post Installation
=================

Après l'installation de Joomla via l'interface web, il faut supprimer le répertoire d'installation pour que joomla puisse afficher le site

.. code-block:: bash

    docker exec [containerId] rm -rf /var/www/html/installation
