create table member(
  type int,
  email varchar(50),
  pw varchar(50),
  name varchar(50),
  nick varchar(50),
  address varchar(100),
  tel varchar(50),
  primary key(email)
);

drop table member;

select * from member;