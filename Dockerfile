FROM drupal:9.0-fpm-alpine
MAINTAINER Brian DeCamp <brian@dharmasangha.org>

RUN apk update && \
    apk add bash \
        php7-mbstring \
        php7-tokenizer \
        php7-phar \
        wget;

WORKDIR /opt/drupal

RUN composer require \
    drupal/group \
    drupal/addtoany \
    drupal/password_policy \
    drupal/admin_toolbar \
    drupal/google_analytics \
    drupal/schema_metatag \
    drupal/scheduler \
    drupal/geocoder \
    drupal/pathauto \
    drupal/google_tag \
    drupal/yoast_seo

