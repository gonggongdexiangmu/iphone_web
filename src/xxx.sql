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
--��ѯ-----------------------------------------------------------




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
--��ѯ-----------------------------------------------------------




--��ǩ
create table label(
	label_id varchar(50),
	label_name varchar(50)

)default charset=utf8;

--����-----------------------------------------------------------------
insert into label value('1','����');
--��ѯ-----------------------------------------------------------



--�ղ�
create table collections(
	collections_id varchar(50),
	goods_id varchar(50)

)default charset=utf8;

--����-----------------------------------------------------------------
insert into collections value('sz11111','d11111');
--��ѯ-----------------------------------------------------------



--��Ƶ
create table video(
	video_id varchar(50),
	video_url varchar(50),
	goods_id varchar(50)

)default charset=utf8;

--����---------------------------------------------------------------
insert into video value('v11111','dddd','d11111')
--��ѯ-----------------------------------------------------------



--ͼƬ
create table photo(
	photo_id varchar(50),
	goods_id varchar(50),
	photo_url varchar(50)

)default charset=utf8;

--����------------------------------------------------------------
insert into photo value('p11111','d11111','ssdds');
--��ѯ-----------------------------------------------------------




