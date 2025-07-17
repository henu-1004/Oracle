/*
날짜 : 2025.07.17
이름 : 서현우
내용 : 5장 데이터베이스 객체
*/
--워크북p13
--실습하기3-1
select * from dictionary;
select table_name from user_tables;
select owner, table_name from all_tables;
select table_name from all_tables;
select * from dba_tables;
select * from dba_users;

//4 3-2
select * from user_indexes;
select * from user_ind_columns;

--실슿바기 3-3
select * from user_ind_columns;
create index idx_user1 on USER1(USER_ID);
select * from user_ind_columns;

drop index idx_user1;
select *from user_ind_columns;

-- 시습하기 3-6 view
create view vw_user1 as (select name, hp, age from user1);
create view vw_user2_age_under30 as (select * from user2 where age <30);
select * from user_views;

--실습하기 3-7. 뷰조회
select * from vw_user1;
select * from vw_uwer2_age_under30; 

--뷰드랍
drop view vw_user1;
drop view vw_user2_age_under30;


--실습하기 3-9
create table user6(
    seq number primary key,
    name varchar2(20),
    gender char(1),
    age number,
    addr varchar2(255)
);

--3-10
create SEQUENCE seq_user6 increment by 1 start with 1;

--3-11
insert into user6 values (seq_user6.nextval, '김유신', 'M', 25, '김해시');
insert into user6 values (seq_user6.nextval, '김춘추', 'M', 23, '경주시');
insert into user6 values (seq_user6.nextval, '신사임당', 'F', 27, '강릉시');




