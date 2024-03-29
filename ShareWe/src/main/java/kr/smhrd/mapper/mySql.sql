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

<<<<<<< HEAD
=======
select * from g_board;
select * from c_board;
>>>>>>> branch 'main' of https://github.com/2021-SMHRD-KDT-AI-17/ShareByuS.git
select * from c_board;

select * from member;
select email from member;

alter table c_board drop c_img2;
alter table c_board drop c_img3;

select * from member;
select * from g_board;
select * from c_board;

select * from approve;

delete from member where email= 'tpwlsdl';

delete from g_board where category='2';

select *from g_favorite;
insert into g_favorite(email, g_num, g_f_date) values('didtpwls8@naver.com', 7, NOW());
