# Используйте официальный образ MySQL
FROM mysql:latest

# Установите пароль для пользователя root
ENV MYSQL_ROOT_PASSWORD=root

# Создайте базу данных и пользователя
ENV MYSQL_DATABASE=itransition_task4
ENV MYSQL_USER=muhammad
ENV MYSQL_PASSWORD=root

# Добавьте ваш скрипт инициализации в папку /docker-entrypoint-initdb.d
ADD init.sql /docker-entrypoint-initdb.d

# Откройте порт для подключения к MySQL
EXPOSE 3306

# Команда по умолчанию при запуске контейнера
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["mysqld"]
