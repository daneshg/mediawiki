FROM mysql:5.7
COPY tables.sql /docker-entrypoint-initdb.d/tables.sql 

ENV MYSQL_ROOT_PASSWORD \
    MYSQL_USER          \
    MYSQL_PASSWORD      \
    MYSQL_DATABASE      \
    MYSQL_HOSTNAME
