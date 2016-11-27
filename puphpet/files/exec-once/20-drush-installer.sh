#!/bin/bash

php -r "readfile('https://s3.amazonaws.com/files.drush.org/drush.phar');" > drush

chmod +x drush

sudo mv drush /usr/local/bin

curl https://raw.githubusercontent.com/drush-ops/drush/master/drush.complete.sh -L -o /etc/bash_completion.d/drush.complete.sh
