Installation
============

Après le fig up, il est nécessaire de lancer le script de post installation :

.. code-block:: shell

    docker exec [containerid] sh post_installation.sh

Ce script :
* Création de la base de données sur le docker mysql
* Initialisation des données depuis le script opentime : sql/content.sql
* Mise à jour des fichiers de configuration dans le docker front
