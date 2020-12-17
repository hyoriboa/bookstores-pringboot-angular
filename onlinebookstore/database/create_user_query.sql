create user 'bookstoredev'@'localhost' identified by 'bookstoredev';

grant all privileges on * . * to 'bookstoredev'@'localhost';

alter user 'bookstoredev'@'localhost' identified with mysql_native_password by 'bookstoredev';