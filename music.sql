SET NAMES UTF8;
DROP DATABASE IF EXISTS music;
CREATE DATABASE music CHARSET=UTF8;
use music;
CREATE TABLE t_hot(
    hid INT PRIMARY KEY AUTO_INCREMENT,
    hmusic  VARCHAR(30) NOT NULL DEFAULT '',
    sing  VARCHAR(50) NOT NULL DEFAULT '',
    lcount VARCHAR(20),
    hname   VARCHAR(50) NOT NULL DEFAULT '',
    pic     VARCHAR(30) NOT NULL DEFAULT ''
);
INSERT INTO t_hot VALUES
(null,'res/music01.mp3','Ѧ֮ǫ-��ʿ','23��','|������־|�������������Զ��·','images/tuijian01.jpg'),
(null,'res/music02.mp3','����γ���ű̳�-����','55��','EDC2017?��˹ά��˹������-�ֳ��赥','images/tuijian02.jpg'),
(null,'res/music03.mp3','Kalimba','46��','����/Ӱ����Ӱ��ԭ��������Ⱥ�����','images/tuijian03.jpg'),
(null,'res/music04.mp3','Maid with the Flaxen Hair','1234','�ڶ��� - Ӱ�ӹ�','images/tuijian04.jpg'),
(null,'res/music05.mp3','Sleep Away','3456','������ | R&B�����ȱ���','images/tuijian05.jpg'),
(null,'res/music06.mp3','Kalimba','14299','�滺����а�����','images/tuijian06.jpg'),
(null,'res/music07.mp3','����˵-������������ӱ','456��','����ϵ/ȼ��������ϷʱBGM����Ҫ��','images/tuijian07.jpg'),
(null,'res/music08.mp3','�Ҵ�����-����','234��','�����橣�����˭������޸�˭','images/tuijian08.jpg'),
(null,'res/music09.mp3','��˹�-Ѧ֮ǫ','34567','������֮�͡�ȡ�ǳ�֮����ҫ�ķ�','images/tuijian09.jpg'),
(null,'res/music01.mp3','Ѧ֮ǫ-��ʿ','7890','����������ȼ���','images/tuijian10.jpg'),
(null,'res/music02.mp3','����γ���ű̳�-����','45��','��ҡح��������ǰ��ɫ��','images/tuijian11.jpg'),
(null,'res/music03.mp3','Kalimba','78��','�� һ�𱳵���ح�ļ��ʻ㡽','images/tuijian12.jpg'),
(null,'res/music04.mp3','Maid with the Flaxen Hair','5678','����������û����ɣ�','images/tuijian13.jpg'),
(null,'res/music05.mp3','Sleep Away','156��','��ʮ��������ҹ������ָ��','images/tuijian14.jpg'),
(null,'res/music06.mp3','Kalimba','23��','�����橣�����˭������޸�˭','images/tuijian15.jpg'),
(null,'res/music07.mp3','����˵-������������ӱ','7896','��Щһ�����ɾͰ��ϵ�ŷ������','images/tuijian16.jpg'),
(null,'res/music08.mp3','�Ҵ�����-����','34567','��ҥ�� ��Щ�Ż�����Ĵ�����Ů������','images/tuijian17.jpg'),
(null,'res/music09.mp3','��˹�-Ѧ֮ǫ','89��','����ӽʷ��������ʷ�����ŷ������','images/tuijian18.jpg'),
(null,'res/music01.mp3','Ѧ֮ǫ-��ʿ','11134','������̹�ˣ���Ҫ��ս������ÿ�ո��£�','images/tuijian19.jpg'),
(null,'res/music02.mp3','����γ���ű̳�-����','6785','Vol.126 - ������֮��:Teen pop','images/tuijian20.jpg'),
(null,'res/music03.mp3','Kalimba','3456','�ִ�������Ұ�����Ტ����黰','images/tuijian21.jpg'),
(null,'res/music04.mp3','Maid with the Flaxen Hair','90055','�Ҷ�Ը����ҹ��������һյãȻ','images/tuijian22.jpg'),
(null,'res/music05.mp3','Sleep Away','27','ˬ��������������ˮϴ����������ȵ����飡','images/tuijian23.jpg');

use music;
CREATE TABLE t_user(
	uid INT PRIMARY KEY AUTO_INCREMENT,
	uname VARCHAR(50) NOT NULL DEFAULT '',
	email VARCHAR(50) NOT NULL DEFAULT '',
	upwd VARCHAR(32) NOT NULL DEFAULT '',
	regtime DATETIME
);
INSERT INTO t_user VALUES(null,'amei','1233445@qq.com','74567464','2011-11-11');
INSERT INTO t_user VALUES(null,'tom','4657657@163.com','123','2012-11-11');
INSERT INTO t_user VALUES(null,'music','3445@qq.com','456','2013-11-11');
INSERT INTO t_user VALUES(null,'mary','7777@163.com','789','2014-11-11');
