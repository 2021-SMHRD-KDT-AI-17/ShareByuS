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
select * from c_board;
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
select * from c_favorite where c_num=1 and email ='didtpwls8@naver.com'

delete from g_board where category='2';

select *from g_favorite;
delete from c_favorite where email = 'fuck'
select *from c_favorite;
insert into c_favorite(email, c_num, c_f_date) values('didtpwls8@naver.com', 1, NOW());
