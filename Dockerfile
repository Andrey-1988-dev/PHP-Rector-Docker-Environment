# Use PHP 8.3 CLI image
FROM php:8.3-cli

# Copy Composer from the official image
COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

# Update the system and install necessary packages
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git unzip

# Install PHP extensions
RUN docker-php-ext-install pdo pdo_mysql

# Set the working directory to /app
WORKDIR /app

# Copy rector.php and composer.json into the working directory
COPY rector.php /app/
COPY composer.json /app/

# Install dependencies with Composer
RUN composer install

# Start PHP in interactive mode
CMD ["php", "-a"]