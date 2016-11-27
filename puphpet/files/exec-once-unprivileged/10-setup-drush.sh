#!/bin/bash

mkdir -pv ${HOME}/.drush

curl https://raw.githubusercontent.com/drush-ops/drush/master/examples/example.drushrc.php -L -o ${HOME}/.drush/drushrc.php

