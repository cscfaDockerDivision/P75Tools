apt-get install -y curl \
        libcurl3 \
        libcurl3-dev \
        libjpeg-dev \
        libpng16-dev \
        libgcrypt11-dev \
        zlib1g-dev \
        libmcrypt-dev \
        libxml2-dev \
        pkg-config \
        wget \
	libcurl4-openssl-dev \
	libssl-dev \
	libsslcommon2-dev

mkdir /usr/local/src/php7.1.1

wget http://ch1.php.net/get/php-7.1.1.tar.bz2/from/this/mirror -O /usr/local/src/php7.1.1/php-7.1.1.tar.bz2

cd /usr/local/src/php7.1.1

tar -xjf php-7.1.1.tar.bz2

cd /usr/local/src/php7.1.1/php-7.1.1

./configure --prefix=/usr/local/php-7.1.1 \
        --with-mysql \
        --with-mysqli \
        --enable-intl \
        --with-curl \
        --with-gd \
        --with-mcrypt \
        --enable-soap \
        --with-zlib \
        --with-pdo-mysql \
        --with-jpeg-dir=/usr/lib/x86_64-linux-gnu \
        --with-png-dir=/usr/lib/x86_64-linux-gnu \
        --enable-opcache \
        --with-openssl

make && make install

ln -s /usr/local/php-7.1.1/bin/php /usr/bin/php71

cp /usr/local/src/php7.1.1/php-7.1.1/php.ini-production /usr/local/php-7.1.1/lib/php.ini

sed -i '/;date.timezone =/c\date.timezone = '\''Europe/Luxembourg'\' /usr/local/php-7.1.1/lib/php.ini
sed -i '/memory_limit = 128M/c\memory_limit = 256M' /usr/local/php-7.1.1/lib/php.ini

