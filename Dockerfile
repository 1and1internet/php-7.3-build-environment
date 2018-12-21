FROM 1and1internet/php-7.2-build-environment:latest
MAINTAINER developmentteamserenity@fasthosts.com

USER root

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get purge -y \
      php7.2-common \
    && DEBIAN_FRONTEND=noninteractive apt-get autoremove --purge -y \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
      php7.3-bcmath \
      php7.3-bz2 \
      php7.3-cli \
      php7.3-curl \
      php7.3-gd \
      php7.3-intl \
      php7.3-json \
      php7.3-ldap \
      php7.3-mbstring \
      php7.3-mysql \
      php7.3-opcache \
      php7.3-readline \
      php7.3-sqlite3 \
      php7.3-xml \
      php7.3-zip \
      php-amqp \
      php-redis \
      software-properties-common \
    && DEBIAN_FRONTEND=noninteractive apt-get purge -y \
      software-properties-common \
    && DEBIAN_FRONTEND=noninteractive apt-get autoremove --purge -y \
    && rm -rf /var/lib/apt/lists/*

USER 1000