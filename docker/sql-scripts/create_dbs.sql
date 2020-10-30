DROP DATABASE IF EXISTS support_system;
CREATE DATABASE support_system;

CREATE USER 'jare'@'localhost' IDENTIFIED BY 'jare';
CREATE USER 'jare'@'%' IDENTIFIED BY 'jare';
CREATE USER 'liquibase'@'localhost' IDENTIFIED BY 'jare';
CREATE USER 'liquibase'@'%' IDENTIFIED BY 'jare';

GRANT SELECT,INSERT,UPDATE,EXECUTE ON support_system.* TO 'jare'@'localhost';
GRANT SELECT,INSERT,UPDATE,EXECUTE ON support_system.* TO 'jare'@'%';

GRANT SUPER ON *.* TO 'liquibase'@'localhost';
GRANT SUPER ON *.* TO 'liquibase'@'%';

GRANT ALL ON support_system.* TO 'liquibase'@'localhost';
GRANT ALL ON support_system.* TO 'liquibase'@'%';
