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
select * from board

create table gBoard(
	num int not null auto_increment,
	sendE varchar(100),
	receiveE varchar(100),
	message varchar(2000),
	m_date datetime default now(),
	primary key(num)
);
