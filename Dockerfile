# Используем официальный образ MySQL 8.0
FROM mysql:8.0

# Устанавливаем пароль для root пользователя
ENV MYSQL_ROOT_PASSWORD=root

# Создаем базу данных и пользователя
ENV MYSQL_DATABASE=itransition_task4
ENV MYSQL_USER=muhammad
ENV MYSQL_PASSWORD=root

# Открываем порт для подключения к MySQL
EXPOSE 3306

# Указываем entrypoint для запуска MySQL сервера
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["mysqld"]
