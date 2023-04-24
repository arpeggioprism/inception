FROM        alpine:3.16

RUN         apk update && \
            apk upgrade && \
            apk add openrc mysql mysql-client curl

EXPOSE      3306

RUN			mkdir -p /run/mysqld /auth_pam_tool_dir/auth_pam_tool /var/lib/mysql && \
            chown -R mysql:mysql /run/mysqld && \
			chown -R mysql:mysql /auth_pam_tool_dir/auth_pam_tool && \
            chown -R mysql:mysql /var/lib/mysql

COPY        ./script/mariadb.sh /tmp/mariadb.sh
COPY        ./config/mariadb-server.conf /etc/my.cnf.d/mariadb-server.cnf

CMD         ["sh", "tmp/mariadb.sh"]
