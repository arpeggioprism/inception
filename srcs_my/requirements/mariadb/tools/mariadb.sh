mysql_install_db --user=${MYSQL_USER} --basedir=${MYSQL_BASEDIR} --datadir=${MYSQL_DATADIR}

/usr/bin/mysqld --user=${MYSQL_USER} --bootstrap << EOF
use mysql;
flush privileges;

alter user 'root'@'localhost' identified by '$MYSQL_ROOT_PASSWORD';
flush privileges;

create database $MYSQL_NAME;
create user '$MYSQL_USER'@'%' identified by '$MYSQL_PASSWORD';
grant all privileges on $MYSQL_NAME.* to '$MYSQL_USER'@'%';

flush privileges;
EOF

echo this is endpoint!

exec /usr/bin/mysqld --user=mysql --console	
