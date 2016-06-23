#!/bin/bash

echo "export PATH=\$PATH:\$HOME/.config/composer/vendor/bin" >> $HOME/.bashrc

echo '' >> $HOME/.bashrc

echo 'function composer() { COMPOSER="$(which composer)" || { echo "Could not find composer in path" >&2 ; return 1 ; } && sudo phpdismod -s cli xdebug ; $COMPOSER "$@" ; STATUS=$? ; sudo phpenmod -s cli xdebug ; return $STATUS ; }' >> $HOME/.bashrc

echo '' >> $HOME/.bashrc
