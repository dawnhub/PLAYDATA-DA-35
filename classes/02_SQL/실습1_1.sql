-- create database testdb;
show databases;
use testdb;
-- 회원 테이블 : member, 
-- 속성 : id, password, name, point , email, gender, age, join_data

drop table if exists member; -- 멤버가 존재하면 테이블 삭제
create table member(
	id varchar(10) primary key,
    password varchar(10) not null,
    name varchar(50) not null,
    point int default 1000, -- 값을 넣지 않으면 1000을 기본값으로 넣어준다.
    email varchar(100) unique,
    gender char(1) check(gender in ('M','F')), -- char(1)일때는  1 생략가능
	age int check(age > 0),
	join_date timestamp not null default current_timestamp -- 관례적으로 데이터가만들어진 시기는 creat_at
															-- defaule current timestamp 값을 넣는 sql이 실행되는 시점의 일시를 넣는다.
);

-- 데이터를 추가(행추가)
-- 전체 칼럼에 다 값을 넣을 경우 칼럼 명은 생략 가능.
-- 문자열: 작은따옴표 '' 로 감싼다.
-- 일시 : '' 감싼다. '년-월-일 시:분:초'
insert into member values('id-1', 'abe111','이순신', 2000, 'abc@a.com', 'M', 
										'20', '2000-10-02 10:10:20');
insert into member (id, password, name) values('id-2', '11111', '이서희');

select * from member;


/*
create table 이름(
칼럼 이름 데이터 타입 제약조건
)
*/

	