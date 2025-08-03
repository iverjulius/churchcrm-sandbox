FROM php:8.1-apache

# Install PHP extensions required by ChurchCRM
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copy project files
COPY . /var/www/html/

# Set permissions
RUN chown -R www-data:www-data /var/www/html && chmod -R 755 /var/www/html

# Enable Apache rewrite module
RUN a2enmod rewrite
