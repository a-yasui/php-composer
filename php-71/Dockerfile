FROM php:7.1-cli

# install need files : https://docs.docker.jp/engine/articles/dockerfile_best-practice.html#run

# Install php-ext
RUN apt-get update \
	&& apt-get -y install git zip unzip libzip-dev zlib1g-dev libicu-dev libonig-dev libpq-dev libfreetype6-dev libjpeg62-turbo-dev libpng-dev \
	&& docker-php-ext-configure gd --with-freetype --with-jpeg \
	&& docker-php-ext-install -j$(nproc) gd intl mbstring pdo_mysql zip \
	&& 	apt-get clean && rm -rf /var/lib/apt/lists/*


# Install Composer
ENV COMPOSER_ALLOW_SUPERUSER 1
COPY --from=composer /usr/bin/composer /usr/bin/composer

ENTRYPOINT ["docker-php-entrypoint"]
CMD ["php" "-a"]
