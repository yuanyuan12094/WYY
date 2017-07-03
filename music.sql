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
(null,'res/music01.mp3','薛之谦-绅士','23万','|华语励志|用最初的心走最远的路','images/tuijian01.jpg'),
(null,'res/music02.mp3','杨宗纬，张碧晨-凉凉','55万','EDC2017?拉斯维加斯电音节-现场歌单','images/tuijian02.jpg'),
(null,'res/music03.mp3','Kalimba','46万','【中/影】电影里原来还有这等好音乐','images/tuijian03.jpg'),
(null,'res/music04.mp3','Maid with the Flaxen Hair','1234','第二季 - 影子鬼','images/tuijian04.jpg'),
(null,'res/music05.mp3','Sleep Away','3456','晕音乐 | R&B的慢热被窝','images/tuijian05.jpg'),
(null,'res/music06.mp3','Kalimba','14299','舒缓空灵邪恶教义','images/tuijian06.jpg'),
(null,'res/music07.mp3','不可说-霍建华，赵丽颖','456万','【日系/燃曲】玩游戏时BGM的重要性','images/tuijian07.jpg'),
(null,'res/music08.mp3','匆匆那年-王菲','234万','主播姗姗：你是谁决定你嫁给谁','images/tuijian08.jpg'),
(null,'res/music09.mp3','丑八怪-薛之谦','34567','【万神之纪】取星辰之辉来耀四方','images/tuijian09.jpg'),
(null,'res/music01.mp3','薛之谦-绅士','7890','清凉集｜零度记忆','images/tuijian10.jpg'),
(null,'res/music02.mp3','杨宗纬，张碧晨-凉凉','45万','后摇丨想象你眼前的色彩','images/tuijian11.jpg'),
(null,'res/music03.mp3','Kalimba','78万','【 一起背单词丨四级词汇〗','images/tuijian12.jpg'),
(null,'res/music04.mp3','Maid with the Flaxen Hair','5678','我这样唱你没意见吧？','images/tuijian13.jpg'),
(null,'res/music05.mp3','Sleep Away','156万','八十八星座｜夜空漫游指南','images/tuijian14.jpg'),
(null,'res/music06.mp3','Kalimba','23万','主播姗姗：你是谁决定你嫁给谁','images/tuijian15.jpg'),
(null,'res/music07.mp3','不可说-霍建华，赵丽颖','7896','那些一听旋律就爱上的欧美音乐','images/tuijian16.jpg'),
(null,'res/music08.mp3','匆匆那年-王菲','34567','民谣Ⅰ 那些才华横溢的创作型女歌手们','images/tuijian17.jpg'),
(null,'res/music09.mp3','丑八怪-薛之谦','89万','歌以咏史：承载历史记忆的欧美歌曲','images/tuijian18.jpg'),
(null,'res/music01.mp3','薛之谦-绅士','11134','给我辆坦克，我要上战场！（每日更新）','images/tuijian19.jpg'),
(null,'res/music02.mp3','杨宗纬，张碧晨-凉凉','6785','Vol.126 - 青少年之梦:Teen pop','images/tuijian20.jpg'),
(null,'res/music03.mp3','Kalimba','3456','现代乡村｜狂野与温柔并存的情话','images/tuijian21.jpg'),
(null,'res/music04.mp3','Maid with the Flaxen Hair','90055','我独愿点亮夜空下你那一盏茫然','images/tuijian22.jpg'),
(null,'res/music05.mp3','Sleep Away','27','爽朗男声～柔情似水洗涤了这颗灼热的心灵！','images/tuijian23.jpg');

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
