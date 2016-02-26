#!/bin/bash

composer global require drupal/console

chmod +x $HOME/.config/composer/vendor/bin/drush

drupal init --override
