# ����������� ����������� ����� MySQL
FROM mysql:latest

# ���������� ������ ��� ������������ root
ENV MYSQL_ROOT_PASSWORD=root

# �������� ���� ������ � ������������
ENV MYSQL_DATABASE=itransition_task4
ENV MYSQL_USER=muhammad
ENV MYSQL_PASSWORD=root

# �������� ��� ������ ������������� � ����� /docker-entrypoint-initdb.d
ADD init.sql /docker-entrypoint-initdb.d

# �������� ���� ��� ����������� � MySQL
EXPOSE 3306

# ������� �� ��������� ��� ������� ����������
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["mysqld"]
