FROM php:8.1-alpine

RUN wget -O /usr/local/bin/php-cs-fixer https://cs.symfony.com/download/php-cs-fixer-v3.phar
RUN chmod 755 /usr/local/bin/php-cs-fixer

ENTRYPOINT ["/usr/local/bin/php-cs-fixer","fix"]
