FROM drupal:9.0-fpm-alpine
MAINTAINER Brian DeCamp <brian@dharmasangha.org>

RUN apk update && \
    apk add bash \
        php7-mbstring \
        php7-tokenizer \
        php7-phar \
        wget;

# Required by commerce_stripe, and maybe commerce_google_tag_manager
RUN docker-php-ext-install bcmath;

WORKDIR /opt/drupal

ENV COMPOSER_MEMORY_LIMIT=-1

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
    drupal/yoast_seo \
    drupal/commerce_stripe \
    drupal/commerce_google_tag_manager \
    drupal/backup_migrate:5.0.0-rc2;



