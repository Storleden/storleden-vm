#!/bin/bash

curl -sS https://getcomposer.org/installer | php

chmod +x composer.phar

mv composer.phar /usr/local/bin/composer
