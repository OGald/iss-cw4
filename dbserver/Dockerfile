# Database Dockerfile

FROM mariadb:10

COPY configfiles/mysqld.cnf  /mysql/mysql.conf.d/mysqld.cnf

EXPOSE 3306

#Needed for persitance, adding here but haven't tested
# This should run the container as the mysql user therefore meaning the db doesn't need to 
USER mysql
# CMD ["/usr/sbin/mariadbd"]
