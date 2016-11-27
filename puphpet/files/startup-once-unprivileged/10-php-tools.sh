#!/bin/bash

composer global config minimum-stability beta

composer global require hirak/prestissimo --prefer-dist --optimize-autoloader --sort-packages
