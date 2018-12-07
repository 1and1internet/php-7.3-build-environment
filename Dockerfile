FROM ubuntu:18.04
MAINTAINER developmentteamserenity@fasthosts.com

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
      software-properties-common \
      tzdata \
      curl \
      unzip \
      git \
      jq \
    && add-apt-repository -y ppa:ondrej/php \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
      php7.3-bcmath \
      php7.3-bz2 \
      php7.3-cli \
      php7.3-curl \
      php7.3-gd \
      php7.3-intl
      php7.3-json \
      php7-3-ldap \
      php7.3-mbstring \
      php7.3-mysql \
      php7.3-opcache \
      php7.3-readline \
      php7.3-sqlite3 \
      php7.3-xml \
      php7.3-zip \
      php-redis \
      php-amqp \
    && apt-get purge -y \
      software-properties-common \
    && apt-get autoremove --purge -y \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app/
RUN chown 1000:1000 /app
USER 1000
ENV HOME /tmp

COPY --chown=1000:1000 --from=composer:latest /usr/bin/composer /usr/bin/composer
