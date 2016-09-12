#!/bin/bash

php_version=$(php -v | awk '/^PHP/{match($0,"[0-9].[0-9]",a)}END{ print a[0] }')

touch /etc/php/$php_version/mods-available/xdebug.ini

echo '[XDEBUG]' > /etc/php/$php_version/mods-available/xdebug.ini

find /etc/php/$php_version/mods-available -name 'z*_custom.ini' -exec grep xdebug {} \; >> /etc/php/$php_version/mods-available/xdebug.ini
find /etc/php/$php_version/mods-available -name 'z*_custom.ini' -exec sed -i '/xdebug/d' {} \;
