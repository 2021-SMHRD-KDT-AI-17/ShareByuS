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

select * from g_board;

select * from member;
select email from member;

alter table g_board drop g_img2;
alter table g_board drop g_img3;

select * from member;
select * from g_board;

select * from approve;
