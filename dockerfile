FROM php:8.1-apache

# Скопировать файлы проекта в контейнер
COPY . /var/www/html/

# Разрешить .htaccess (если используете)
RUN a2enmod rewrite

EXPOSE 80
CMD ["apache2-foreground"]
