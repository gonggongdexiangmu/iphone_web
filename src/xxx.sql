--用户表
create table userip(
	userip_id varchar(50) primary key,
	userip_name varchar(50),
	userip_realname varchar(50),
	userip_pwd varchar(50),
	userip_right varchar(50),
	collections_id varchar(50)
)default charset=utf8;

--插入--------------------------------------------------------------------------
insert into userip value('11111','luowei','罗威','112345','1','sz11111');
--查询--------------------------------------------------------------------------
select * from userip



--物品表
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

--插入------------------------------------------------------------------
insert into goods value('d11111','手机','2015-9-1','1','2','非常牛逼','y','sd');
--查询------------------------------------------------------------------
select * from goods



--标签
create table label(
	label_id varchar(50),
	label_name varchar(50)

)default charset=utf8;

--插入-----------------------------------------------------------------
insert into label value('1','好用');
--查询-------------------------------------------------------------------
select * from label


--收藏
create table collections(
	collections_id varchar(50),
	goods_id varchar(50)

)default charset=utf8;

--插入-----------------------------------------------------------------
insert into collections value('sz11111','d11111');
--查询-------------------------------------------------------------------
select * from collections


--视频
create table video(
	video_id varchar(50),
	video_url varchar(50),
	goods_id varchar(50)

)default charset=utf8;

--插入---------------------------------------------------------------
insert into video value('v11111','dddd','d11111')
--查询-----------------------------------------------------------------
select * from video


--图片
create table photo(
	photo_id varchar(50),
	goods_id varchar(50),
	photo_url varchar(50)

)default charset=utf8;

--插入------------------------------------------------------------
insert into photo value('p11111','d11111','ssdds');
--查询------------------------------------------------------------
select * from photo



select l.label_name from goods g left join label l on g.label_id=l.label_id where g.label_id='1'




