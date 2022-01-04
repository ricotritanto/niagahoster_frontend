FROM alpine:3.10
RUN apk --no-cache add \
	wget \
	curl \
    php7 \
    php7-curl \
    php7-iconv \
    php7-json \
    php7-mbstring \
    php7-openssl \
    php7-phar \
    php7-dom \
    php7-xml \
    php7-tokenizer \
    php7-xmlwriter \
    php7-session \
    bash \
    git

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer
# RUN curl -sS https://getcomposer.org/installer -o |php -- --install-dir=/usr/bin --filename=composer
WORKDIR /usr/src/niagahoster

ADD . /usr/src/niagahoster
RUN ls -la
# RUN composer update
CMD [ "composer", "start" ]
