# Database Dockerfile

FROM mariadb:10

COPY configfiles/mysqld.cnf  /mysql/mysql.conf.d/mysqld.cnf
COPY configfiles/docker-entrypoint.sh /usr/bin/docker-entrypoint.sh
COPY configfiles/docker-entrypoint.sh /

RUN chmod +x /usr/bin/docker-entrypoint.sh && \
chmod +x /docker-entrypoint.sh

RUN rm -r /etc/mysql/conf.d && \
	mkdir /etc/mysql/conf.d

EXPOSE 3306



