# Database Dockerfile

FROM mariadb:10

# ADDED UPDATE AND INSTALL STRACE AND RM
RUN sudo apt-get update && \
	apt-get -y --no-install-recommends install strace && \
	rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/docker-entrypoint.sh]

COPY configfiles/mysqld.cnf  /mysql/mysql.conf.d/mysqld.cnf

EXPOSE 3306
