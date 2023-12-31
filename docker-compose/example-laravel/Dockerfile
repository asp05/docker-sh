FROM php:8.1-fpm
# Arguments defined in docker-compose.yml
ARG user
ARG uid

# Install Supervisor
RUN apt-get update && apt-get install -y supervisor

# Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    locales \
    zip \
    jpegoptim optipng pngquant gifsicle \
    vim \
    libzip-dev \
    unzip \
    git \
    libonig-dev \
    curl
 


# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install extensions
RUN docker-php-ext-install pdo_mysql mbstring zip exif pcntl
RUN docker-php-ext-configure gd --with-freetype --with-jpeg
RUN docker-php-ext-install gd

# Get latest Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Create system user to run Composer and Artisan Commands
RUN useradd -G www-data,root -u $uid -d /home/$user $user
RUN mkdir -p /home/$user/.composer && \
    chown -R $user:$user /home/$user

# Salin file konfigurasi Supervisor
COPY schedule/supervisor-cron.conf /etc/supervisor/conf.d/cron.conf

# Buat log file untuk cron
RUN touch /var/log/cron.log

# Set working directory
WORKDIR /var/www

# Atur perintah yang akan dijalankan saat kontainer berjalan
CMD ["supervisord", "-n"]
