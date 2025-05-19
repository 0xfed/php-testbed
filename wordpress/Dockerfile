FROM wordpress:6.0.1-php8.1-apache
ADD --chmod=0755 https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/
#RUN install-php-extensions uopz
RUN install-php-extensions xdebug-^3@stable
RUN install-php-extensions krakjoe/uopz@master
COPY docker-php-ext-xdebug.ini $PHP_INI_DIR/conf.d/
RUN echo "uopz.exit=1" >> $PHP_INI_DIR/conf.d/docker-php-ext-uopz.ini
RUN echo "opcache.optimization_level=0" >> $PHP_INI_DIR/conf.d/docker-php-ext-opcache.ini
COPY custom.ini $PHP_INI_DIR/conf.d/
#RUN sed -i "s@require ABSPATH . WPINC . '/kses.php'@require_once ABSPATH . WPINC . '/kses.php'@g" /usr/src/wordpress/wp-settings.php
#RUN sed -i "s@require ABSPATH . WPINC . '/kses.php'@require_once ABSPATH . WPINC . '/kses.php'@g" /usr/src/wordpress/wp-includes/load.php
