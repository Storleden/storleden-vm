#!/bin/bash

composer

echo "export PATH=$PATH:$HOME/.config/composer/vendor/bin" >> $HOME/.bashrc
