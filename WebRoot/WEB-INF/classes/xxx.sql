--�û���
create table userip(
	userip_id varchar(50) primary key,
	userip_name varchar(50),
	userip_realname varchar(50),
	userip_pwd varchar(50),
	userip_right varchar(50),
	collections_id varchar(50)
)default charset=utf8;

--����--------------------------------------------------------------------------
insert into userip value('11111','luowei','����','112345','1','sz11111');
--��ѯ--------------------------------------------------------------------------
select * from userip



--��Ʒ��
create table goods(
	goods_id varchar(50),
	goods_name varchar(50),
	create_time varchar(50),
	label_id varchar(50),
	zan varchar(20),
	goods_text varchar(50),
	goods_ishead varchar(20),
	goods_state varchar(20)

)default charset=utf8;

--����------------------------------------------------------------------
insert into goods value('d11111','�ֻ�','2015-9-1','1','2','�ǳ�ţ��','y','sd');
insert into goods value('d22222','ƽ��','2015-9-1','2','2','����ǿ��','n','����');
insert into goods value('d33333','�����ֱ�','2015-9-1','1,2','2','ֻ�ܴ���','n','��Ʒ');
insert into goods value('d44444','���ܼҾ�','2015-9-1','1,2','2','ֻ�ܴ���','n','��Ʒ');
insert into goods value('d55555','�����ֱ�','2015-9-1','1,2','2','ֻ�ܴ���','y','��Ʒ');
insert into goods value('d66666','ƽ��','2015-9-1','1,2,3','2','ֻ�ܴ���','n','��Ʒ');
insert into goods value('d77777','�����ֱ�','2015-9-1','1,2,3','2','ֻ�ܴ���','n','��Ʒ');
insert into goods value('d88888','�����ֱ�','2015-9-1','1,2','2','ֻ�ܴ���','n','��Ʒ');

--��ѯ------------------------------------------------------------------
select * from goods where goods_state='��������' limit 5,5 

update goods set goods_state='��������' where goods_id='d44444';


--��ǩ------------------
create table label(
	label_id varchar(50),
	label_name varchar(50)

)default charset=utf8;

--����-----------------------------------------------------------------
insert into label value('1','����');
insert into label value('2','������');
insert into label value('3','�߾���');
--��ѯ-------------------------------------------------------------------
select * from label


--�ղ�
create table collections(
	collections_id varchar(50),
	goods_id varchar(50)

)default charset=utf8;

--����-----------------------------------------------------------------
insert into collections value('sz11111','d11111');
insert into collections value('sz22222','d22222');
insert into collections value('sz22222','d33333');
insert into collections value('sz11111','d66666');
--��ѯ-------------------------------------------------------------------
select * from collections


--��Ƶ
create table video(
	video_id varchar(50),
	video_url varchar(50),
	goods_id varchar(50)

)default charset=utf8;

--����---------------------------------------------------------------
insert into video value('v11111','dddd','d11111')

--��ѯ-----------------------------------------------------------------
select * from video


--ͼƬ
create table photo(
	photo_id varchar(50),
	goods_id varchar(50),
	photo_url varchar(50)

)default charset=utf8;

--����------------------------------------------------------------
insert into photo value('p11111','d11111','luowei/luowei00000.jpg');
insert into photo value('p22222','d22222','luowei/luowei10000.jpg');
insert into photo value('p33333','d33333','luowei/luowei01001.jpg');

insert into photo value('p34444','d33333','luowei/luowei33333.jpg');

insert into photo value('p35555','d44444','luowei/luowei10003.jpg');

insert into photo value('p36666','d44444','luowei/luowei10005.jpg');

insert into photo value('p37777','d55555','luowei/luowei10006.jpg');
insert into photo value('p38888','d55555','luowei/luowei77777.jpg');
insert into photo value('p39999','d66666','luowei/luowei88888.jpg');
insert into photo value('p40000','d33333','luowei/luowei11111.jpg');

insert into photo value('p40001','d77777','luowei/luowei11112.jpg');
insert into photo value('p40002','d88888','luowei/luowei22222.jpg');
--��ѯ------------------------------------------------------------
select * from photo where goods_id='p37777'
--ɾ��--------------------------------------------------------------
delete from photo where photo_id='p37777'


select l.label_name from goods g left join label l on g.label_id=l.label_id where g.label_id='1'

select count(*) from goods where goods_state='��Ʒ'


