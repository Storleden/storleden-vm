#!/bin/bash

curl http://files.drush.org/drush.phar -L -o drush.phar

chmod +x drush.phar

mv drush.phar /usr/bin/drush

su - vagrant -c "drush init"
