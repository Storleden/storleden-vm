#!/bin/bash

echo "export PATH=\$PATH:\$HOME/.config/composer/vendor/bin" >> $HOME/.bashrc

echo '' >> $HOME/.bashrc

echo 'function composer() { COMPOSER="$(which composer)" || { echo "Could not find composer in path" >&2 ; return 1 ; } && sudo phpdismod -s cli xdebug ; sudo -u www-data $COMPOSER "$@" ; STATUS=$? ; sudo phpenmod -s cli xdebug ; return $STATUS ; }' >> $HOME/.bashrc
echo 'function drush() { DRUSH="$(which drush)" || { echo "Could not find drush in path" >&2 ; return 1 ; } && sudo phpdismod -s cli xdebug ; sudo -u www-data $DRUSH "$@" ; STATUS=$? ; sudo phpenmod -s cli xdebug ; return $STATUS ; }' >> $HOME/.bashrc
echo 'function drupal() { DRUPAL="$(which drupal)" || { echo "Could not find drupal in path" >&2 ; return 1 ; } && sudo phpdismod -s cli xdebug ; sudo -u www-data $DRUPAL "$@" ; STATUS=$? ; sudo phpenmod -s cli xdebug ; return $STATUS ; }' >> $HOME/.bashrc

echo '' >> $HOME/.bashrc

