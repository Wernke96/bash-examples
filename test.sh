#!/bin/sh
set -e

if [ -f "tools/phpunit" ]; then
    PHPUNIT=tools/phpunit
elif [ -f "vendor/bin/phpunit" ]; then
    PHPUNIT=vendor/bin/phpunit
else
    PHPUNIT=phpunit
fi

$PHPUNIT "$@"
