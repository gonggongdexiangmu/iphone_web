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
insert into goods value('d33333','�����ֱ�','2015-9-1','1,2','2','ֻ�ܴ���','y','��Ʒ');
--��ѯ------------------------------------------------------------------
select * from goods



--��ǩ
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
insert into photo value('p34444','d33333','luowei/luowei01002.jpg');
insert into photo value('p35555','d33333','luowei/luowei01003.jpg');
--��ѯ------------------------------------------------------------
select * from photo where goods_id=
--ɾ��--------------------------------------------------------------
delete from photo where photo_id='p11111'


select l.label_name from goods g left join label l on g.label_id=l.label_id where g.label_id='1'




