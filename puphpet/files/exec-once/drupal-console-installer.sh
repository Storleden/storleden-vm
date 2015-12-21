#!/bin/bash

curl https://drupalconsole.com/installer -L -o drupal.phar

chmod +x drupal.phar

mv drupal.phar /usr/bin/drupal

su - vagrant -c "drupal init"
