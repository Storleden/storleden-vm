#!/bin/bash

echo "export PATH=\$PATH:\$HOME/.config/composer/vendor/bin" >> $HOME/.bashrc

echo '' >> $HOME/.bashrc

echo 'function composer() { COMPOSER="$(which composer)" || { echo "Could not find composer in path" >&2 ; return 1 ; } && sudo php5dismod -s cli xdebug ; $COMPOSER "$@" ; STATUS=$? ; sudo php5enmod -s cli xdebug ; return $STATUS ; }' >> $HOME/.bashrc

echo '' >> $HOME/.bashrc
