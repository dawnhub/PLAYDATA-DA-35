-- 주석
/*
여러줄주석
control+enter
*/

create user 'playdata'@'localhost' identified by '1111';
grant all privileges on *.* to 'playdata'@'%';
