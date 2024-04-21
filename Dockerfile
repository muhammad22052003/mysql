# ���������� ����������� ����� MySQL 8.0
FROM mysql:8.0

# ������������� ������ ��� root ������������
ENV MYSQL_ROOT_PASSWORD=root

# ������� ���� ������ � ������������
ENV MYSQL_DATABASE=itransition_task4
ENV MYSQL_USER=muhammad
ENV MYSQL_PASSWORD=root

# ��������� ���� ��� ����������� � MySQL
EXPOSE 3306

# ��������� entrypoint ��� ������� MySQL �������
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["mysqld"]
