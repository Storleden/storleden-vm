#!/bin/bash

composer global require drush/drush

chmod +x $HOME/.config/composer/vendor/bin/drush

drush init
