#!/bin/bash

export XDEBUG_CONFIG="idekey=eclipse-xdebug remote_host=localhost"
export USE_GOOGLE_STORAGE=true

# Linux
dev_appserver.py --php_executable_path=/usr/bin/php-cgi --php_remote_debugging=yes .
#dev_appserver.py --php_remote_debugging=yes .
