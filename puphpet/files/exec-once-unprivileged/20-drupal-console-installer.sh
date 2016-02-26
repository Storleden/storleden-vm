#!/bin/bash

composer global require drupal/console

chmod +x $HOME/.config/composer/vendor/bin/drupal

drupal init --override
