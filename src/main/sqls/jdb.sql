/*
Navicat MySQL Data Transfer

Source Server         : jdbtest
Source Server Version : 50622
Source Host           : 172.16.16.253:3306
Source Database       : jdb

Target Server Type    : MYSQL
Target Server Version : 50622
File Encoding         : 65001

Date: 2015-09-01 10:28:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for 'activity'
-- ----------------------------
DROP TABLE IF EXISTS 'activity';
CREATE TABLE 'activity' (
  'id' varchar(255) NOT NULL COMMENT '编号',
  'activitydesc' varchar(255) DEFAULT NULL COMMENT '活动描述',
  'address' varchar(128) DEFAULT NULL COMMENT '地址',
  'city' varchar(16) DEFAULT NULL COMMENT '城市',
  'close_time' datetime DEFAULT NULL COMMENT '截止时间',
  'contactemail' varchar(32) DEFAULT NULL COMMENT '联系邮箱',
  'contactman' varchar(16) DEFAULT NULL COMMENT '联系人',
  'contactphone' varchar(16) DEFAULT NULL COMMENT '联系电话',
  'c_time' datetime DEFAULT NULL COMMENT '创建时间',
  'e_time' datetime DEFAULT NULL COMMENT '截止时间',
  'joinfee' longtext COMMENT '报名费用',
  'otherinfo' longtext COMMENT '其他信息',
  'personlimit' int(11) DEFAULT NULL COMMENT '人数限制',
  'picpath' varchar(64) DEFAULT NULL COMMENT '图片路径',
  'pv' int(11) DEFAULT NULL COMMENT '访问次数',
  's_time' datetime DEFAULT NULL,
  'state' int(11) DEFAULT NULL COMMENT '开始时间',
  'title' varchar(64) DEFAULT NULL COMMENT '标题',
  'topic' longtext COMMENT '主题',
  'create_userid' varchar(255) DEFAULT NULL COMMENT '创建者id',
  PRIMARY KEY ('id'),
  KEY 'FK_2794wwyim2xj2gq4l91rnoueg' ('create_userid'),
  CONSTRAINT 'FK_2794wwyim2xj2gq4l91rnoueg' FOREIGN KEY ('create_userid') REFERENCES 'user' ('id')
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO 'activity' VALUES ('0', 'activitydesc0', 'address0', 'city0', '2015-08-29 11:13:55', 'contactemail0@qq.com', 'contactman0', 'contactphone0', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee0', 'otherinfo0', '11', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '9', '2015-08-29 11:13:55', '1', 'title0', 'topic0', '0');
INSERT INTO 'activity' VALUES ('1', 'activitydesc1', 'address1', 'city1', '2015-08-29 11:13:55', 'contactemail1@qq.com', 'contactman1', 'contactphone1', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee1', 'otherinfo1', '20', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '123', '2015-08-29 11:13:55', '1', 'title1', 'topic1', '1');
INSERT INTO 'activity' VALUES ('10', 'activitydesc10', 'address10', 'city10', '2015-08-29 11:13:55', 'contactemail10@qq.com', 'contactman10', 'contactphone10', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee10', 'otherinfo10', '36', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '22', '2015-08-29 11:13:55', '1', 'title10', 'topic10', '10');
INSERT INTO 'activity' VALUES ('11', 'activitydesc11', 'address11', 'city11', '2015-08-29 11:13:55', 'contactemail11@qq.com', 'contactman11', 'contactphone11', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee11', 'otherinfo11', '70', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '30', '2015-08-29 11:13:55', '1', 'title11', 'topic11', '11');
INSERT INTO 'activity' VALUES ('12', 'activitydesc12', 'address12', 'city12', '2015-08-29 11:13:55', 'contactemail12@qq.com', 'contactman12', 'contactphone12', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee12', 'otherinfo12', '98', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '42', '2015-08-29 11:13:55', '1', 'title12', 'topic12', '12');
INSERT INTO 'activity' VALUES ('13', 'activitydesc13', 'address13', 'city13', '2015-08-29 11:13:55', 'contactemail13@qq.com', 'contactman13', 'contactphone13', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee13', 'otherinfo13', '22', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '60', '2015-08-29 11:13:55', '1', 'title13', 'topic13', '13');
INSERT INTO 'activity' VALUES ('14', 'activitydesc14', 'address14', 'city14', '2015-08-29 11:13:55', 'contactemail14@qq.com', 'contactman14', 'contactphone14', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee14', 'otherinfo14', '42', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '47', '2015-08-29 11:13:55', '1', 'title14', 'topic14', '14');
INSERT INTO 'activity' VALUES ('15', 'activitydesc15', 'address15', 'city15', '2015-08-29 11:13:55', 'contactemail15@qq.com', 'contactman15', 'contactphone15', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee15', 'otherinfo15', '66', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '41', '2015-08-29 11:13:55', '1', 'title15', 'topic15', '15');
INSERT INTO 'activity' VALUES ('16', 'activitydesc16', 'address16', 'city16', '2015-08-29 11:13:55', 'contactemail16@qq.com', 'contactman16', 'contactphone16', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee16', 'otherinfo16', '87', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '64', '2015-08-29 11:13:55', '1', 'title16', 'topic16', '16');
INSERT INTO 'activity' VALUES ('17', 'activitydesc17', 'address17', 'city17', '2015-08-29 11:13:55', 'contactemail17@qq.com', 'contactman17', 'contactphone17', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee17', 'otherinfo17', '31', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '97', '2015-08-29 11:13:55', '1', 'title17', 'topic17', '17');
INSERT INTO 'activity' VALUES ('18', 'activitydesc18', 'address18', 'city18', '2015-08-29 11:13:55', 'contactemail18@qq.com', 'contactman18', 'contactphone18', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee18', 'otherinfo18', '14', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '80', '2015-08-29 11:13:55', '1', 'title18', 'topic18', '18');
INSERT INTO 'activity' VALUES ('19', 'activitydesc19', 'address19', 'city19', '2015-08-29 11:13:55', 'contactemail19@qq.com', 'contactman19', 'contactphone19', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee19', 'otherinfo19', '96', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '73', '2015-08-29 11:13:55', '1', 'title19', 'topic19', '19');
INSERT INTO 'activity' VALUES ('2', 'activitydesc2', 'address2', 'city2', '2015-08-29 11:13:55', 'contactemail2@qq.com', 'contactman2', 'contactphone2', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee2', 'otherinfo2', '1', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '20', '2015-08-29 11:13:55', '1', 'title2', 'topic2', '2');
INSERT INTO 'activity' VALUES ('20', 'activitydesc20', 'address20', 'city20', '2015-08-29 11:13:55', 'contactemail20@qq.com', 'contactman20', 'contactphone20', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee20', 'otherinfo20', '87', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '95', '2015-08-29 11:13:55', '1', 'title20', 'topic20', '20');
INSERT INTO 'activity' VALUES ('21', 'activitydesc21', 'address21', 'city21', '2015-08-29 11:13:55', 'contactemail21@qq.com', 'contactman21', 'contactphone21', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee21', 'otherinfo21', '3', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '3', '2015-08-29 11:13:55', '1', 'title21', 'topic21', '21');
INSERT INTO 'activity' VALUES ('22', 'activitydesc22', 'address22', 'city22', '2015-08-29 11:13:55', 'contactemail22@qq.com', 'contactman22', 'contactphone22', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee22', 'otherinfo22', '60', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '38', '2015-08-29 11:13:55', '1', 'title22', 'topic22', '22');
INSERT INTO 'activity' VALUES ('23', 'activitydesc23', 'address23', 'city23', '2015-08-29 11:13:55', 'contactemail23@qq.com', 'contactman23', 'contactphone23', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee23', 'otherinfo23', '11', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '40', '2015-08-29 11:13:55', '1', 'title23', 'topic23', '23');
INSERT INTO 'activity' VALUES ('24', 'activitydesc24', 'address24', 'city24', '2015-08-29 11:13:55', 'contactemail24@qq.com', 'contactman24', 'contactphone24', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee24', 'otherinfo24', '14', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '36', '2015-08-29 11:13:55', '1', 'title24', 'topic24', '24');
INSERT INTO 'activity' VALUES ('25', 'activitydesc25', 'address25', 'city25', '2015-08-29 11:13:55', 'contactemail25@qq.com', 'contactman25', 'contactphone25', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee25', 'otherinfo25', '61', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '73', '2015-08-29 11:13:55', '1', 'title25', 'topic25', '25');
INSERT INTO 'activity' VALUES ('26', 'activitydesc26', 'address26', 'city26', '2015-08-29 11:13:55', 'contactemail26@qq.com', 'contactman26', 'contactphone26', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee26', 'otherinfo26', '80', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '42', '2015-08-29 11:13:55', '1', 'title26', 'topic26', '26');
INSERT INTO 'activity' VALUES ('27', 'activitydesc27', 'address27', 'city27', '2015-08-29 11:13:55', 'contactemail27@qq.com', 'contactman27', 'contactphone27', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee27', 'otherinfo27', '69', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '6', '2015-08-29 11:13:55', '1', 'title27', 'topic27', '27');
INSERT INTO 'activity' VALUES ('28', 'activitydesc28', 'address28', 'city28', '2015-08-29 11:13:55', 'contactemail28@qq.com', 'contactman28', 'contactphone28', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee28', 'otherinfo28', '99', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '10', '2015-08-29 11:13:55', '1', 'title28', 'topic28', '28');
INSERT INTO 'activity' VALUES ('29', 'activitydesc29', 'address29', 'city29', '2015-08-29 11:13:55', 'contactemail29@qq.com', 'contactman29', 'contactphone29', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee29', 'otherinfo29', '73', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '54', '2015-08-29 11:13:55', '1', 'title29', 'topic29', '29');
INSERT INTO 'activity' VALUES ('3', 'activitydesc3', 'address3', 'city3', '2015-08-29 11:13:55', 'contactemail3@qq.com', 'contactman3', 'contactphone3', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee3', 'otherinfo3', '80', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '40', '2015-08-29 11:13:55', '1', 'title3', 'topic3', '3');
INSERT INTO 'activity' VALUES ('30', 'activitydesc30', 'address30', 'city30', '2015-08-29 11:13:55', 'contactemail30@qq.com', 'contactman30', 'contactphone30', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee30', 'otherinfo30', '12', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '48', '2015-08-29 11:13:55', '1', 'title30', 'topic30', '30');
INSERT INTO 'activity' VALUES ('31', 'activitydesc31', 'address31', 'city31', '2015-08-29 11:13:55', 'contactemail31@qq.com', 'contactman31', 'contactphone31', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee31', 'otherinfo31', '69', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '33', '2015-08-29 11:13:55', '1', 'title31', 'topic31', '31');
INSERT INTO 'activity' VALUES ('32', 'activitydesc32', 'address32', 'city32', '2015-08-29 11:13:55', 'contactemail32@qq.com', 'contactman32', 'contactphone32', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee32', 'otherinfo32', '50', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '98', '2015-08-29 11:13:55', '1', 'title32', 'topic32', '32');
INSERT INTO 'activity' VALUES ('33', 'activitydesc33', 'address33', 'city33', '2015-08-29 11:13:55', 'contactemail33@qq.com', 'contactman33', 'contactphone33', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee33', 'otherinfo33', '77', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '94', '2015-08-29 11:13:55', '1', 'title33', 'topic33', '33');
INSERT INTO 'activity' VALUES ('34', 'activitydesc34', 'address34', 'city34', '2015-08-29 11:13:55', 'contactemail34@qq.com', 'contactman34', 'contactphone34', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee34', 'otherinfo34', '92', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '31', '2015-08-29 11:13:55', '1', 'title34', 'topic34', '34');
INSERT INTO 'activity' VALUES ('35', 'activitydesc35', 'address35', 'city35', '2015-08-29 11:13:55', 'contactemail35@qq.com', 'contactman35', 'contactphone35', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee35', 'otherinfo35', '11', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '70', '2015-08-29 11:13:55', '1', 'title35', 'topic35', '35');
INSERT INTO 'activity' VALUES ('36', 'activitydesc36', 'address36', 'city36', '2015-08-29 11:13:55', 'contactemail36@qq.com', 'contactman36', 'contactphone36', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee36', 'otherinfo36', '0', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '77', '2015-08-29 11:13:55', '1', 'title36', 'topic36', '36');
INSERT INTO 'activity' VALUES ('37', 'activitydesc37', 'address37', 'city37', '2015-08-29 11:13:55', 'contactemail37@qq.com', 'contactman37', 'contactphone37', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee37', 'otherinfo37', '32', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '56', '2015-08-29 11:13:55', '1', 'title37', 'topic37', '37');
INSERT INTO 'activity' VALUES ('38', 'activitydesc38', 'address38', 'city38', '2015-08-29 11:13:55', 'contactemail38@qq.com', 'contactman38', 'contactphone38', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee38', 'otherinfo38', '27', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '76', '2015-08-29 11:13:55', '1', 'title38', 'topic38', '38');
INSERT INTO 'activity' VALUES ('39', 'activitydesc39', 'address39', 'city39', '2015-08-29 11:13:55', 'contactemail39@qq.com', 'contactman39', 'contactphone39', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee39', 'otherinfo39', '59', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '49', '2015-08-29 11:13:55', '1', 'title39', 'topic39', '39');
INSERT INTO 'activity' VALUES ('4', 'activitydesc4', 'address4', 'city4', '2015-08-29 11:13:55', 'contactemail4@qq.com', 'contactman4', 'contactphone4', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee4', 'otherinfo4', '42', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '32', '2015-08-29 11:13:55', '1', 'title4', 'topic4', '4');
INSERT INTO 'activity' VALUES ('40', 'activitydesc40', 'address40', 'city40', '2015-08-29 11:13:55', 'contactemail40@qq.com', 'contactman40', 'contactphone40', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee40', 'otherinfo40', '75', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '98', '2015-08-29 11:13:55', '1', 'title40', 'topic40', '40');
INSERT INTO 'activity' VALUES ('41', 'activitydesc41', 'address41', 'city41', '2015-08-29 11:13:55', 'contactemail41@qq.com', 'contactman41', 'contactphone41', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee41', 'otherinfo41', '30', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '47', '2015-08-29 11:13:55', '1', 'title41', 'topic41', '41');
INSERT INTO 'activity' VALUES ('42', 'activitydesc42', 'address42', 'city42', '2015-08-29 11:13:55', 'contactemail42@qq.com', 'contactman42', 'contactphone42', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee42', 'otherinfo42', '17', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '27', '2015-08-29 11:13:55', '1', 'title42', 'topic42', '42');
INSERT INTO 'activity' VALUES ('43', 'activitydesc43', 'address43', 'city43', '2015-08-29 11:13:55', 'contactemail43@qq.com', 'contactman43', 'contactphone43', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee43', 'otherinfo43', '99', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '23', '2015-08-29 11:13:55', '1', 'title43', 'topic43', '43');
INSERT INTO 'activity' VALUES ('44', 'activitydesc44', 'address44', 'city44', '2015-08-29 11:13:55', 'contactemail44@qq.com', 'contactman44', 'contactphone44', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee44', 'otherinfo44', '90', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '21', '2015-08-29 11:13:55', '1', 'title44', 'topic44', '44');
INSERT INTO 'activity' VALUES ('45', 'activitydesc45', 'address45', 'city45', '2015-08-29 11:13:55', 'contactemail45@qq.com', 'contactman45', 'contactphone45', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee45', 'otherinfo45', '35', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '95', '2015-08-29 11:13:55', '1', 'title45', 'topic45', '45');
INSERT INTO 'activity' VALUES ('46', 'activitydesc46', 'address46', 'city46', '2015-08-29 11:13:55', 'contactemail46@qq.com', 'contactman46', 'contactphone46', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee46', 'otherinfo46', '34', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '42', '2015-08-29 11:13:55', '1', 'title46', 'topic46', '46');
INSERT INTO 'activity' VALUES ('47', 'activitydesc47', 'address47', 'city47', '2015-08-29 11:13:55', 'contactemail47@qq.com', 'contactman47', 'contactphone47', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee47', 'otherinfo47', '25', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '41', '2015-08-29 11:13:55', '1', 'title47', 'topic47', '47');
INSERT INTO 'activity' VALUES ('48', 'activitydesc48', 'address48', 'city48', '2015-08-29 11:13:55', 'contactemail48@qq.com', 'contactman48', 'contactphone48', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee48', 'otherinfo48', '98', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '57', '2015-08-29 11:13:55', '1', 'title48', 'topic48', '48');
INSERT INTO 'activity' VALUES ('49', 'activitydesc49', 'address49', 'city49', '2015-08-29 11:13:55', 'contactemail49@qq.com', 'contactman49', 'contactphone49', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee49', 'otherinfo49', '80', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '19', '2015-08-29 11:13:55', '1', 'title49', 'topic49', '49');
INSERT INTO 'activity' VALUES ('5', 'activitydesc5', 'address5', 'city5', '2015-08-29 11:13:55', 'contactemail5@qq.com', 'contactman5', 'contactphone5', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee5', 'otherinfo5', '38', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '83', '2015-08-29 11:13:55', '1', 'title5', 'topic5', '5');
INSERT INTO 'activity' VALUES ('50', 'activitydesc50', 'address50', 'city50', '2015-08-29 11:13:55', 'contactemail50@qq.com', 'contactman50', 'contactphone50', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee50', 'otherinfo50', '72', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '22', '2015-08-29 11:13:55', '1', 'title50', 'topic50', '50');
INSERT INTO 'activity' VALUES ('51', 'activitydesc51', 'address51', 'city51', '2015-08-29 11:13:55', 'contactemail51@qq.com', 'contactman51', 'contactphone51', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee51', 'otherinfo51', '19', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '97', '2015-08-29 11:13:55', '1', 'title51', 'topic51', '51');
INSERT INTO 'activity' VALUES ('52', 'activitydesc52', 'address52', 'city52', '2015-08-29 11:13:55', 'contactemail52@qq.com', 'contactman52', 'contactphone52', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee52', 'otherinfo52', '30', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '81', '2015-08-29 11:13:55', '1', 'title52', 'topic52', '52');
INSERT INTO 'activity' VALUES ('53', 'activitydesc53', 'address53', 'city53', '2015-08-29 11:13:55', 'contactemail53@qq.com', 'contactman53', 'contactphone53', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee53', 'otherinfo53', '79', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '39', '2015-08-29 11:13:55', '1', 'title53', 'topic53', '53');
INSERT INTO 'activity' VALUES ('54', 'activitydesc54', 'address54', 'city54', '2015-08-29 11:13:55', 'contactemail54@qq.com', 'contactman54', 'contactphone54', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee54', 'otherinfo54', '43', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '71', '2015-08-29 11:13:55', '1', 'title54', 'topic54', '54');
INSERT INTO 'activity' VALUES ('55', 'activitydesc55', 'address55', 'city55', '2015-08-29 11:13:55', 'contactemail55@qq.com', 'contactman55', 'contactphone55', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee55', 'otherinfo55', '98', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '99', '2015-08-29 11:13:55', '1', 'title55', 'topic55', '55');
INSERT INTO 'activity' VALUES ('56', 'activitydesc56', 'address56', 'city56', '2015-08-29 11:13:55', 'contactemail56@qq.com', 'contactman56', 'contactphone56', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee56', 'otherinfo56', '56', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '48', '2015-08-29 11:13:55', '1', 'title56', 'topic56', '56');
INSERT INTO 'activity' VALUES ('57', 'activitydesc57', 'address57', 'city57', '2015-08-29 11:13:55', 'contactemail57@qq.com', 'contactman57', 'contactphone57', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee57', 'otherinfo57', '39', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '57', '2015-08-29 11:13:55', '1', 'title57', 'topic57', '57');
INSERT INTO 'activity' VALUES ('58', 'activitydesc58', 'address58', 'city58', '2015-08-29 11:13:55', 'contactemail58@qq.com', 'contactman58', 'contactphone58', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee58', 'otherinfo58', '2', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '48', '2015-08-29 11:13:55', '1', 'title58', 'topic58', '58');
INSERT INTO 'activity' VALUES ('59', 'activitydesc59', 'address59', 'city59', '2015-08-29 11:13:55', 'contactemail59@qq.com', 'contactman59', 'contactphone59', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee59', 'otherinfo59', '64', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '16', '2015-08-29 11:13:55', '1', 'title59', 'topic59', '59');
INSERT INTO 'activity' VALUES ('6', 'activitydesc6', 'address6', 'city6', '2015-08-29 11:13:55', 'contactemail6@qq.com', 'contactman6', 'contactphone6', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee6', 'otherinfo6', '13', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '27', '2015-08-29 11:13:55', '1', 'title6', 'topic6', '6');
INSERT INTO 'activity' VALUES ('60', 'activitydesc60', 'address60', 'city60', '2015-08-29 11:13:55', 'contactemail60@qq.com', 'contactman60', 'contactphone60', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee60', 'otherinfo60', '67', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '99', '2015-08-29 11:13:55', '1', 'title60', 'topic60', '60');
INSERT INTO 'activity' VALUES ('61', 'activitydesc61', 'address61', 'city61', '2015-08-29 11:13:55', 'contactemail61@qq.com', 'contactman61', 'contactphone61', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee61', 'otherinfo61', '75', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '56', '2015-08-29 11:13:55', '1', 'title61', 'topic61', '61');
INSERT INTO 'activity' VALUES ('62', 'activitydesc62', 'address62', 'city62', '2015-08-29 11:13:55', 'contactemail62@qq.com', 'contactman62', 'contactphone62', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee62', 'otherinfo62', '43', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '54', '2015-08-29 11:13:55', '1', 'title62', 'topic62', '62');
INSERT INTO 'activity' VALUES ('63', 'activitydesc63', 'address63', 'city63', '2015-08-29 11:13:55', 'contactemail63@qq.com', 'contactman63', 'contactphone63', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee63', 'otherinfo63', '36', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '58', '2015-08-29 11:13:55', '1', 'title63', 'topic63', '63');
INSERT INTO 'activity' VALUES ('64', 'activitydesc64', 'address64', 'city64', '2015-08-29 11:13:55', 'contactemail64@qq.com', 'contactman64', 'contactphone64', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee64', 'otherinfo64', '24', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '80', '2015-08-29 11:13:55', '1', 'title64', 'topic64', '64');
INSERT INTO 'activity' VALUES ('65', 'activitydesc65', 'address65', 'city65', '2015-08-29 11:13:55', 'contactemail65@qq.com', 'contactman65', 'contactphone65', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee65', 'otherinfo65', '48', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '13', '2015-08-29 11:13:55', '1', 'title65', 'topic65', '65');
INSERT INTO 'activity' VALUES ('66', 'activitydesc66', 'address66', 'city66', '2015-08-29 11:13:55', 'contactemail66@qq.com', 'contactman66', 'contactphone66', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee66', 'otherinfo66', '34', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '31', '2015-08-29 11:13:55', '1', 'title66', 'topic66', '66');
INSERT INTO 'activity' VALUES ('67', 'activitydesc67', 'address67', 'city67', '2015-08-29 11:13:55', 'contactemail67@qq.com', 'contactman67', 'contactphone67', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee67', 'otherinfo67', '71', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '100', '2015-08-29 11:13:55', '1', 'title67', 'topic67', '67');
INSERT INTO 'activity' VALUES ('68', 'activitydesc68', 'address68', 'city68', '2015-08-29 11:13:55', 'contactemail68@qq.com', 'contactman68', 'contactphone68', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee68', 'otherinfo68', '98', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '26', '2015-08-29 11:13:55', '1', 'title68', 'topic68', '68');
INSERT INTO 'activity' VALUES ('69', 'activitydesc69', 'address69', 'city69', '2015-08-29 11:13:55', 'contactemail69@qq.com', 'contactman69', 'contactphone69', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee69', 'otherinfo69', '14', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '75', '2015-08-29 11:13:55', '1', 'title69', 'topic69', '69');
INSERT INTO 'activity' VALUES ('7', 'activitydesc7', 'address7', 'city7', '2015-08-29 11:13:55', 'contactemail7@qq.com', 'contactman7', 'contactphone7', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee7', 'otherinfo7', '0', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '12', '2015-08-29 11:13:55', '1', 'title7', 'topic7', '7');
INSERT INTO 'activity' VALUES ('70', 'activitydesc70', 'address70', 'city70', '2015-08-29 11:13:55', 'contactemail70@qq.com', 'contactman70', 'contactphone70', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee70', 'otherinfo70', '12', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '56', '2015-08-29 11:13:55', '1', 'title70', 'topic70', '70');
INSERT INTO 'activity' VALUES ('71', 'activitydesc71', 'address71', 'city71', '2015-08-29 11:13:55', 'contactemail71@qq.com', 'contactman71', 'contactphone71', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee71', 'otherinfo71', '67', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '93', '2015-08-29 11:13:55', '1', 'title71', 'topic71', '71');
INSERT INTO 'activity' VALUES ('72', 'activitydesc72', 'address72', 'city72', '2015-08-29 11:13:55', 'contactemail72@qq.com', 'contactman72', 'contactphone72', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee72', 'otherinfo72', '2', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '47', '2015-08-29 11:13:55', '1', 'title72', 'topic72', '72');
INSERT INTO 'activity' VALUES ('73', 'activitydesc73', 'address73', 'city73', '2015-08-29 11:13:55', 'contactemail73@qq.com', 'contactman73', 'contactphone73', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee73', 'otherinfo73', '79', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '29', '2015-08-29 11:13:55', '1', 'title73', 'topic73', '73');
INSERT INTO 'activity' VALUES ('74', 'activitydesc74', 'address74', 'city74', '2015-08-29 11:13:55', 'contactemail74@qq.com', 'contactman74', 'contactphone74', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee74', 'otherinfo74', '18', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '9', '2015-08-29 11:13:55', '1', 'title74', 'topic74', '74');
INSERT INTO 'activity' VALUES ('75', 'activitydesc75', 'address75', 'city75', '2015-08-29 11:13:55', 'contactemail75@qq.com', 'contactman75', 'contactphone75', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee75', 'otherinfo75', '98', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '11', '2015-08-29 11:13:55', '1', 'title75', 'topic75', '75');
INSERT INTO 'activity' VALUES ('76', 'activitydesc76', 'address76', 'city76', '2015-08-29 11:13:55', 'contactemail76@qq.com', 'contactman76', 'contactphone76', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee76', 'otherinfo76', '31', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '11', '2015-08-29 11:13:55', '1', 'title76', 'topic76', '76');
INSERT INTO 'activity' VALUES ('77', 'activitydesc77', 'address77', 'city77', '2015-08-29 11:13:55', 'contactemail77@qq.com', 'contactman77', 'contactphone77', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee77', 'otherinfo77', '69', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '63', '2015-08-29 11:13:55', '1', 'title77', 'topic77', '77');
INSERT INTO 'activity' VALUES ('78', 'activitydesc78', 'address78', 'city78', '2015-08-29 11:13:55', 'contactemail78@qq.com', 'contactman78', 'contactphone78', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee78', 'otherinfo78', '96', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '42', '2015-08-29 11:13:55', '1', 'title78', 'topic78', '78');
INSERT INTO 'activity' VALUES ('79', 'activitydesc79', 'address79', 'city79', '2015-08-29 11:13:55', 'contactemail79@qq.com', 'contactman79', 'contactphone79', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee79', 'otherinfo79', '2', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '86', '2015-08-29 11:13:55', '1', 'title79', 'topic79', '79');
INSERT INTO 'activity' VALUES ('8', 'activitydesc8', 'address8', 'city8', '2015-08-29 11:13:55', 'contactemail8@qq.com', 'contactman8', 'contactphone8', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee8', 'otherinfo8', '96', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '65', '2015-08-29 11:13:55', '1', 'title8', 'topic8', '8');
INSERT INTO 'activity' VALUES ('80', 'activitydesc80', 'address80', 'city80', '2015-08-29 11:13:55', 'contactemail80@qq.com', 'contactman80', 'contactphone80', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee80', 'otherinfo80', '47', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '64', '2015-08-29 11:13:55', '1', 'title80', 'topic80', '80');
INSERT INTO 'activity' VALUES ('81', 'activitydesc81', 'address81', 'city81', '2015-08-29 11:13:55', 'contactemail81@qq.com', 'contactman81', 'contactphone81', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee81', 'otherinfo81', '10', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '30', '2015-08-29 11:13:55', '1', 'title81', 'topic81', '81');
INSERT INTO 'activity' VALUES ('82', 'activitydesc82', 'address82', 'city82', '2015-08-29 11:13:55', 'contactemail82@qq.com', 'contactman82', 'contactphone82', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee82', 'otherinfo82', '34', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '20', '2015-08-29 11:13:55', '1', 'title82', 'topic82', '82');
INSERT INTO 'activity' VALUES ('83', 'activitydesc83', 'address83', 'city83', '2015-08-29 11:13:55', 'contactemail83@qq.com', 'contactman83', 'contactphone83', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee83', 'otherinfo83', '1', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '92', '2015-08-29 11:13:55', '1', 'title83', 'topic83', '83');
INSERT INTO 'activity' VALUES ('84', 'activitydesc84', 'address84', 'city84', '2015-08-29 11:13:55', 'contactemail84@qq.com', 'contactman84', 'contactphone84', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee84', 'otherinfo84', '88', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '99', '2015-08-29 11:13:55', '1', 'title84', 'topic84', '84');
INSERT INTO 'activity' VALUES ('85', 'activitydesc85', 'address85', 'city85', '2015-08-29 11:13:55', 'contactemail85@qq.com', 'contactman85', 'contactphone85', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee85', 'otherinfo85', '73', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '46', '2015-08-29 11:13:55', '1', 'title85', 'topic85', '85');
INSERT INTO 'activity' VALUES ('86', 'activitydesc86', 'address86', 'city86', '2015-08-29 11:13:55', 'contactemail86@qq.com', 'contactman86', 'contactphone86', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee86', 'otherinfo86', '14', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '89', '2015-08-29 11:13:55', '1', 'title86', 'topic86', '86');
INSERT INTO 'activity' VALUES ('87', 'activitydesc87', 'address87', 'city87', '2015-08-29 11:13:55', 'contactemail87@qq.com', 'contactman87', 'contactphone87', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee87', 'otherinfo87', '65', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '74', '2015-08-29 11:13:55', '1', 'title87', 'topic87', '87');
INSERT INTO 'activity' VALUES ('88', 'activitydesc88', 'address88', 'city88', '2015-08-29 11:13:55', 'contactemail88@qq.com', 'contactman88', 'contactphone88', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee88', 'otherinfo88', '92', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '20', '2015-08-29 11:13:55', '1', 'title88', 'topic88', '88');
INSERT INTO 'activity' VALUES ('89', 'activitydesc89', 'address89', 'city89', '2015-08-29 11:13:55', 'contactemail89@qq.com', 'contactman89', 'contactphone89', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee89', 'otherinfo89', '62', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '20', '2015-08-29 11:13:55', '1', 'title89', 'topic89', '89');
INSERT INTO 'activity' VALUES ('9', 'activitydesc9', 'address9', 'city9', '2015-08-29 11:13:55', 'contactemail9@qq.com', 'contactman9', 'contactphone9', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee9', 'otherinfo9', '36', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '7', '2015-08-29 11:13:55', '1', 'title9', 'topic9', '9');
INSERT INTO 'activity' VALUES ('90', 'activitydesc90', 'address90', 'city90', '2015-08-29 11:13:55', 'contactemail90@qq.com', 'contactman90', 'contactphone90', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee90', 'otherinfo90', '66', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '34', '2015-08-29 11:13:55', '1', 'title90', 'topic90', '90');
INSERT INTO 'activity' VALUES ('91', 'activitydesc91', 'address91', 'city91', '2015-08-29 11:13:55', 'contactemail91@qq.com', 'contactman91', 'contactphone91', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee91', 'otherinfo91', '28', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '76', '2015-08-29 11:13:55', '1', 'title91', 'topic91', '91');
INSERT INTO 'activity' VALUES ('92', 'activitydesc92', 'address92', 'city92', '2015-08-29 11:13:55', 'contactemail92@qq.com', 'contactman92', 'contactphone92', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee92', 'otherinfo92', '74', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '55', '2015-08-29 11:13:55', '1', 'title92', 'topic92', '92');
INSERT INTO 'activity' VALUES ('93', 'activitydesc93', 'address93', 'city93', '2015-08-29 11:13:55', 'contactemail93@qq.com', 'contactman93', 'contactphone93', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee93', 'otherinfo93', '98', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '11', '2015-08-29 11:13:55', '1', 'title93', 'topic93', '93');
INSERT INTO 'activity' VALUES ('94', 'activitydesc94', 'address94', 'city94', '2015-08-29 11:13:55', 'contactemail94@qq.com', 'contactman94', 'contactphone94', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee94', 'otherinfo94', '50', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '10', '2015-08-29 11:13:55', '1', 'title94', 'topic94', '94');
INSERT INTO 'activity' VALUES ('95', 'activitydesc95', 'address95', 'city95', '2015-08-29 11:13:55', 'contactemail95@qq.com', 'contactman95', 'contactphone95', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee95', 'otherinfo95', '84', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '67', '2015-08-29 11:13:55', '1', 'title95', 'topic95', '95');
INSERT INTO 'activity' VALUES ('96', 'activitydesc96', 'address96', 'city96', '2015-08-29 11:13:55', 'contactemail96@qq.com', 'contactman96', 'contactphone96', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee96', 'otherinfo96', '79', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '31', '2015-08-29 11:13:55', '1', 'title96', 'topic96', '96');
INSERT INTO 'activity' VALUES ('97', 'activitydesc97', 'address97', 'city97', '2015-08-29 11:13:55', 'contactemail97@qq.com', 'contactman97', 'contactphone97', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee97', 'otherinfo97', '97', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '86', '2015-08-29 11:13:55', '1', 'title97', 'topic97', '97');
INSERT INTO 'activity' VALUES ('98', 'activitydesc98', 'address98', 'city98', '2015-08-29 11:13:55', 'contactemail98@qq.com', 'contactman98', 'contactphone98', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee98', 'otherinfo98', '86', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '69', '2015-08-29 11:13:55', '1', 'title98', 'topic98', '98');
INSERT INTO 'activity' VALUES ('99', 'activitydesc99', 'address99', 'city99', '2015-08-29 11:13:55', 'contactemail99@qq.com', 'contactman99', 'contactphone99', '2015-08-29 11:13:55', '2015-08-29 11:13:55', 'joinfee99', 'otherinfo99', '38', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '46', '2015-08-29 11:13:55', '1', 'title99', 'topic99', '99');

-- ----------------------------
-- Table structure for 'admin'
-- ----------------------------
DROP TABLE IF EXISTS 'admin';
CREATE TABLE 'admin' (
  'id' varchar(255) NOT NULL DEFAULT '' COMMENT '编号',
  'c_time' datetime DEFAULT NULL COMMENT '创建时间',
  'level' int(11) DEFAULT NULL COMMENT '管理员级别',
  'password' varchar(32) DEFAULT NULL COMMENT '密码',
  'phone' varchar(16) DEFAULT NULL COMMENT '手机号',
  'realName' varchar(16) DEFAULT NULL COMMENT '真实姓名',
  'username' varchar(32) DEFAULT NULL COMMENT '账号',
  PRIMARY KEY ('id')
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO 'admin' VALUES ('0', '2015-08-29 11:13:54', '0', '123456', '1111110', '超级管理员', 'superadmin');
INSERT INTO 'admin' VALUES ('1', '2015-08-29 11:13:54', '1', 'pass1', '1111111', 'realname1', 'username1');
INSERT INTO 'admin' VALUES ('10', '2015-08-29 11:13:54', '1', 'pass10', '11111110', 'realname10', 'username10');
INSERT INTO 'admin' VALUES ('100', '2015-08-29 11:13:54', '1', 'pass100', '111111100', 'realname100', 'username100');
INSERT INTO 'admin' VALUES ('101', '2015-08-29 11:13:54', '1', 'pass101', '111111101', 'realname101', 'username101');
INSERT INTO 'admin' VALUES ('102', '2015-08-29 11:13:54', '1', 'pass102', '111111102', 'realname102', 'username102');
INSERT INTO 'admin' VALUES ('103', '2015-08-29 11:13:54', '1', 'pass103', '111111103', 'realname103', 'username103');
INSERT INTO 'admin' VALUES ('104', '2015-08-29 11:13:54', '1', 'pass104', '111111104', 'realname104', 'username104');
INSERT INTO 'admin' VALUES ('105', '2015-08-29 11:13:54', '1', 'pass105', '111111105', 'realname105', 'username105');
INSERT INTO 'admin' VALUES ('106', '2015-08-29 11:13:54', '1', 'pass106', '111111106', 'realname106', 'username106');
INSERT INTO 'admin' VALUES ('107', '2015-08-29 11:13:54', '1', 'pass107', '111111107', 'realname107', 'username107');
INSERT INTO 'admin' VALUES ('108', '2015-08-29 11:13:54', '1', 'pass108', '111111108', 'realname108', 'username108');
INSERT INTO 'admin' VALUES ('109', '2015-08-29 11:13:54', '1', 'pass109', '111111109', 'realname109', 'username109');
INSERT INTO 'admin' VALUES ('11', '2015-08-29 11:13:54', '1', 'pass11', '11111111', 'realname11', 'username11');
INSERT INTO 'admin' VALUES ('12', '2015-08-29 11:13:54', '1', 'pass12', '11111112', 'realname12', 'username12');
INSERT INTO 'admin' VALUES ('13', '2015-08-29 11:13:54', '1', 'pass13', '11111113', 'realname13', 'username13');
INSERT INTO 'admin' VALUES ('14', '2015-08-29 11:13:54', '1', 'pass14', '11111114', 'realname14', 'username14');
INSERT INTO 'admin' VALUES ('15', '2015-08-29 11:13:54', '1', 'pass15', '11111115', 'realname15', 'username15');
INSERT INTO 'admin' VALUES ('16', '2015-08-29 11:13:54', '1', 'pass16', '11111116', 'realname16', 'username16');
INSERT INTO 'admin' VALUES ('17', '2015-08-29 11:13:54', '1', 'pass17', '11111117', 'realname17', 'username17');
INSERT INTO 'admin' VALUES ('18', '2015-08-29 11:13:54', '1', 'pass18', '11111118', 'realname18', 'username18');
INSERT INTO 'admin' VALUES ('19', '2015-08-29 11:13:54', '1', 'pass19', '11111119', 'realname19', 'username19');
INSERT INTO 'admin' VALUES ('2', '2015-08-29 11:13:54', '1', 'pass2', '1111112', 'realname2', 'username2');
INSERT INTO 'admin' VALUES ('20', '2015-08-29 11:13:54', '1', 'pass20', '11111120', 'realname20', 'username20');
INSERT INTO 'admin' VALUES ('21', '2015-08-29 11:13:54', '1', 'pass21', '11111121', 'realname21', 'username21');
INSERT INTO 'admin' VALUES ('22', '2015-08-29 11:13:54', '1', 'pass22', '11111122', 'realname22', 'username22');
INSERT INTO 'admin' VALUES ('23', '2015-08-29 11:13:54', '1', 'pass23', '11111123', 'realname23', 'username23');
INSERT INTO 'admin' VALUES ('24', '2015-08-29 11:13:54', '1', 'pass24', '11111124', 'realname24', 'username24');
INSERT INTO 'admin' VALUES ('25', '2015-08-29 11:13:54', '1', 'pass25', '11111125', 'realname25', 'username25');
INSERT INTO 'admin' VALUES ('26', '2015-08-29 11:13:54', '1', 'pass26', '11111126', 'realname26', 'username26');
INSERT INTO 'admin' VALUES ('27', '2015-08-29 11:13:54', '1', 'pass27', '11111127', 'realname27', 'username27');
INSERT INTO 'admin' VALUES ('28', '2015-08-29 11:13:54', '1', 'pass28', '11111128', 'realname28', 'username28');
INSERT INTO 'admin' VALUES ('29', '2015-08-29 11:13:54', '1', 'pass29', '11111129', 'realname29', 'username29');
INSERT INTO 'admin' VALUES ('2c9090074f77741e014f77744329000d', '2015-08-29 11:15:52', '1', 'passxxxx', '2122212', 'realNamexxx', 'usernamexxxx');
INSERT INTO 'admin' VALUES ('30', '2015-08-29 11:13:54', '1', 'pass30', '11111130', 'realname30', 'username30');
INSERT INTO 'admin' VALUES ('31', '2015-08-29 11:13:54', '1', 'pass31', '11111131', 'realname31', 'username31');
INSERT INTO 'admin' VALUES ('32', '2015-08-29 11:13:54', '1', 'pass32', '11111132', 'realname32', 'username32');
INSERT INTO 'admin' VALUES ('33', '2015-08-29 11:13:54', '1', 'pass33', '11111133', 'realname33', 'username33');
INSERT INTO 'admin' VALUES ('34', '2015-08-29 11:13:54', '1', 'pass34', '11111134', 'realname34', 'username34');
INSERT INTO 'admin' VALUES ('35', '2015-08-29 11:13:54', '1', 'pass35', '11111135', 'realname35', 'username35');
INSERT INTO 'admin' VALUES ('36', '2015-08-29 11:13:54', '1', 'pass36', '11111136', 'realname36', 'username36');
INSERT INTO 'admin' VALUES ('37', '2015-08-29 11:13:54', '1', 'pass37', '11111137', 'realname37', 'username37');
INSERT INTO 'admin' VALUES ('38', '2015-08-29 11:13:54', '1', 'pass38', '11111138', 'realname38', 'username38');
INSERT INTO 'admin' VALUES ('39', '2015-08-29 11:13:54', '1', 'pass39', '11111139', 'realname39', 'username39');
INSERT INTO 'admin' VALUES ('4', '2015-08-29 11:13:54', '1', 'pass4', '1111114', 'realname4', 'username4');
INSERT INTO 'admin' VALUES ('40', '2015-08-29 11:13:54', '1', 'pass40', '11111140', 'realname40', 'username40');
INSERT INTO 'admin' VALUES ('41', '2015-08-29 11:13:54', '1', 'pass41', '11111141', 'realname41', 'username41');
INSERT INTO 'admin' VALUES ('42', '2015-08-29 11:13:54', '1', 'pass42', '11111142', 'realname42', 'username42');
INSERT INTO 'admin' VALUES ('43', '2015-08-29 11:13:54', '1', 'pass43', '11111143', 'realname43', 'username43');
INSERT INTO 'admin' VALUES ('44', '2015-08-29 11:13:54', '1', 'pass44', '11111144', 'realname44', 'username44');
INSERT INTO 'admin' VALUES ('45', '2015-08-29 11:13:54', '1', 'pass45', '11111145', 'realname45', 'username45');
INSERT INTO 'admin' VALUES ('46', '2015-08-29 11:13:54', '1', 'pass46', '11111146', 'realname46', 'username46');
INSERT INTO 'admin' VALUES ('47', '2015-08-29 11:13:54', '1', 'pass47', '11111147', 'realname47', 'username47');
INSERT INTO 'admin' VALUES ('48', '2015-08-29 11:13:54', '1', 'pass48', '11111148', 'realname48', 'username48');
INSERT INTO 'admin' VALUES ('49', '2015-08-29 11:13:54', '1', 'pass49', '11111149', 'realname49', 'username49');
INSERT INTO 'admin' VALUES ('5', '2015-08-29 11:13:54', '1', 'pass5', '1111115', 'realname5', 'username5');
INSERT INTO 'admin' VALUES ('50', '2015-08-29 11:13:54', '1', 'pass50', '11111150', 'realname50', 'username50');
INSERT INTO 'admin' VALUES ('51', '2015-08-29 11:13:54', '1', 'pass51', '11111151', 'realname51', 'username51');
INSERT INTO 'admin' VALUES ('52', '2015-08-29 11:13:54', '1', 'pass52', '11111152', 'realname52', 'username52');
INSERT INTO 'admin' VALUES ('53', '2015-08-29 11:13:54', '1', 'pass53', '11111153', 'realname53', 'username53');
INSERT INTO 'admin' VALUES ('54', '2015-08-29 11:13:54', '1', 'pass54', '11111154', 'realname54', 'username54');
INSERT INTO 'admin' VALUES ('55', '2015-08-29 11:13:54', '1', 'pass55', '11111155', 'realname55', 'username55');
INSERT INTO 'admin' VALUES ('56', '2015-08-29 11:13:54', '1', 'pass56', '11111156', 'realname56', 'username56');
INSERT INTO 'admin' VALUES ('57', '2015-08-29 11:13:54', '1', 'pass57', '11111157', 'realname57', 'username57');
INSERT INTO 'admin' VALUES ('58', '2015-08-29 11:13:54', '1', 'pass58', '11111158', 'realname58', 'username58');
INSERT INTO 'admin' VALUES ('59', '2015-08-29 11:13:54', '1', 'pass59', '11111159', 'realname59', 'username59');
INSERT INTO 'admin' VALUES ('6', '2015-08-29 11:13:54', '1', 'pass6', '1111116', 'realname6', 'username6');
INSERT INTO 'admin' VALUES ('60', '2015-08-29 11:13:54', '1', 'pass60', '11111160', 'realname60', 'username60');
INSERT INTO 'admin' VALUES ('61', '2015-08-29 11:13:54', '1', 'pass61', '11111161', 'realname61', 'username61');
INSERT INTO 'admin' VALUES ('62', '2015-08-29 11:13:54', '1', 'pass62', '11111162', 'realname62', 'username62');
INSERT INTO 'admin' VALUES ('63', '2015-08-29 11:13:54', '1', 'pass63', '11111163', 'realname63', 'username63');
INSERT INTO 'admin' VALUES ('64', '2015-08-29 11:13:54', '1', 'pass64', '11111164', 'realname64', 'username64');
INSERT INTO 'admin' VALUES ('65', '2015-08-29 11:13:54', '1', 'pass65', '11111165', 'realname65', 'username65');
INSERT INTO 'admin' VALUES ('66', '2015-08-29 11:13:54', '1', 'pass66', '11111166', 'realname66', 'username66');
INSERT INTO 'admin' VALUES ('67', '2015-08-29 11:13:54', '1', 'pass67', '11111167', 'realname67', 'username67');
INSERT INTO 'admin' VALUES ('68', '2015-08-29 11:13:54', '1', 'pass68', '11111168', 'realname68', 'username68');
INSERT INTO 'admin' VALUES ('69', '2015-08-29 11:13:54', '1', 'pass69', '11111169', 'realname69', 'username69');
INSERT INTO 'admin' VALUES ('7', '2015-08-29 11:13:54', '1', 'pass7', '1111117', 'realname7', 'username7');
INSERT INTO 'admin' VALUES ('70', '2015-08-29 11:13:54', '1', 'pass70', '11111170', 'realname70', 'username70');
INSERT INTO 'admin' VALUES ('71', '2015-08-29 11:13:54', '1', 'pass71', '11111171', 'realname71', 'username71');
INSERT INTO 'admin' VALUES ('72', '2015-08-29 11:13:54', '1', 'pass72', '11111172', 'realname72', 'username72');
INSERT INTO 'admin' VALUES ('73', '2015-08-29 11:13:54', '1', 'pass73', '11111173', 'realname73', 'username73');
INSERT INTO 'admin' VALUES ('74', '2015-08-29 11:13:54', '1', 'pass74', '11111174', 'realname74', 'username74');
INSERT INTO 'admin' VALUES ('75', '2015-08-29 11:13:54', '1', 'pass75', '11111175', 'realname75', 'username75');
INSERT INTO 'admin' VALUES ('76', '2015-08-29 11:13:54', '1', 'pass76', '11111176', 'realname76', 'username76');
INSERT INTO 'admin' VALUES ('77', '2015-08-29 11:13:54', '1', 'pass77', '11111177', 'realname77', 'username77');
INSERT INTO 'admin' VALUES ('78', '2015-08-29 11:13:54', '1', 'pass78', '11111178', 'realname78', 'username78');
INSERT INTO 'admin' VALUES ('79', '2015-08-29 11:13:54', '1', 'pass79', '11111179', 'realname79', 'username79');
INSERT INTO 'admin' VALUES ('8', '2015-08-29 11:13:54', '1', 'pass8', '1111118', 'realname8', 'username8');
INSERT INTO 'admin' VALUES ('80', '2015-08-29 11:13:54', '1', 'pass80', '11111180', 'realname80', 'username80');
INSERT INTO 'admin' VALUES ('81', '2015-08-29 11:13:54', '1', 'pass81', '11111181', 'realname81', 'username81');
INSERT INTO 'admin' VALUES ('82', '2015-08-29 11:13:54', '1', 'pass82', '11111182', 'realname82', 'username82');
INSERT INTO 'admin' VALUES ('83', '2015-08-29 11:13:54', '1', 'pass83', '11111183', 'realname83', 'username83');
INSERT INTO 'admin' VALUES ('84', '2015-08-29 11:13:54', '1', 'pass84', '11111184', 'realname84', 'username84');
INSERT INTO 'admin' VALUES ('85', '2015-08-29 11:13:54', '1', 'pass85', '11111185', 'realname85', 'username85');
INSERT INTO 'admin' VALUES ('86', '2015-08-29 11:13:54', '1', 'pass86', '11111186', 'realname86', 'username86');
INSERT INTO 'admin' VALUES ('87', '2015-08-29 11:13:54', '1', 'pass87', '11111187', 'realname87', 'username87');
INSERT INTO 'admin' VALUES ('88', '2015-08-29 11:13:54', '1', 'pass88', '11111188', 'realname88', 'username88');
INSERT INTO 'admin' VALUES ('89', '2015-08-29 11:13:54', '1', 'pass89', '11111189', 'realname89', 'username89');
INSERT INTO 'admin' VALUES ('9', '2015-08-29 11:13:54', '1', 'pass9', '1111119', 'realname9', 'username9');
INSERT INTO 'admin' VALUES ('90', '2015-08-29 11:13:54', '1', 'pass90', '11111190', 'realname90', 'username90');
INSERT INTO 'admin' VALUES ('91', '2015-08-29 11:13:54', '1', 'pass91', '11111191', 'realname91', 'username91');
INSERT INTO 'admin' VALUES ('92', '2015-08-29 11:13:54', '1', 'pass92', '11111192', 'realname92', 'username92');
INSERT INTO 'admin' VALUES ('93', '2015-08-29 11:13:54', '1', 'pass93', '11111193', 'realname93', 'username93');
INSERT INTO 'admin' VALUES ('94', '2015-08-29 11:13:54', '1', 'pass94', '11111194', 'realname94', 'username94');
INSERT INTO 'admin' VALUES ('95', '2015-08-29 11:13:54', '1', 'pass95', '11111195', 'realname95', 'username95');
INSERT INTO 'admin' VALUES ('96', '2015-08-29 11:13:54', '1', 'pass96', '11111196', 'realname96', 'username96');
INSERT INTO 'admin' VALUES ('97', '2015-08-29 11:13:54', '1', 'pass97', '11111197', 'realname97', 'username97');
INSERT INTO 'admin' VALUES ('98', '2015-08-29 11:13:54', '1', 'pass98', '11111198', 'realname98', 'username98');
INSERT INTO 'admin' VALUES ('99', '2015-08-29 11:13:54', '1', 'pass99', '11111199', 'realname99', 'username99');

-- ----------------------------
-- Table structure for 'alumnus'
-- ----------------------------
DROP TABLE IF EXISTS 'alumnus';
CREATE TABLE 'alumnus' (
  'id' varchar(255) NOT NULL DEFAULT '编号',
  'company' varchar(32) DEFAULT NULL COMMENT '公司',
  'department' varchar(64) DEFAULT NULL COMMENT '院系',
  'email' varchar(32) DEFAULT NULL COMMENT '邮箱',
  'enrealname' varchar(16) DEFAULT NULL COMMENT '英文姓名',
  'grade' varchar(16) DEFAULT NULL COMMENT '年级',
  'headpic_path' varchar(64) DEFAULT NULL COMMENT '头像路径',
  'lat' double DEFAULT NULL COMMENT '经度',
  'lng' double DEFAULT NULL COMMENT '维度',
  'phone' varchar(11) DEFAULT NULL COMMENT '手机号',
  'realname' varchar(16) DEFAULT NULL COMMENT '真实姓名',
  'school' varchar(64) DEFAULT NULL COMMENT '学校',
  'sex' int(11) DEFAULT NULL COMMENT '性别',
  'title' varchar(16) DEFAULT NULL COMMENT '职位',
  'weixin' varchar(32) DEFAULT NULL COMMENT '微信号',
  'user_id' varchar(255) DEFAULT NULL COMMENT '用户编号',
  PRIMARY KEY ('id'),
  KEY 'FK_iq7gvk7j5u255mvluaxp7pmdc' ('user_id'),
  CONSTRAINT 'FK_iq7gvk7j5u255mvluaxp7pmdc' FOREIGN KEY ('user_id') REFERENCES 'user' ('id')
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of alumnus
-- ----------------------------
INSERT INTO 'alumnus' VALUES ('0', 'company0', 'department0', 'email0@qq.com', 'enrealname0', 'grade0', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '296.99', '302.08', '1111110', 'realname0', 'school0', '1', 'title0', 'weixin0', '0');
INSERT INTO 'alumnus' VALUES ('1', 'company1', 'department1', 'email1@qq.com', 'enrealname1', 'grade1', '', '154.73', '342.6', '1111111', 'realname1', 'school1', '0', 'title1', 'weixin1', '1');
INSERT INTO 'alumnus' VALUES ('10', 'company10', 'department10', 'email10@qq.com', 'enrealname10', 'grade10', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '23.24', '242.41', '11111110', 'realname10', 'school10', '0', 'title10', 'weixin10', '10');
INSERT INTO 'alumnus' VALUES ('11', 'company11', 'department11', 'email11@qq.com', 'enrealname11', 'grade11', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '248.75', '128.34', '11111111', 'realname11', 'school11', '0', 'title11', 'weixin11', '11');
INSERT INTO 'alumnus' VALUES ('12', 'company12', 'department12', 'email12@qq.com', 'enrealname12', 'grade12', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '136.11', '309.88', '11111112', 'realname12', 'school12', '1', 'title12', 'weixin12', '12');
INSERT INTO 'alumnus' VALUES ('13', 'company13', 'department13', 'email13@qq.com', 'enrealname13', 'grade13', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '192.06', '77.81', '11111113', 'realname13', 'school13', '0', 'title13', 'weixin13', '13');
INSERT INTO 'alumnus' VALUES ('14', 'company14', 'department14', 'email14@qq.com', 'enrealname14', 'grade14', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '288.45', '48.44', '11111114', 'realname14', 'school14', '0', 'title14', 'weixin14', '14');
INSERT INTO 'alumnus' VALUES ('15', 'company15', 'department15', 'email15@qq.com', 'enrealname15', 'grade15', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '190.98', '81.81', '11111115', 'realname15', 'school15', '0', 'title15', 'weixin15', '15');
INSERT INTO 'alumnus' VALUES ('16', 'company16', 'department16', 'email16@qq.com', 'enrealname16', 'grade16', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '261.66', '99.93', '11111116', 'realname16', 'school16', '0', 'title16', 'weixin16', '16');
INSERT INTO 'alumnus' VALUES ('17', 'company17', 'department17', 'email17@qq.com', 'enrealname17', 'grade17', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '211.32', '338.35', '11111117', 'realname17', 'school17', '1', 'title17', 'weixin17', '17');
INSERT INTO 'alumnus' VALUES ('18', 'company18', 'department18', 'email18@qq.com', 'enrealname18', 'grade18', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '6.06', '297.84', '11111118', 'realname18', 'school18', '0', 'title18', 'weixin18', '18');
INSERT INTO 'alumnus' VALUES ('19', 'company19', 'department19', 'email19@qq.com', 'enrealname19', 'grade19', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '194.73', '42.72', '11111119', 'realname19', 'school19', '0', 'title19', 'weixin19', '19');
INSERT INTO 'alumnus' VALUES ('2', 'company2', 'department2', 'email2@qq.com', 'enrealname2', 'grade2', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '307.28', '160.95', '1111112', 'realname2', 'school2', '0', 'title2', 'weixin2', '2');
INSERT INTO 'alumnus' VALUES ('20', 'company20', 'department20', 'email20@qq.com', 'enrealname20', 'grade20', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '265.48', '92.37', '11111120', 'realname20', 'school20', '1', 'title20', 'weixin20', '20');
INSERT INTO 'alumnus' VALUES ('21', 'company21', 'department21', 'email21@qq.com', 'enrealname21', 'grade21', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '212.9', '76.76', '11111121', 'realname21', 'school21', '0', 'title21', 'weixin21', '21');
INSERT INTO 'alumnus' VALUES ('22', 'company22', 'department22', 'email22@qq.com', 'enrealname22', 'grade22', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '267.48', '335.88', '11111122', 'realname22', 'school22', '0', 'title22', 'weixin22', '22');
INSERT INTO 'alumnus' VALUES ('23', 'company23', 'department23', 'email23@qq.com', 'enrealname23', 'grade23', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '177.25', '179.97', '11111123', 'realname23', 'school23', '0', 'title23', 'weixin23', '23');
INSERT INTO 'alumnus' VALUES ('24', 'company24', 'department24', 'email24@qq.com', 'enrealname24', 'grade24', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '78.78', '60.78', '11111124', 'realname24', 'school24', '0', 'title24', 'weixin24', '24');
INSERT INTO 'alumnus' VALUES ('25', 'company25', 'department25', 'email25@qq.com', 'enrealname25', 'grade25', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '342.59', '44.05', '11111125', 'realname25', 'school25', '1', 'title25', 'weixin25', '25');
INSERT INTO 'alumnus' VALUES ('26', 'company26', 'department26', 'email26@qq.com', 'enrealname26', 'grade26', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '206.5', '208.62', '11111126', 'realname26', 'school26', '0', 'title26', 'weixin26', '26');
INSERT INTO 'alumnus' VALUES ('27', 'company27', 'department27', 'email27@qq.com', 'enrealname27', 'grade27', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '161.22', '162.48', '11111127', 'realname27', 'school27', '1', 'title27', 'weixin27', '27');
INSERT INTO 'alumnus' VALUES ('28', 'company28', 'department28', 'email28@qq.com', 'enrealname28', 'grade28', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '185.76', '347.06', '11111128', 'realname28', 'school28', '1', 'title28', 'weixin28', '28');
INSERT INTO 'alumnus' VALUES ('29', 'company29', 'department29', 'email29@qq.com', 'enrealname29', 'grade29', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '174.59', '193.18', '11111129', 'realname29', 'school29', '0', 'title29', 'weixin29', '29');
INSERT INTO 'alumnus' VALUES ('3', 'company3', 'department3', 'email3@qq.com', 'enrealname3', 'grade3', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '33.56', '261.94', '1111113', 'realname3', 'school3', '1', 'title3', 'weixin3', '3');
INSERT INTO 'alumnus' VALUES ('30', 'company30', 'department30', 'email30@qq.com', 'enrealname30', 'grade30', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '239.19', '221.96', '11111130', 'realname30', 'school30', '1', 'title30', 'weixin30', '30');
INSERT INTO 'alumnus' VALUES ('31', 'company31', 'department31', 'email31@qq.com', 'enrealname31', 'grade31', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '158.98', '104.37', '11111131', 'realname31', 'school31', '1', 'title31', 'weixin31', '31');
INSERT INTO 'alumnus' VALUES ('32', 'company32', 'department32', 'email32@qq.com', 'enrealname32', 'grade32', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '201.85', '283.06', '11111132', 'realname32', 'school32', '0', 'title32', 'weixin32', '32');
INSERT INTO 'alumnus' VALUES ('33', 'company33', 'department33', 'email33@qq.com', 'enrealname33', 'grade33', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '42.73', '232.92', '11111133', 'realname33', 'school33', '1', 'title33', 'weixin33', '33');
INSERT INTO 'alumnus' VALUES ('34', 'company34', 'department34', 'email34@qq.com', 'enrealname34', 'grade34', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '272.09', '137.62', '11111134', 'realname34', 'school34', '1', 'title34', 'weixin34', '34');
INSERT INTO 'alumnus' VALUES ('35', 'company35', 'department35', 'email35@qq.com', 'enrealname35', 'grade35', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '137.89', '345.61', '11111135', 'realname35', 'school35', '0', 'title35', 'weixin35', '35');
INSERT INTO 'alumnus' VALUES ('36', 'company36', 'department36', 'email36@qq.com', 'enrealname36', 'grade36', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1.37', '161.21', '11111136', 'realname36', 'school36', '0', 'title36', 'weixin36', '36');
INSERT INTO 'alumnus' VALUES ('37', 'company37', 'department37', 'email37@qq.com', 'enrealname37', 'grade37', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '173.8', '241.29', '11111137', 'realname37', 'school37', '1', 'title37', 'weixin37', '37');
INSERT INTO 'alumnus' VALUES ('38', 'company38', 'department38', 'email38@qq.com', 'enrealname38', 'grade38', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '144.1', '302.51', '11111138', 'realname38', 'school38', '1', 'title38', 'weixin38', '38');
INSERT INTO 'alumnus' VALUES ('39', 'company39', 'department39', 'email39@qq.com', 'enrealname39', 'grade39', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '178.99', '211.64', '11111139', 'realname39', 'school39', '1', 'title39', 'weixin39', '39');
INSERT INTO 'alumnus' VALUES ('4', 'company4', 'department4', 'email4@qq.com', 'enrealname4', 'grade4', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '140.18', '358.05', '1111114', 'realname4', 'school4', '1', 'title4', 'weixin4', '4');
INSERT INTO 'alumnus' VALUES ('40', 'company40', 'department40', 'email40@qq.com', 'enrealname40', 'grade40', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '276.81', '217.75', '11111140', 'realname40', 'school40', '0', 'title40', 'weixin40', '40');
INSERT INTO 'alumnus' VALUES ('41', 'company41', 'department41', 'email41@qq.com', 'enrealname41', 'grade41', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '56.46', '89.65', '11111141', 'realname41', 'school41', '0', 'title41', 'weixin41', '41');
INSERT INTO 'alumnus' VALUES ('42', 'company42', 'department42', 'email42@qq.com', 'enrealname42', 'grade42', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '88.44', '218.51', '11111142', 'realname42', 'school42', '1', 'title42', 'weixin42', '42');
INSERT INTO 'alumnus' VALUES ('43', 'company43', 'department43', 'email43@qq.com', 'enrealname43', 'grade43', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '150.41', '184.14', '11111143', 'realname43', 'school43', '1', 'title43', 'weixin43', '43');
INSERT INTO 'alumnus' VALUES ('44', 'company44', 'department44', 'email44@qq.com', 'enrealname44', 'grade44', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '118.75', '12.6', '11111144', 'realname44', 'school44', '1', 'title44', 'weixin44', '44');
INSERT INTO 'alumnus' VALUES ('45', 'company45', 'department45', 'email45@qq.com', 'enrealname45', 'grade45', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '252.12', '212.62', '11111145', 'realname45', 'school45', '0', 'title45', 'weixin45', '45');
INSERT INTO 'alumnus' VALUES ('46', 'company46', 'department46', 'email46@qq.com', 'enrealname46', 'grade46', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '13.13', '256.97', '11111146', 'realname46', 'school46', '1', 'title46', 'weixin46', '46');
INSERT INTO 'alumnus' VALUES ('47', 'company47', 'department47', 'email47@qq.com', 'enrealname47', 'grade47', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '340.34', '217.04', '11111147', 'realname47', 'school47', '0', 'title47', 'weixin47', '47');
INSERT INTO 'alumnus' VALUES ('48', 'company48', 'department48', 'email48@qq.com', 'enrealname48', 'grade48', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '159.84', '52.37', '11111148', 'realname48', 'school48', '0', 'title48', 'weixin48', '48');
INSERT INTO 'alumnus' VALUES ('49', 'company49', 'department49', 'email49@qq.com', 'enrealname49', 'grade49', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '305.42', '15.3', '11111149', 'realname49', 'school49', '1', 'title49', 'weixin49', '49');
INSERT INTO 'alumnus' VALUES ('5', 'company5', 'department5', 'email5@qq.com', 'enrealname5', 'grade5', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '295.48', '130.95', '1111115', 'realname5', 'school5', '0', 'title5', 'weixin5', '5');
INSERT INTO 'alumnus' VALUES ('50', 'company50', 'department50', 'email50@qq.com', 'enrealname50', 'grade50', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '158.76', '68.69', '11111150', 'realname50', 'school50', '1', 'title50', 'weixin50', '50');
INSERT INTO 'alumnus' VALUES ('51', 'company51', 'department51', 'email51@qq.com', 'enrealname51', 'grade51', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '163.79', '152.84', '11111151', 'realname51', 'school51', '0', 'title51', 'weixin51', '51');
INSERT INTO 'alumnus' VALUES ('52', 'company52', 'department52', 'email52@qq.com', 'enrealname52', 'grade52', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '87.24', '20.29', '11111152', 'realname52', 'school52', '1', 'title52', 'weixin52', '52');
INSERT INTO 'alumnus' VALUES ('53', 'company53', 'department53', 'email53@qq.com', 'enrealname53', 'grade53', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '96.13', '276.28', '11111153', 'realname53', 'school53', '0', 'title53', 'weixin53', '53');
INSERT INTO 'alumnus' VALUES ('54', 'company54', 'department54', 'email54@qq.com', 'enrealname54', 'grade54', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '77.54', '123.78', '11111154', 'realname54', 'school54', '0', 'title54', 'weixin54', '54');
INSERT INTO 'alumnus' VALUES ('55', 'company55', 'department55', 'email55@qq.com', 'enrealname55', 'grade55', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '39.07', '335.15', '11111155', 'realname55', 'school55', '1', 'title55', 'weixin55', '55');
INSERT INTO 'alumnus' VALUES ('56', 'company56', 'department56', 'email56@qq.com', 'enrealname56', 'grade56', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '218.39', '236', '11111156', 'realname56', 'school56', '0', 'title56', 'weixin56', '56');
INSERT INTO 'alumnus' VALUES ('57', 'company57', 'department57', 'email57@qq.com', 'enrealname57', 'grade57', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '119.69', '65.04', '11111157', 'realname57', 'school57', '1', 'title57', 'weixin57', '57');
INSERT INTO 'alumnus' VALUES ('58', 'company58', 'department58', 'email58@qq.com', 'enrealname58', 'grade58', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '269.95', '91.64', '11111158', 'realname58', 'school58', '1', 'title58', 'weixin58', '58');
INSERT INTO 'alumnus' VALUES ('59', 'company59', 'department59', 'email59@qq.com', 'enrealname59', 'grade59', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '251.37', '74.07', '11111159', 'realname59', 'school59', '0', 'title59', 'weixin59', '59');
INSERT INTO 'alumnus' VALUES ('6', 'company6', 'department6', 'email6@qq.com', 'enrealname6', 'grade6', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '333.88', '212.45', '1111116', 'realname6', 'school6', '0', 'title6', 'weixin6', '6');
INSERT INTO 'alumnus' VALUES ('60', 'company60', 'department60', 'email60@qq.com', 'enrealname60', 'grade60', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '241.5', '188.01', '11111160', 'realname60', 'school60', '1', 'title60', 'weixin60', '60');
INSERT INTO 'alumnus' VALUES ('61', 'company61', 'department61', 'email61@qq.com', 'enrealname61', 'grade61', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '208.08', '305.32', '11111161', 'realname61', 'school61', '1', 'title61', 'weixin61', '61');
INSERT INTO 'alumnus' VALUES ('62', 'company62', 'department62', 'email62@qq.com', 'enrealname62', 'grade62', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '292.23', '202.49', '11111162', 'realname62', 'school62', '0', 'title62', 'weixin62', '62');
INSERT INTO 'alumnus' VALUES ('63', 'company63', 'department63', 'email63@qq.com', 'enrealname63', 'grade63', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '7.9', '326.72', '11111163', 'realname63', 'school63', '0', 'title63', 'weixin63', '63');
INSERT INTO 'alumnus' VALUES ('64', 'company64', 'department64', 'email64@qq.com', 'enrealname64', 'grade64', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '194.47', '26.13', '11111164', 'realname64', 'school64', '1', 'title64', 'weixin64', '64');
INSERT INTO 'alumnus' VALUES ('65', 'company65', 'department65', 'email65@qq.com', 'enrealname65', 'grade65', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '20.12', '204.03', '11111165', 'realname65', 'school65', '1', 'title65', 'weixin65', '65');
INSERT INTO 'alumnus' VALUES ('66', 'company66', 'department66', 'email66@qq.com', 'enrealname66', 'grade66', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '352.77', '6.82', '11111166', 'realname66', 'school66', '1', 'title66', 'weixin66', '66');
INSERT INTO 'alumnus' VALUES ('67', 'company67', 'department67', 'email67@qq.com', 'enrealname67', 'grade67', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '202.41', '46.61', '11111167', 'realname67', 'school67', '0', 'title67', 'weixin67', '67');
INSERT INTO 'alumnus' VALUES ('68', 'company68', 'department68', 'email68@qq.com', 'enrealname68', 'grade68', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '342.74', '129.51', '11111168', 'realname68', 'school68', '0', 'title68', 'weixin68', '68');
INSERT INTO 'alumnus' VALUES ('69', 'company69', 'department69', 'email69@qq.com', 'enrealname69', 'grade69', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '321.85', '333.6', '11111169', 'realname69', 'school69', '0', 'title69', 'weixin69', '69');
INSERT INTO 'alumnus' VALUES ('7', 'company7', 'department7', 'email7@qq.com', 'enrealname7', 'grade7', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '118.56', '150.02', '1111117', 'realname7', 'school7', '1', 'title7', 'weixin7', '7');
INSERT INTO 'alumnus' VALUES ('70', 'company70', 'department70', 'email70@qq.com', 'enrealname70', 'grade70', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '269.94', '248.09', '11111170', 'realname70', 'school70', '0', 'title70', 'weixin70', '70');
INSERT INTO 'alumnus' VALUES ('71', 'company71', 'department71', 'email71@qq.com', 'enrealname71', 'grade71', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '349.22', '81.73', '11111171', 'realname71', 'school71', '1', 'title71', 'weixin71', '71');
INSERT INTO 'alumnus' VALUES ('72', 'company72', 'department72', 'email72@qq.com', 'enrealname72', 'grade72', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '231.62', '22.34', '11111172', 'realname72', 'school72', '0', 'title72', 'weixin72', '72');
INSERT INTO 'alumnus' VALUES ('73', 'company73', 'department73', 'email73@qq.com', 'enrealname73', 'grade73', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '92.26', '241.46', '11111173', 'realname73', 'school73', '0', 'title73', 'weixin73', '73');
INSERT INTO 'alumnus' VALUES ('74', 'company74', 'department74', 'email74@qq.com', 'enrealname74', 'grade74', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '250.3', '290.52', '11111174', 'realname74', 'school74', '1', 'title74', 'weixin74', '74');
INSERT INTO 'alumnus' VALUES ('75', 'company75', 'department75', 'email75@qq.com', 'enrealname75', 'grade75', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '94.18', '6.51', '11111175', 'realname75', 'school75', '1', 'title75', 'weixin75', '75');
INSERT INTO 'alumnus' VALUES ('76', 'company76', 'department76', 'email76@qq.com', 'enrealname76', 'grade76', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '144.5', '359.99', '11111176', 'realname76', 'school76', '1', 'title76', 'weixin76', '76');
INSERT INTO 'alumnus' VALUES ('77', 'company77', 'department77', 'email77@qq.com', 'enrealname77', 'grade77', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '151.1', '202.37', '11111177', 'realname77', 'school77', '1', 'title77', 'weixin77', '77');
INSERT INTO 'alumnus' VALUES ('78', 'company78', 'department78', 'email78@qq.com', 'enrealname78', 'grade78', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '323.24', '199.4', '11111178', 'realname78', 'school78', '0', 'title78', 'weixin78', '78');
INSERT INTO 'alumnus' VALUES ('79', 'company79', 'department79', 'email79@qq.com', 'enrealname79', 'grade79', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '267.4', '154.3', '11111179', 'realname79', 'school79', '1', 'title79', 'weixin79', '79');
INSERT INTO 'alumnus' VALUES ('8', 'company8', 'department8', 'email8@qq.com', 'enrealname8', 'grade8', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '166.92', '3.24', '1111118', 'realname8', 'school8', '1', 'title8', 'weixin8', '8');
INSERT INTO 'alumnus' VALUES ('80', 'company80', 'department80', 'email80@qq.com', 'enrealname80', 'grade80', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '173.6', '336.77', '11111180', 'realname80', 'school80', '0', 'title80', 'weixin80', '80');
INSERT INTO 'alumnus' VALUES ('81', 'company81', 'department81', 'email81@qq.com', 'enrealname81', 'grade81', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '345.12', '9.8', '11111181', 'realname81', 'school81', '1', 'title81', 'weixin81', '81');
INSERT INTO 'alumnus' VALUES ('82', 'company82', 'department82', 'email82@qq.com', 'enrealname82', 'grade82', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '169.48', '56.6', '11111182', 'realname82', 'school82', '0', 'title82', 'weixin82', '82');
INSERT INTO 'alumnus' VALUES ('83', 'company83', 'department83', 'email83@qq.com', 'enrealname83', 'grade83', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '192.97', '174.6', '11111183', 'realname83', 'school83', '0', 'title83', 'weixin83', '83');
INSERT INTO 'alumnus' VALUES ('84', 'company84', 'department84', 'email84@qq.com', 'enrealname84', 'grade84', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '223.56', '213.64', '11111184', 'realname84', 'school84', '1', 'title84', 'weixin84', '84');
INSERT INTO 'alumnus' VALUES ('85', 'company85', 'department85', 'email85@qq.com', 'enrealname85', 'grade85', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '198.45', '98.64', '11111185', 'realname85', 'school85', '0', 'title85', 'weixin85', '85');
INSERT INTO 'alumnus' VALUES ('86', 'company86', 'department86', 'email86@qq.com', 'enrealname86', 'grade86', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '136.89', '336.32', '11111186', 'realname86', 'school86', '0', 'title86', 'weixin86', '86');
INSERT INTO 'alumnus' VALUES ('87', 'company87', 'department87', 'email87@qq.com', 'enrealname87', 'grade87', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '241.47', '81.6', '11111187', 'realname87', 'school87', '1', 'title87', 'weixin87', '87');
INSERT INTO 'alumnus' VALUES ('88', 'company88', 'department88', 'email88@qq.com', 'enrealname88', 'grade88', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '172.28', '37.76', '11111188', 'realname88', 'school88', '1', 'title88', 'weixin88', '88');
INSERT INTO 'alumnus' VALUES ('89', 'company89', 'department89', 'email89@qq.com', 'enrealname89', 'grade89', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '12.7', '1.22', '11111189', 'realname89', 'school89', '1', 'title89', 'weixin89', '89');
INSERT INTO 'alumnus' VALUES ('9', 'company9', 'department9', 'email9@qq.com', 'enrealname9', 'grade9', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '195.29', '342.6', '1111119', 'realname9', 'school9', '0', 'title9', 'weixin9', '9');
INSERT INTO 'alumnus' VALUES ('90', 'company90', 'department90', 'email90@qq.com', 'enrealname90', 'grade90', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '197.31', '67.44', '11111190', 'realname90', 'school90', '0', 'title90', 'weixin90', '90');
INSERT INTO 'alumnus' VALUES ('91', 'company91', 'department91', 'email91@qq.com', 'enrealname91', 'grade91', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '211.43', '307.7', '11111191', 'realname91', 'school91', '0', 'title91', 'weixin91', '91');
INSERT INTO 'alumnus' VALUES ('92', 'company92', 'department92', 'email92@qq.com', 'enrealname92', 'grade92', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '66.19', '175.19', '11111192', 'realname92', 'school92', '1', 'title92', 'weixin92', '92');
INSERT INTO 'alumnus' VALUES ('93', 'company93', 'department93', 'email93@qq.com', 'enrealname93', 'grade93', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '124.93', '145.74', '11111193', 'realname93', 'school93', '0', 'title93', 'weixin93', '93');
INSERT INTO 'alumnus' VALUES ('94', 'company94', 'department94', 'email94@qq.com', 'enrealname94', 'grade94', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '184.43', '265.33', '11111194', 'realname94', 'school94', '1', 'title94', 'weixin94', '94');
INSERT INTO 'alumnus' VALUES ('95', 'company95', 'department95', 'email95@qq.com', 'enrealname95', 'grade95', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '171.97', '89.15', '11111195', 'realname95', 'school95', '0', 'title95', 'weixin95', '95');
INSERT INTO 'alumnus' VALUES ('96', 'company96', 'department96', 'email96@qq.com', 'enrealname96', 'grade96', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '258.94', '125.62', '11111196', 'realname96', 'school96', '1', 'title96', 'weixin96', '96');
INSERT INTO 'alumnus' VALUES ('97', 'company97', 'department97', 'email97@qq.com', 'enrealname97', 'grade97', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '104.97', '172.56', '11111197', 'realname97', 'school97', '1', 'title97', 'weixin97', '97');
INSERT INTO 'alumnus' VALUES ('98', 'company98', 'department98', 'email98@qq.com', 'enrealname98', 'grade98', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '36.91', '336.63', '11111198', 'realname98', 'school98', '0', 'title98', 'weixin98', '98');
INSERT INTO 'alumnus' VALUES ('99', 'company99', 'department99', 'email99@qq.com', 'enrealname99', 'grade99', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '180.69', '165.43', '11111199', 'realname99', 'school99', '0', 'title99', 'weixin99', '99');

-- ----------------------------
-- Table structure for 'atvcmt'
-- ----------------------------
DROP TABLE IF EXISTS 'atvcmt';
CREATE TABLE 'atvcmt' (
  'id' varchar(255) NOT NULL DEFAULT '编号',
  'content' varchar(255) DEFAULT NULL COMMENT '内容',
  'c_time' datetime DEFAULT NULL COMMENT '创建时间',
  'likecount' int(11) DEFAULT NULL COMMENT '点赞次数',
  'activity_id' varchar(255) DEFAULT NULL COMMENT '活动编号',
  'comment_userid' varchar(255) DEFAULT NULL COMMENT '评论者编号',
  'parent_id' varchar(255) DEFAULT NULL COMMENT '父极评论编号',
  PRIMARY KEY ('id'),
  KEY 'FK_o977yw88hmxcy8cogof5jfpc5' ('activity_id'),
  KEY 'FK_h07qmnfx5f87mo70s543pjjrl' ('comment_userid'),
  KEY 'FK_h2nml9p61oku35cgl7fl6cy0x' ('parent_id'),
  CONSTRAINT 'FK_h07qmnfx5f87mo70s543pjjrl' FOREIGN KEY ('comment_userid') REFERENCES 'user' ('id'),
  CONSTRAINT 'FK_h2nml9p61oku35cgl7fl6cy0x' FOREIGN KEY ('parent_id') REFERENCES 'atvcmt' ('id'),
  CONSTRAINT 'FK_o977yw88hmxcy8cogof5jfpc5' FOREIGN KEY ('activity_id') REFERENCES 'activity' ('id')
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of atvcmt
-- ----------------------------
INSERT INTO 'atvcmt' VALUES ('0', 'content0', '2015-08-29 11:13:55', '53', '94', '65', null);
INSERT INTO 'atvcmt' VALUES ('1', 'content1', '2015-08-29 11:13:55', '34', '24', '31', null);
INSERT INTO 'atvcmt' VALUES ('11', 'content11', '2015-08-29 11:13:55', '92', '89', '44', '3');
INSERT INTO 'atvcmt' VALUES ('12', 'content12', '2015-08-29 11:13:55', '66', '89', '67', '3');
INSERT INTO 'atvcmt' VALUES ('13', 'content13', '2015-08-29 11:13:55', '79', '69', '74', '4');
INSERT INTO 'atvcmt' VALUES ('14', 'content14', '2015-08-29 11:13:55', '6', '46', '32', '6');
INSERT INTO 'atvcmt' VALUES ('15', 'content15', '2015-08-29 11:13:55', '39', '68', '12', '8');
INSERT INTO 'atvcmt' VALUES ('16', 'content16', '2015-08-29 11:13:55', '50', '89', '71', '3');
INSERT INTO 'atvcmt' VALUES ('17', 'content17', '2015-08-29 11:13:55', '13', '27', '41', '9');
INSERT INTO 'atvcmt' VALUES ('18', 'content18', '2015-08-29 11:13:55', '15', '46', '64', '6');
INSERT INTO 'atvcmt' VALUES ('19', 'content19', '2015-08-29 11:13:55', '19', '48', '42', '2');
INSERT INTO 'atvcmt' VALUES ('2', 'content2', '2015-08-29 11:13:55', '43', '48', '49', null);
INSERT INTO 'atvcmt' VALUES ('20', 'content20', '2015-08-29 11:13:55', '72', '89', '39', '3');
INSERT INTO 'atvcmt' VALUES ('21', 'content21', '2015-08-29 11:13:55', '72', '24', '56', '1');
INSERT INTO 'atvcmt' VALUES ('22', 'content22', '2015-08-29 11:13:55', '72', '69', '38', '4');
INSERT INTO 'atvcmt' VALUES ('23', 'content23', '2015-08-29 11:13:55', '50', '89', '77', '3');
INSERT INTO 'atvcmt' VALUES ('24', 'content24', '2015-08-29 11:13:55', '53', '69', '68', '4');
INSERT INTO 'atvcmt' VALUES ('25', 'content25', '2015-08-29 11:13:55', '11', '69', '48', '4');
INSERT INTO 'atvcmt' VALUES ('26', 'content26', '2015-08-29 11:13:55', '35', '55', '33', '5');
INSERT INTO 'atvcmt' VALUES ('27', 'content27', '2015-08-29 11:13:55', '29', '83', '50', '7');
INSERT INTO 'atvcmt' VALUES ('28', 'content28', '2015-08-29 11:13:55', '3', '46', '16', '6');
INSERT INTO 'atvcmt' VALUES ('29', 'content29', '2015-08-29 11:13:55', '11', '94', '62', '0');
INSERT INTO 'atvcmt' VALUES ('2c9090074f77741e014f777428ef0000', '评论2', '2015-08-29 11:15:46', '0', '30', '1', null);
INSERT INTO 'atvcmt' VALUES ('2c9090074f77741e014f777429020001', '评论2的子评论', '2015-08-29 11:15:46', '0', '30', '14', '2c9090074f77741e014f777428ef0000');
INSERT INTO 'atvcmt' VALUES ('2c9090074f78e0e5014f78e0ef9c0000', '评论2', '2015-08-29 17:54:11', '0', '30', '1', null);
INSERT INTO 'atvcmt' VALUES ('2c9090074f78e0e5014f78e0efa90001', '评论2的子评论', '2015-08-29 17:54:11', '0', '30', '14', '2c9090074f78e0e5014f78e0ef9c0000');
INSERT INTO 'atvcmt' VALUES ('2c9090074f78e11c014f78e127580000', '评论2', '2015-08-29 17:54:26', '0', '30', '1', null);
INSERT INTO 'atvcmt' VALUES ('2c9090074f78e11c014f78e127660001', '评论2的子评论', '2015-08-29 17:54:26', '0', '30', '14', '2c9090074f78e11c014f78e127580000');
INSERT INTO 'atvcmt' VALUES ('2c9090074f81561a014f815625330000', '评论2', '2015-08-31 09:19:11', '0', '30', '1', null);
INSERT INTO 'atvcmt' VALUES ('2c9090074f81561a014f815625420001', '评论2的子评论', '2015-08-31 09:19:11', '0', '30', '14', '2c9090074f81561a014f815625330000');
INSERT INTO 'atvcmt' VALUES ('2c9090074f8156d4014f81c0492f000a', 'aaaa', '2015-08-31 11:15:07', '1', '1', '1', null);
INSERT INTO 'atvcmt' VALUES ('2c9090074f81d0a7014f81d0b28d0000', '评论2', '2015-08-31 11:33:02', '0', '30', '1', null);
INSERT INTO 'atvcmt' VALUES ('2c9090074f81d0a7014f81d0b29e0001', '评论2的子评论', '2015-08-31 11:33:02', '0', '30', '14', '2c9090074f81d0a7014f81d0b28d0000');
INSERT INTO 'atvcmt' VALUES ('2c9090074f82634b014f826356610000', '评论2', '2015-08-31 14:13:12', '0', '30', '1', null);
INSERT INTO 'atvcmt' VALUES ('2c9090074f82634b014f826356770001', '评论2的子评论', '2015-08-31 14:13:12', '0', '30', '14', '2c9090074f82634b014f826356610000');
INSERT INTO 'atvcmt' VALUES ('2c9090074f82b966014f82b970c00000', '评论2', '2015-08-31 15:47:15', '0', '30', '1', null);
INSERT INTO 'atvcmt' VALUES ('2c9090074f82b966014f82b970d00001', '评论2的子评论', '2015-08-31 15:47:15', '0', '30', '14', '2c9090074f82b966014f82b970c00000');
INSERT INTO 'atvcmt' VALUES ('2c9090074f82f4d1014f82f4dcb00000', '评论2', '2015-08-31 16:52:10', '0', '30', '1', null);
INSERT INTO 'atvcmt' VALUES ('2c9090074f82f4d1014f82f4dcc30001', '评论2的子评论', '2015-08-31 16:52:10', '0', '30', '14', '2c9090074f82f4d1014f82f4dcb00000');
INSERT INTO 'atvcmt' VALUES ('2c9090074f831293014f83129f620000', '评论2', '2015-08-31 17:24:40', '0', '30', '1', null);
INSERT INTO 'atvcmt' VALUES ('2c9090074f831293014f83129f720001', '评论2的子评论', '2015-08-31 17:24:40', '0', '30', '14', '2c9090074f831293014f83129f620000');
INSERT INTO 'atvcmt' VALUES ('3', 'content3', '2015-08-29 11:13:55', '60', '89', '39', null);
INSERT INTO 'atvcmt' VALUES ('30', 'content30', '2015-08-29 11:13:55', '18', '24', '39', '1');
INSERT INTO 'atvcmt' VALUES ('31', 'content31', '2015-08-29 11:13:55', '48', '46', '58', '6');
INSERT INTO 'atvcmt' VALUES ('32', 'content32', '2015-08-29 11:13:55', '79', '24', '9', '1');
INSERT INTO 'atvcmt' VALUES ('33', 'content33', '2015-08-29 11:13:55', '10', '94', '4', '0');
INSERT INTO 'atvcmt' VALUES ('34', 'content34', '2015-08-29 11:13:55', '83', '24', '36', '1');
INSERT INTO 'atvcmt' VALUES ('35', 'content35', '2015-08-29 11:13:55', '12', '68', '11', '8');
INSERT INTO 'atvcmt' VALUES ('36', 'content36', '2015-08-29 11:13:55', '83', '27', '52', '9');
INSERT INTO 'atvcmt' VALUES ('37', 'content37', '2015-08-29 11:13:55', '67', '94', '2', '0');
INSERT INTO 'atvcmt' VALUES ('38', 'content38', '2015-08-29 11:13:55', '76', '24', '61', '1');
INSERT INTO 'atvcmt' VALUES ('39', 'content39', '2015-08-29 11:13:55', '91', '27', '56', '9');
INSERT INTO 'atvcmt' VALUES ('4', 'content4', '2015-08-29 11:13:55', '29', '69', '37', null);
INSERT INTO 'atvcmt' VALUES ('40', 'content40', '2015-08-29 11:13:55', '84', '48', '95', '2');
INSERT INTO 'atvcmt' VALUES ('41', 'content41', '2015-08-29 11:13:55', '23', '89', '42', '3');
INSERT INTO 'atvcmt' VALUES ('42', 'content42', '2015-08-29 11:13:55', '67', '48', '14', '2');
INSERT INTO 'atvcmt' VALUES ('43', 'content43', '2015-08-29 11:13:55', '91', '83', '77', '7');
INSERT INTO 'atvcmt' VALUES ('44', 'content44', '2015-08-29 11:13:55', '16', '89', '33', '3');
INSERT INTO 'atvcmt' VALUES ('45', 'content45', '2015-08-29 11:13:55', '30', '46', '7', '6');
INSERT INTO 'atvcmt' VALUES ('46', 'content46', '2015-08-29 11:13:55', '25', '83', '39', '7');
INSERT INTO 'atvcmt' VALUES ('47', 'content47', '2015-08-29 11:13:55', '12', '48', '37', '2');
INSERT INTO 'atvcmt' VALUES ('48', 'content48', '2015-08-29 11:13:55', '92', '24', '4', '1');
INSERT INTO 'atvcmt' VALUES ('49', 'content49', '2015-08-29 11:13:55', '72', '94', '69', '0');
INSERT INTO 'atvcmt' VALUES ('5', 'content5', '2015-08-29 11:13:55', '40', '55', '66', null);
INSERT INTO 'atvcmt' VALUES ('50', 'content50', '2015-08-29 11:13:55', '14', '89', '74', '3');
INSERT INTO 'atvcmt' VALUES ('51', 'content51', '2015-08-29 11:13:55', '36', '89', '55', '3');
INSERT INTO 'atvcmt' VALUES ('52', 'content52', '2015-08-29 11:13:55', '9', '69', '24', '4');
INSERT INTO 'atvcmt' VALUES ('53', 'content53', '2015-08-29 11:13:55', '12', '27', '17', '9');
INSERT INTO 'atvcmt' VALUES ('54', 'content54', '2015-08-29 11:13:55', '57', '69', '26', '4');
INSERT INTO 'atvcmt' VALUES ('55', 'content55', '2015-08-29 11:13:55', '31', '48', '11', '2');
INSERT INTO 'atvcmt' VALUES ('56', 'content56', '2015-08-29 11:13:55', '65', '69', '14', '4');
INSERT INTO 'atvcmt' VALUES ('57', 'content57', '2015-08-29 11:13:55', '45', '24', '2', '1');
INSERT INTO 'atvcmt' VALUES ('58', 'content58', '2015-08-29 11:13:55', '76', '46', '24', '6');
INSERT INTO 'atvcmt' VALUES ('59', 'content59', '2015-08-29 11:13:55', '69', '83', '2', '7');
INSERT INTO 'atvcmt' VALUES ('6', 'content6', '2015-08-29 11:13:55', '72', '46', '54', null);
INSERT INTO 'atvcmt' VALUES ('60', 'content60', '2015-08-29 11:13:55', '69', '55', '77', '5');
INSERT INTO 'atvcmt' VALUES ('61', 'content61', '2015-08-29 11:13:55', '89', '68', '68', '8');
INSERT INTO 'atvcmt' VALUES ('62', 'content62', '2015-08-29 11:13:55', '39', '48', '31', '2');
INSERT INTO 'atvcmt' VALUES ('63', 'content63', '2015-08-29 11:13:55', '49', '89', '59', '3');
INSERT INTO 'atvcmt' VALUES ('64', 'content64', '2015-08-29 11:13:55', '36', '27', '38', '9');
INSERT INTO 'atvcmt' VALUES ('65', 'content65', '2015-08-29 11:13:55', '39', '27', '46', '9');
INSERT INTO 'atvcmt' VALUES ('66', 'content66', '2015-08-29 11:13:55', '24', '68', '48', '8');
INSERT INTO 'atvcmt' VALUES ('67', 'content67', '2015-08-29 11:13:55', '26', '69', '11', '4');
INSERT INTO 'atvcmt' VALUES ('68', 'content68', '2015-08-29 11:13:55', '48', '68', '36', '8');
INSERT INTO 'atvcmt' VALUES ('69', 'content69', '2015-08-29 11:13:55', '5', '27', '49', '9');
INSERT INTO 'atvcmt' VALUES ('7', 'content7', '2015-08-29 11:13:55', '1', '83', '58', null);
INSERT INTO 'atvcmt' VALUES ('70', 'content70', '2015-08-29 11:13:55', '17', '69', '70', '4');
INSERT INTO 'atvcmt' VALUES ('71', 'content71', '2015-08-29 11:13:55', '34', '69', '61', '4');
INSERT INTO 'atvcmt' VALUES ('72', 'content72', '2015-08-29 11:13:55', '95', '24', '24', '1');
INSERT INTO 'atvcmt' VALUES ('73', 'content73', '2015-08-29 11:13:55', '82', '69', '52', '4');
INSERT INTO 'atvcmt' VALUES ('74', 'content74', '2015-08-29 11:13:55', '24', '68', '80', '8');
INSERT INTO 'atvcmt' VALUES ('75', 'content75', '2015-08-29 11:13:55', '8', '68', '81', '8');
INSERT INTO 'atvcmt' VALUES ('76', 'content76', '2015-08-29 11:13:55', '50', '69', '40', '4');
INSERT INTO 'atvcmt' VALUES ('77', 'content77', '2015-08-29 11:13:55', '99', '46', '46', '6');
INSERT INTO 'atvcmt' VALUES ('78', 'content78', '2015-08-29 11:13:55', '19', '94', '79', '0');
INSERT INTO 'atvcmt' VALUES ('79', 'content79', '2015-08-29 11:13:55', '49', '48', '97', '2');
INSERT INTO 'atvcmt' VALUES ('8', 'content8', '2015-08-29 11:13:55', '43', '68', '56', null);
INSERT INTO 'atvcmt' VALUES ('80', 'content80', '2015-08-29 11:13:55', '24', '94', '33', '0');
INSERT INTO 'atvcmt' VALUES ('81', 'content81', '2015-08-29 11:13:55', '22', '68', '43', '8');
INSERT INTO 'atvcmt' VALUES ('82', 'content82', '2015-08-29 11:13:55', '10', '94', '65', '0');
INSERT INTO 'atvcmt' VALUES ('83', 'content83', '2015-08-29 11:13:55', '75', '69', '52', '4');
INSERT INTO 'atvcmt' VALUES ('84', 'content84', '2015-08-29 11:13:55', '40', '55', '94', '5');
INSERT INTO 'atvcmt' VALUES ('85', 'content85', '2015-08-29 11:13:55', '38', '24', '1', '1');
INSERT INTO 'atvcmt' VALUES ('86', 'content86', '2015-08-29 11:13:55', '95', '94', '68', '0');
INSERT INTO 'atvcmt' VALUES ('87', 'content87', '2015-08-29 11:13:55', '84', '69', '84', '4');
INSERT INTO 'atvcmt' VALUES ('88', 'content88', '2015-08-29 11:13:55', '8', '94', '85', '0');
INSERT INTO 'atvcmt' VALUES ('89', 'content89', '2015-08-29 11:13:55', '0', '24', '85', '1');
INSERT INTO 'atvcmt' VALUES ('9', 'content9', '2015-08-29 11:13:55', '62', '27', '43', null);
INSERT INTO 'atvcmt' VALUES ('90', 'content90', '2015-08-29 11:13:55', '4', '55', '38', '5');
INSERT INTO 'atvcmt' VALUES ('91', 'content91', '2015-08-29 11:13:55', '72', '27', '98', '9');
INSERT INTO 'atvcmt' VALUES ('92', 'content92', '2015-08-29 11:13:55', '63', '46', '91', '6');
INSERT INTO 'atvcmt' VALUES ('93', 'content93', '2015-08-29 11:13:55', '97', '27', '69', '9');
INSERT INTO 'atvcmt' VALUES ('94', 'content94', '2015-08-29 11:13:55', '33', '48', '80', '2');
INSERT INTO 'atvcmt' VALUES ('95', 'content95', '2015-08-29 11:13:55', '51', '24', '71', '1');
INSERT INTO 'atvcmt' VALUES ('96', 'content96', '2015-08-29 11:13:55', '86', '83', '56', '7');
INSERT INTO 'atvcmt' VALUES ('97', 'content97', '2015-08-29 11:13:55', '54', '68', '78', '8');
INSERT INTO 'atvcmt' VALUES ('98', 'content98', '2015-08-29 11:13:55', '77', '48', '25', '2');
INSERT INTO 'atvcmt' VALUES ('99', 'content99', '2015-08-29 11:13:55', '46', '24', '64', '1');

-- ----------------------------
-- Table structure for 'circle'
-- ----------------------------
DROP TABLE IF EXISTS 'circle';
CREATE TABLE 'circle' (
  'id' varchar(255) NOT NULL DEFAULT '编号',
  'c_time' datetime DEFAULT NULL COMMENT '创建时间',
  'iconpath' varchar(64) DEFAULT NULL COMMENT '图标路径',
  'introduce' varchar(255) DEFAULT NULL COMMENT '介绍',
  'picpath' varchar(64) DEFAULT NULL COMMENT '图片路径',
  'state' int(11) DEFAULT NULL COMMENT '状态',
  'title' varchar(32) DEFAULT NULL COMMENT '标题',
  'create_userid' varchar(255) DEFAULT NULL COMMENT '所属用户编号',
  PRIMARY KEY ('id'),
  KEY 'FK_lphar0916mithfui3jr703om0' ('create_userid'),
  CONSTRAINT 'FK_lphar0916mithfui3jr703om0' FOREIGN KEY ('create_userid') REFERENCES 'admin' ('id')
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of circle
-- ----------------------------
INSERT INTO 'circle' VALUES ('0', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic3.jpg', 'introduce0', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', 'title0', '84');
INSERT INTO 'circle' VALUES ('1', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic2.jpg', 'introduce1', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', 'title1', '27');
INSERT INTO 'circle' VALUES ('10', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic3.jpg', 'introduce10', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', 'title10', '42');
INSERT INTO 'circle' VALUES ('11', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic3.jpg', 'introduce11', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', 'title11', '13');
INSERT INTO 'circle' VALUES ('12', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic2.jpg', 'introduce12', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', 'title12', '68');
INSERT INTO 'circle' VALUES ('13', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic2.jpg', 'introduce13', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', 'title13', '64');
INSERT INTO 'circle' VALUES ('14', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic1.jpg', 'introduce14', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', 'title14', '47');
INSERT INTO 'circle' VALUES ('15', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic1.jpg', 'introduce15', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', 'title15', '36');
INSERT INTO 'circle' VALUES ('16', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic3.jpg', 'introduce16', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', 'title16', '99');
INSERT INTO 'circle' VALUES ('17', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic3.jpg', 'introduce17', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', 'title17', '49');
INSERT INTO 'circle' VALUES ('18', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic2.jpg', 'introduce18', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', 'title18', '17');
INSERT INTO 'circle' VALUES ('19', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic2.jpg', 'introduce19', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', 'title19', '35');
INSERT INTO 'circle' VALUES ('2', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic1.jpg', 'introduce2', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', 'title2', '98');
INSERT INTO 'circle' VALUES ('20', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic1.jpg', 'introduce20', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', 'title20', '27');
INSERT INTO 'circle' VALUES ('21', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic2.jpg', 'introduce21', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', 'title21', '4');
INSERT INTO 'circle' VALUES ('22', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic1.jpg', 'introduce22', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', 'title22', '20');
INSERT INTO 'circle' VALUES ('23', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic3.jpg', 'introduce23', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', 'title23', '52');
INSERT INTO 'circle' VALUES ('25', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic1.jpg', 'introduce25', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', 'title25', '28');
INSERT INTO 'circle' VALUES ('26', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic1.jpg', 'introduce26', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', 'title26', '60');
INSERT INTO 'circle' VALUES ('27', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic2.jpg', 'introduce27', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', 'title27', '81');
INSERT INTO 'circle' VALUES ('28', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic2.jpg', 'introduce28', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', 'title28', '15');
INSERT INTO 'circle' VALUES ('29', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic2.jpg', 'introduce29', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', 'title29', '45');
INSERT INTO 'circle' VALUES ('3', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic2.jpg', 'introduce3', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', 'title3', '56');
INSERT INTO 'circle' VALUES ('30', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic2.jpg', 'introduce30', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', 'title30', '96');
INSERT INTO 'circle' VALUES ('31', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic2.jpg', 'introduce31', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', 'title31', '90');
INSERT INTO 'circle' VALUES ('32', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic2.jpg', 'introduce32', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', 'title32', '68');
INSERT INTO 'circle' VALUES ('33', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic3.jpg', 'introduce33', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', 'title33', '63');
INSERT INTO 'circle' VALUES ('34', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic1.jpg', 'introduce34', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', 'title34', '77');
INSERT INTO 'circle' VALUES ('35', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic3.jpg', 'introduce35', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', 'title35', '22');
INSERT INTO 'circle' VALUES ('36', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic3.jpg', 'introduce36', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', 'title36', '19');
INSERT INTO 'circle' VALUES ('37', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic3.jpg', 'introduce37', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', 'title37', '65');
INSERT INTO 'circle' VALUES ('38', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic2.jpg', 'introduce38', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', 'title38', '54');
INSERT INTO 'circle' VALUES ('39', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic3.jpg', 'introduce39', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', 'title39', '38');
INSERT INTO 'circle' VALUES ('4', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic3.jpg', 'introduce4', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', 'title4', '6');
INSERT INTO 'circle' VALUES ('40', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic1.jpg', 'introduce40', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', 'title40', '15');
INSERT INTO 'circle' VALUES ('41', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic1.jpg', 'introduce41', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', 'title41', '5');
INSERT INTO 'circle' VALUES ('42', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic1.jpg', 'introduce42', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', 'title42', '26');
INSERT INTO 'circle' VALUES ('43', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic1.jpg', 'introduce43', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', 'title43', '14');
INSERT INTO 'circle' VALUES ('44', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic2.jpg', 'introduce44', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', 'title44', '33');
INSERT INTO 'circle' VALUES ('45', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic1.jpg', 'introduce45', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', 'title45', '94');
INSERT INTO 'circle' VALUES ('46', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic2.jpg', 'introduce46', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', 'title46', '40');
INSERT INTO 'circle' VALUES ('47', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic2.jpg', 'introduce47', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', 'title47', '33');
INSERT INTO 'circle' VALUES ('48', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic1.jpg', 'introduce48', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', 'title48', '27');
INSERT INTO 'circle' VALUES ('49', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic3.jpg', 'introduce49', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', 'title49', '71');
INSERT INTO 'circle' VALUES ('5', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic3.jpg', 'introduce5', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', 'title5', '2');
INSERT INTO 'circle' VALUES ('50', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic2.jpg', 'introduce50', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', 'title50', '64');
INSERT INTO 'circle' VALUES ('51', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic1.jpg', 'introduce51', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', 'title51', '93');
INSERT INTO 'circle' VALUES ('52', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic3.jpg', 'introduce52', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', 'title52', '79');
INSERT INTO 'circle' VALUES ('53', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic3.jpg', 'introduce53', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', 'title53', '17');
INSERT INTO 'circle' VALUES ('54', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic2.jpg', 'introduce54', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', 'title54', '6');
INSERT INTO 'circle' VALUES ('55', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic1.jpg', 'introduce55', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', 'title55', '95');
INSERT INTO 'circle' VALUES ('56', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic2.jpg', 'introduce56', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', 'title56', '14');
INSERT INTO 'circle' VALUES ('57', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic2.jpg', 'introduce57', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', 'title57', '11');
INSERT INTO 'circle' VALUES ('58', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic3.jpg', 'introduce58', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', 'title58', '17');
INSERT INTO 'circle' VALUES ('59', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic2.jpg', 'introduce59', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', 'title59', '49');
INSERT INTO 'circle' VALUES ('6', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic2.jpg', 'introduce6', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', 'title6', '54');
INSERT INTO 'circle' VALUES ('60', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic1.jpg', 'introduce60', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', 'title60', '7');
INSERT INTO 'circle' VALUES ('61', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic3.jpg', 'introduce61', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', 'title61', '52');
INSERT INTO 'circle' VALUES ('62', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic3.jpg', 'introduce62', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', 'title62', '48');
INSERT INTO 'circle' VALUES ('63', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic2.jpg', 'introduce63', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', 'title63', '17');
INSERT INTO 'circle' VALUES ('64', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic1.jpg', 'introduce64', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', 'title64', '31');
INSERT INTO 'circle' VALUES ('65', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic1.jpg', 'introduce65', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', 'title65', '80');
INSERT INTO 'circle' VALUES ('66', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic2.jpg', 'introduce66', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', 'title66', '84');
INSERT INTO 'circle' VALUES ('67', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic1.jpg', 'introduce67', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', 'title67', '38');
INSERT INTO 'circle' VALUES ('68', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic2.jpg', 'introduce68', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', 'title68', '30');
INSERT INTO 'circle' VALUES ('69', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic3.jpg', 'introduce69', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', 'title69', '97');
INSERT INTO 'circle' VALUES ('7', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic1.jpg', 'introduce7', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', 'title7', '96');
INSERT INTO 'circle' VALUES ('70', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic1.jpg', 'introduce70', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', 'title70', '83');
INSERT INTO 'circle' VALUES ('71', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic3.jpg', 'introduce71', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', 'title71', '90');
INSERT INTO 'circle' VALUES ('72', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic2.jpg', 'introduce72', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', 'title72', '94');
INSERT INTO 'circle' VALUES ('73', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic3.jpg', 'introduce73', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', 'title73', '75');
INSERT INTO 'circle' VALUES ('74', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic3.jpg', 'introduce74', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', 'title74', '42');
INSERT INTO 'circle' VALUES ('75', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic2.jpg', 'introduce75', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', 'title75', '41');
INSERT INTO 'circle' VALUES ('76', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic2.jpg', 'introduce76', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', 'title76', '17');
INSERT INTO 'circle' VALUES ('77', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic2.jpg', 'introduce77', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', 'title77', '54');
INSERT INTO 'circle' VALUES ('78', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic1.jpg', 'introduce78', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', 'title78', '53');
INSERT INTO 'circle' VALUES ('79', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic2.jpg', 'introduce79', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', 'title79', '49');
INSERT INTO 'circle' VALUES ('8', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic1.jpg', 'introduce8', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', 'title8', '79');
INSERT INTO 'circle' VALUES ('80', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic1.jpg', 'introduce80', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', 'title80', '98');
INSERT INTO 'circle' VALUES ('81', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic1.jpg', 'introduce81', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', 'title81', '41');
INSERT INTO 'circle' VALUES ('82', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic1.jpg', 'introduce82', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', 'title82', '29');
INSERT INTO 'circle' VALUES ('83', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic1.jpg', 'introduce83', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', 'title83', '99');
INSERT INTO 'circle' VALUES ('84', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic3.jpg', 'introduce84', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', 'title84', '98');
INSERT INTO 'circle' VALUES ('85', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic2.jpg', 'introduce85', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', 'title85', '72');
INSERT INTO 'circle' VALUES ('86', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic1.jpg', 'introduce86', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', 'title86', '33');
INSERT INTO 'circle' VALUES ('87', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic3.jpg', 'introduce87', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', 'title87', '34');
INSERT INTO 'circle' VALUES ('88', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic3.jpg', 'introduce88', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', 'title88', '23');
INSERT INTO 'circle' VALUES ('89', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic3.jpg', 'introduce89', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', 'title89', '1');
INSERT INTO 'circle' VALUES ('9', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic3.jpg', 'introduce9', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', 'title9', '98');
INSERT INTO 'circle' VALUES ('90', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic1.jpg', 'introduce90', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', 'title90', '51');
INSERT INTO 'circle' VALUES ('91', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic2.jpg', 'introduce91', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', 'title91', '81');
INSERT INTO 'circle' VALUES ('92', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic1.jpg', 'introduce92', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', 'title92', '28');
INSERT INTO 'circle' VALUES ('93', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic1.jpg', 'introduce93', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', 'title93', '68');
INSERT INTO 'circle' VALUES ('94', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic1.jpg', 'introduce94', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', 'title94', '99');
INSERT INTO 'circle' VALUES ('95', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic1.jpg', 'introduce95', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', 'title95', '45');
INSERT INTO 'circle' VALUES ('96', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic3.jpg', 'introduce96', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', 'title96', '5');
INSERT INTO 'circle' VALUES ('97', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic1.jpg', 'introduce97', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', 'title97', '34');
INSERT INTO 'circle' VALUES ('98', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic1.jpg', 'introduce98', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', 'title98', '78');
INSERT INTO 'circle' VALUES ('99', '2015-08-29 11:13:55', 'uploadfiles/20150811/20150811111719207/pic2.jpg', 'introduce99', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', 'title99', '15');

-- ----------------------------
-- Table structure for 'circmt'
-- ----------------------------
DROP TABLE IF EXISTS 'circmt';
CREATE TABLE 'circmt' (
  'id' varchar(255) NOT NULL DEFAULT '编号',
  'content' varchar(255) DEFAULT NULL COMMENT '内容',
  'c_time' datetime DEFAULT NULL COMMENT '创建时间',
  'likecount' int(11) DEFAULT NULL COMMENT '点赞次数',
  'circle_id' varchar(255) DEFAULT NULL COMMENT '圈子编号',
  'comment_userid' varchar(255) DEFAULT NULL COMMENT '评论者编号',
  'parent_id' varchar(255) DEFAULT NULL COMMENT '父级评论编号',
  PRIMARY KEY ('id'),
  KEY 'FK_2wqammsf36bisq9ut0wbekkm' ('circle_id'),
  KEY 'FK_2f1hpt4tt8uad1nsswsbcabsu' ('comment_userid'),
  KEY 'FK_sbm7b48tdq0vyfejo4oaajid6' ('parent_id'),
  CONSTRAINT 'FK_2f1hpt4tt8uad1nsswsbcabsu' FOREIGN KEY ('comment_userid') REFERENCES 'user' ('id'),
  CONSTRAINT 'FK_2wqammsf36bisq9ut0wbekkm' FOREIGN KEY ('circle_id') REFERENCES 'circle' ('id'),
  CONSTRAINT 'FK_sbm7b48tdq0vyfejo4oaajid6' FOREIGN KEY ('parent_id') REFERENCES 'circmt' ('id')
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of circmt
-- ----------------------------
INSERT INTO 'circmt' VALUES ('0', 'content0', '2015-08-29 11:13:56', '90', '35', '77', null);
INSERT INTO 'circmt' VALUES ('1', 'content1', '2015-08-29 11:13:56', '79', '32', '31', null);
INSERT INTO 'circmt' VALUES ('11', 'content11', '2015-08-29 11:13:56', '61', '34', '30', '4');
INSERT INTO 'circmt' VALUES ('12', 'content12', '2015-08-29 11:13:56', '27', '35', '4', '0');
INSERT INTO 'circmt' VALUES ('13', 'content13', '2015-08-29 11:13:56', '27', '35', '47', '0');
INSERT INTO 'circmt' VALUES ('14', 'content14', '2015-08-29 11:13:56', '59', '35', '27', '0');
INSERT INTO 'circmt' VALUES ('15', 'content15', '2015-08-29 11:13:56', '60', '32', '73', '1');
INSERT INTO 'circmt' VALUES ('16', 'content16', '2015-08-29 11:13:56', '32', '32', '93', '1');
INSERT INTO 'circmt' VALUES ('17', 'content17', '2015-08-29 11:13:56', '53', '47', '41', '8');
INSERT INTO 'circmt' VALUES ('18', 'content18', '2015-08-29 11:13:56', '10', '31', '35', '3');
INSERT INTO 'circmt' VALUES ('19', 'content19', '2015-08-29 11:13:56', '34', '35', '95', '0');
INSERT INTO 'circmt' VALUES ('2', 'content2', '2015-08-29 11:13:56', '70', '9', '43', null);
INSERT INTO 'circmt' VALUES ('20', 'content20', '2015-08-29 11:13:56', '89', '31', '83', '3');
INSERT INTO 'circmt' VALUES ('21', 'content21', '2015-08-29 11:13:56', '4', '47', '11', '8');
INSERT INTO 'circmt' VALUES ('22', 'content22', '2015-08-29 11:13:56', '2', '81', '19', '5');
INSERT INTO 'circmt' VALUES ('23', 'content23', '2015-08-29 11:13:56', '8', '35', '46', '0');
INSERT INTO 'circmt' VALUES ('24', 'content24', '2015-08-29 11:13:56', '39', '81', '37', '5');
INSERT INTO 'circmt' VALUES ('25', 'content25', '2015-08-29 11:13:56', '17', '88', '2', '7');
INSERT INTO 'circmt' VALUES ('26', 'content26', '2015-08-29 11:13:56', '25', '47', '97', '8');
INSERT INTO 'circmt' VALUES ('27', 'content27', '2015-08-29 11:13:56', '61', '31', '64', '3');
INSERT INTO 'circmt' VALUES ('28', 'content28', '2015-08-29 11:13:56', '17', '88', '99', '7');
INSERT INTO 'circmt' VALUES ('29', 'content29', '2015-08-29 11:13:56', '20', '81', '20', '5');
INSERT INTO 'circmt' VALUES ('2c9090074f81de3f014f81de4a6f0000', '父评论内容', '2015-08-31 11:47:53', '0', '89', '12', null);
INSERT INTO 'circmt' VALUES ('2c9090074f81de3f014f81de4aca0001', '子评论内容', '2015-08-31 11:47:53', '0', '89', '6', '2c9090074f81de3f014f81de4a6f0000');
INSERT INTO 'circmt' VALUES ('2c9090074f81e321014f81e3371d0000', '父评论内容', '2015-08-31 11:53:16', '0', '0', '12', null);
INSERT INTO 'circmt' VALUES ('2c9090074f81e321014f81e337a90001', '子评论内容', '2015-08-31 11:53:16', '0', '0', '6', '2c9090074f81e321014f81e3371d0000');
INSERT INTO 'circmt' VALUES ('2c9090074f81e613014f81ed0e810000', 'aaaaaa', '2015-08-31 12:04:01', '0', '0', '1', null);
INSERT INTO 'circmt' VALUES ('2c9090074f81e613014f8258c49c0001', 'vvvvva', '2015-08-31 14:01:40', '0', '0', '1', null);
INSERT INTO 'circmt' VALUES ('2c9090074f825989014f8259fbbd0000', 'zzzzzz', '2015-08-31 14:02:59', '0', '0', '1', null);
INSERT INTO 'circmt' VALUES ('2c9090074f825989014f825aa8130001', 'zzzzzz', '2015-08-31 14:03:44', '0', '0', '1', null);
INSERT INTO 'circmt' VALUES ('2c9090074f82634b014f8263599d0002', '父评论内容', '2015-08-31 14:13:13', '0', '0', '12', null);
INSERT INTO 'circmt' VALUES ('2c9090074f82634b014f826359a50003', '子评论内容', '2015-08-31 14:13:13', '0', '0', '6', '2c9090074f82634b014f8263599d0002');
INSERT INTO 'circmt' VALUES ('2c9090074f82b966014f82b978c80002', '父评论内容', '2015-08-31 15:47:17', '0', '0', '12', null);
INSERT INTO 'circmt' VALUES ('2c9090074f82b966014f82b978cf0003', '子评论内容', '2015-08-31 15:47:17', '0', '0', '6', '2c9090074f82b966014f82b978c80002');
INSERT INTO 'circmt' VALUES ('2c9090074f82ba17014f82db4a0a0000', 'aaaaaa', '2015-08-31 16:24:14', '0', '0', '1', null);
INSERT INTO 'circmt' VALUES ('2c9090074f82ba17014f82db737f0001', 'bbbbbbb', '2015-08-31 16:24:24', '0', '0', '1', null);
INSERT INTO 'circmt' VALUES ('2c9090074f82ba17014f82e26b750002', null, '2015-08-31 16:32:01', '0', '0', '1', null);
INSERT INTO 'circmt' VALUES ('2c9090074f82ba17014f82e4c8c80003', null, '2015-08-31 16:34:36', '0', '0', '1', null);
INSERT INTO 'circmt' VALUES ('2c9090074f82ba17014f82e663000004', 'aaaaa', '2015-08-31 16:36:21', '0', '1', '1', null);
INSERT INTO 'circmt' VALUES ('2c9090074f82ba17014f82e86a7e0005', 'mmmm', '2015-08-31 16:38:34', '0', '1', '1', null);
INSERT INTO 'circmt' VALUES ('2c9090074f82ba17014f82e88c6b0006', '00000', '2015-08-31 16:38:43', '0', '1', '1', null);
INSERT INTO 'circmt' VALUES ('2c9090074f82f4d1014f82f4e3bb0002', '父评论内容', '2015-08-31 16:52:11', '0', '0', '12', null);
INSERT INTO 'circmt' VALUES ('2c9090074f82f4d1014f82f4e3c00003', '子评论内容', '2015-08-31 16:52:11', '0', '0', '6', '2c9090074f82f4d1014f82f4e3bb0002');
INSERT INTO 'circmt' VALUES ('2c9090074f831293014f8312a6850002', '父评论内容', '2015-08-31 17:24:42', '0', '0', '12', null);
INSERT INTO 'circmt' VALUES ('2c9090074f831293014f8312a68a0003', '子评论内容', '2015-08-31 17:24:42', '0', '0', '6', '2c9090074f831293014f8312a6850002');
INSERT INTO 'circmt' VALUES ('2c9090074f866d8c014f86a026a90000', 'aaaaaa', '2015-09-01 09:58:07', '0', '0', '1', null);
INSERT INTO 'circmt' VALUES ('2c9090074f866d8c014f86ba07180001', 'ccccc', '2015-09-01 10:26:23', '0', '0', '1', null);
INSERT INTO 'circmt' VALUES ('2c9090074f866d8c014f86babb630002', 'vvvvvv', '2015-09-01 10:27:09', '0', '0', '1', null);
INSERT INTO 'circmt' VALUES ('2c9090074f866d8c014f86baf3950003', 'zzzzz', '2015-09-01 10:27:23', '0', '0', '1', null);
INSERT INTO 'circmt' VALUES ('3', 'content3', '2015-08-29 11:13:56', '9', '31', '75', null);
INSERT INTO 'circmt' VALUES ('30', 'content30', '2015-08-29 11:13:56', '65', '75', '48', '9');
INSERT INTO 'circmt' VALUES ('31', 'content31', '2015-08-29 11:13:56', '74', '35', '15', '0');
INSERT INTO 'circmt' VALUES ('32', 'content32', '2015-08-29 11:13:56', '24', '34', '14', '4');
INSERT INTO 'circmt' VALUES ('33', 'content33', '2015-08-29 11:13:56', '61', '34', '77', '4');
INSERT INTO 'circmt' VALUES ('34', 'content34', '2015-08-29 11:13:56', '6', '34', '2', '4');
INSERT INTO 'circmt' VALUES ('35', 'content35', '2015-08-29 11:13:56', '91', '81', '63', '5');
INSERT INTO 'circmt' VALUES ('36', 'content36', '2015-08-29 11:13:56', '21', '34', '33', '4');
INSERT INTO 'circmt' VALUES ('37', 'content37', '2015-08-29 11:13:56', '24', '47', '53', '8');
INSERT INTO 'circmt' VALUES ('38', 'content38', '2015-08-29 11:13:56', '95', '47', '26', '8');
INSERT INTO 'circmt' VALUES ('39', 'content39', '2015-08-29 11:13:56', '39', '81', '84', '5');
INSERT INTO 'circmt' VALUES ('4', 'content4', '2015-08-29 11:13:56', '71', '34', '23', null);
INSERT INTO 'circmt' VALUES ('40', 'content40', '2015-08-29 11:13:56', '21', '88', '45', '7');
INSERT INTO 'circmt' VALUES ('41', 'content41', '2015-08-29 11:13:56', '49', '31', '98', '3');
INSERT INTO 'circmt' VALUES ('42', 'content42', '2015-08-29 11:13:56', '31', '88', '7', '7');
INSERT INTO 'circmt' VALUES ('43', 'content43', '2015-08-29 11:13:56', '31', '31', '99', '3');
INSERT INTO 'circmt' VALUES ('44', 'content44', '2015-08-29 11:13:56', '11', '32', '69', '1');
INSERT INTO 'circmt' VALUES ('45', 'content45', '2015-08-29 11:13:56', '48', '31', '97', '3');
INSERT INTO 'circmt' VALUES ('46', 'content46', '2015-08-29 11:13:56', '82', '35', '45', '0');
INSERT INTO 'circmt' VALUES ('47', 'content47', '2015-08-29 11:13:56', '47', '9', '52', '2');
INSERT INTO 'circmt' VALUES ('48', 'content48', '2015-08-29 11:13:56', '66', '34', '72', '4');
INSERT INTO 'circmt' VALUES ('49', 'content49', '2015-08-29 11:13:56', '25', '75', '50', '9');
INSERT INTO 'circmt' VALUES ('5', 'content5', '2015-08-29 11:13:56', '98', '81', '94', null);
INSERT INTO 'circmt' VALUES ('50', 'content50', '2015-08-29 11:13:56', '93', '9', '15', '2');
INSERT INTO 'circmt' VALUES ('51', 'content51', '2015-08-29 11:13:56', '26', '31', '68', '3');
INSERT INTO 'circmt' VALUES ('52', 'content52', '2015-08-29 11:13:56', '83', '32', '97', '1');
INSERT INTO 'circmt' VALUES ('53', 'content53', '2015-08-29 11:13:56', '17', '35', '23', '0');
INSERT INTO 'circmt' VALUES ('54', 'content54', '2015-08-29 11:13:56', '45', '88', '45', '7');
INSERT INTO 'circmt' VALUES ('55', 'content55', '2015-08-29 11:13:56', '92', '47', '26', '8');
INSERT INTO 'circmt' VALUES ('56', 'content56', '2015-08-29 11:13:56', '49', '88', '81', '7');
INSERT INTO 'circmt' VALUES ('57', 'content57', '2015-08-29 11:13:56', '67', '75', '20', '9');
INSERT INTO 'circmt' VALUES ('58', 'content58', '2015-08-29 11:13:56', '92', '34', '7', '4');
INSERT INTO 'circmt' VALUES ('59', 'content59', '2015-08-29 11:13:56', '20', '81', '16', '5');
INSERT INTO 'circmt' VALUES ('6', 'content6', '2015-08-29 11:13:56', '43', '19', '71', null);
INSERT INTO 'circmt' VALUES ('60', 'content60', '2015-08-29 11:13:56', '74', '75', '38', '9');
INSERT INTO 'circmt' VALUES ('61', 'content61', '2015-08-29 11:13:56', '3', '35', '94', '0');
INSERT INTO 'circmt' VALUES ('62', 'content62', '2015-08-29 11:13:56', '70', '81', '65', '5');
INSERT INTO 'circmt' VALUES ('63', 'content63', '2015-08-29 11:13:56', '96', '32', '81', '1');
INSERT INTO 'circmt' VALUES ('64', 'content64', '2015-08-29 11:13:56', '66', '31', '83', '3');
INSERT INTO 'circmt' VALUES ('65', 'content65', '2015-08-29 11:13:56', '95', '32', '18', '1');
INSERT INTO 'circmt' VALUES ('66', 'content66', '2015-08-29 11:13:56', '12', '9', '90', '2');
INSERT INTO 'circmt' VALUES ('67', 'content67', '2015-08-29 11:13:56', '15', '75', '56', '9');
INSERT INTO 'circmt' VALUES ('68', 'content68', '2015-08-29 11:13:56', '77', '81', '61', '5');
INSERT INTO 'circmt' VALUES ('69', 'content69', '2015-08-29 11:13:56', '73', '88', '42', '7');
INSERT INTO 'circmt' VALUES ('7', 'content7', '2015-08-29 11:13:56', '52', '88', '61', null);
INSERT INTO 'circmt' VALUES ('70', 'content70', '2015-08-29 11:13:56', '73', '34', '30', '4');
INSERT INTO 'circmt' VALUES ('71', 'content71', '2015-08-29 11:13:56', '81', '81', '67', '5');
INSERT INTO 'circmt' VALUES ('72', 'content72', '2015-08-29 11:13:56', '78', '32', '5', '1');
INSERT INTO 'circmt' VALUES ('73', 'content73', '2015-08-29 11:13:56', '60', '35', '79', '0');
INSERT INTO 'circmt' VALUES ('74', 'content74', '2015-08-29 11:13:56', '37', '34', '27', '4');
INSERT INTO 'circmt' VALUES ('75', 'content75', '2015-08-29 11:13:56', '47', '81', '7', '5');
INSERT INTO 'circmt' VALUES ('76', 'content76', '2015-08-29 11:13:56', '60', '32', '87', '1');
INSERT INTO 'circmt' VALUES ('77', 'content77', '2015-08-29 11:13:56', '41', '34', '85', '4');
INSERT INTO 'circmt' VALUES ('78', 'content78', '2015-08-29 11:13:56', '28', '19', '11', '6');
INSERT INTO 'circmt' VALUES ('79', 'content79', '2015-08-29 11:13:56', '36', '75', '72', '9');
INSERT INTO 'circmt' VALUES ('8', 'content8', '2015-08-29 11:13:56', '53', '47', '76', null);
INSERT INTO 'circmt' VALUES ('80', 'content80', '2015-08-29 11:13:56', '2', '47', '76', '8');
INSERT INTO 'circmt' VALUES ('81', 'content81', '2015-08-29 11:13:56', '89', '31', '64', '3');
INSERT INTO 'circmt' VALUES ('82', 'content82', '2015-08-29 11:13:56', '26', '81', '86', '5');
INSERT INTO 'circmt' VALUES ('83', 'content83', '2015-08-29 11:13:56', '76', '88', '12', '7');
INSERT INTO 'circmt' VALUES ('84', 'content84', '2015-08-29 11:13:56', '76', '31', '40', '3');
INSERT INTO 'circmt' VALUES ('85', 'content85', '2015-08-29 11:13:56', '26', '31', '23', '3');
INSERT INTO 'circmt' VALUES ('86', 'content86', '2015-08-29 11:13:56', '36', '31', '16', '3');
INSERT INTO 'circmt' VALUES ('87', 'content87', '2015-08-29 11:13:56', '95', '81', '22', '5');
INSERT INTO 'circmt' VALUES ('88', 'content88', '2015-08-29 11:13:56', '72', '47', '25', '8');
INSERT INTO 'circmt' VALUES ('89', 'content89', '2015-08-29 11:13:56', '96', '32', '40', '1');
INSERT INTO 'circmt' VALUES ('9', 'content9', '2015-08-29 11:13:56', '60', '75', '51', null);
INSERT INTO 'circmt' VALUES ('90', 'content90', '2015-08-29 11:13:56', '33', '88', '78', '7');
INSERT INTO 'circmt' VALUES ('91', 'content91', '2015-08-29 11:13:56', '4', '9', '10', '2');
INSERT INTO 'circmt' VALUES ('92', 'content92', '2015-08-29 11:13:56', '20', '88', '18', '7');
INSERT INTO 'circmt' VALUES ('93', 'content93', '2015-08-29 11:13:56', '1', '75', '3', '9');
INSERT INTO 'circmt' VALUES ('94', 'content94', '2015-08-29 11:13:56', '93', '81', '52', '5');
INSERT INTO 'circmt' VALUES ('95', 'content95', '2015-08-29 11:13:56', '64', '31', '64', '3');
INSERT INTO 'circmt' VALUES ('96', 'content96', '2015-08-29 11:13:56', '30', '47', '55', '8');
INSERT INTO 'circmt' VALUES ('97', 'content97', '2015-08-29 11:13:56', '64', '47', '60', '8');
INSERT INTO 'circmt' VALUES ('98', 'content98', '2015-08-29 11:13:56', '81', '81', '59', '5');
INSERT INTO 'circmt' VALUES ('99', 'content99', '2015-08-29 11:13:56', '53', '47', '35', '8');

-- ----------------------------
-- Table structure for 'focus'
-- ----------------------------
DROP TABLE IF EXISTS 'focus';
CREATE TABLE 'focus' (
  'id' varchar(255) NOT NULL COMMENT '编号',
  'info' varchar(255) DEFAULT NULL COMMENT '信息',
  'picpath' varchar(64) DEFAULT NULL COMMENT '图片路径',
  'position' int(11) DEFAULT NULL COMMENT '位置',
  'refId' varchar(32) DEFAULT NULL COMMENT '所属编号',
  'title' varchar(64) DEFAULT NULL COMMENT '标题',
  'type' varchar(16) DEFAULT NULL COMMENT '类型',
  'viewurl' varchar(32) DEFAULT NULL COMMENT '查看url',
  PRIMARY KEY ('id')
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of focus
-- ----------------------------
INSERT INTO 'focus' VALUES ('1', '', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', '41', '', '资讯', 'pc/admin/news/view?id=41');
INSERT INTO 'focus' VALUES ('10', '', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '10', '43', '', '圈子', 'pc/admin/circle/view?id=43');
INSERT INTO 'focus' VALUES ('2', '', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '2', '10', '', '资讯', 'pc/admin/news/view?id=10');
INSERT INTO 'focus' VALUES ('2c9090074f78e0e5014f78e0fdaf000c', null, 'picpath0', '100', '64', null, '圈子', 'pc/admin/circle/view?id=64');
INSERT INTO 'focus' VALUES ('2c9090074f78e0e5014f78e0fdb0000d', null, 'picpath1', '101', '80', null, '活动', 'pc/admin/activity/view?id=80');
INSERT INTO 'focus' VALUES ('2c9090074f78e0e5014f78e0fdb0000e', null, 'picpath2', '102', '35', null, '圈子', 'pc/admin/circle/view?id=35');
INSERT INTO 'focus' VALUES ('2c9090074f78e0e5014f78e0fdb0000f', null, 'picpath3', '103', '72', null, '活动', 'pc/admin/activity/view?id=72');
INSERT INTO 'focus' VALUES ('2c9090074f78e0e5014f78e0fdb00010', null, 'picpath4', '104', '0', null, '圈子', 'pc/admin/circle/view?id=0');
INSERT INTO 'focus' VALUES ('2c9090074f78e0e5014f78e0fdb00011', null, 'picpath5', '105', '5', null, '活动', 'pc/admin/activity/view?id=5');
INSERT INTO 'focus' VALUES ('2c9090074f78e0e5014f78e0fdb00012', null, 'picpath6', '106', '51', null, '活动', 'pc/admin/activity/view?id=51');
INSERT INTO 'focus' VALUES ('2c9090074f78e0e5014f78e0fdb00013', null, 'picpath7', '107', '97', null, '活动', 'pc/admin/activity/view?id=97');
INSERT INTO 'focus' VALUES ('2c9090074f78e0e5014f78e0fdb00014', null, 'picpath8', '108', '76', null, '活动', 'pc/admin/activity/view?id=76');
INSERT INTO 'focus' VALUES ('2c9090074f78e0e5014f78e0fdb00015', null, 'picpath9', '109', '31', null, '活动', 'pc/admin/activity/view?id=31');
INSERT INTO 'focus' VALUES ('2c9090074f78e11c014f78e130fd000c', null, 'picpath0', '100', '6', null, '圈子', 'pc/admin/circle/view?id=6');
INSERT INTO 'focus' VALUES ('2c9090074f78e11c014f78e130fd000d', null, 'picpath1', '101', '5', null, '圈子', 'pc/admin/circle/view?id=5');
INSERT INTO 'focus' VALUES ('2c9090074f78e11c014f78e130fd000e', null, 'picpath2', '102', '0', null, '活动', 'pc/admin/activity/view?id=0');
INSERT INTO 'focus' VALUES ('2c9090074f78e11c014f78e130fd000f', null, 'picpath3', '103', '77', null, '活动', 'pc/admin/activity/view?id=77');
INSERT INTO 'focus' VALUES ('2c9090074f78e11c014f78e130fd0010', null, 'picpath4', '104', '57', null, '活动', 'pc/admin/activity/view?id=57');
INSERT INTO 'focus' VALUES ('2c9090074f78e11c014f78e130fd0011', null, 'picpath5', '105', '44', null, '活动', 'pc/admin/activity/view?id=44');
INSERT INTO 'focus' VALUES ('2c9090074f78e11c014f78e130fd0012', null, 'picpath6', '106', '98', null, '活动', 'pc/admin/activity/view?id=98');
INSERT INTO 'focus' VALUES ('2c9090074f78e11c014f78e130fd0013', null, 'picpath7', '107', '40', null, '活动', 'pc/admin/activity/view?id=40');
INSERT INTO 'focus' VALUES ('2c9090074f78e11c014f78e130fd0014', null, 'picpath8', '108', '27', null, '活动', 'pc/admin/activity/view?id=27');
INSERT INTO 'focus' VALUES ('2c9090074f78e11c014f78e130fd0015', null, 'picpath9', '109', '24', null, '圈子', 'pc/admin/circle/view?id=24');
INSERT INTO 'focus' VALUES ('2c9090074f81561a014f81563433000c', null, 'picpath0', '100', '95', null, '圈子', 'pc/admin/circle/view?id=95');
INSERT INTO 'focus' VALUES ('2c9090074f81561a014f81563433000d', null, 'picpath1', '101', '74', null, '活动', 'pc/admin/activity/view?id=74');
INSERT INTO 'focus' VALUES ('2c9090074f81561a014f81563433000e', null, 'picpath2', '102', '48', null, '圈子', 'pc/admin/circle/view?id=48');
INSERT INTO 'focus' VALUES ('2c9090074f81561a014f81563433000f', null, 'picpath3', '103', '11', null, '圈子', 'pc/admin/circle/view?id=11');
INSERT INTO 'focus' VALUES ('2c9090074f81561a014f815634330010', null, 'picpath4', '104', '54', null, '圈子', 'pc/admin/circle/view?id=54');
INSERT INTO 'focus' VALUES ('2c9090074f81561a014f815634330011', null, 'picpath5', '105', '58', null, '圈子', 'pc/admin/circle/view?id=58');
INSERT INTO 'focus' VALUES ('2c9090074f81561a014f815634330012', null, 'picpath6', '106', '95', null, '圈子', 'pc/admin/circle/view?id=95');
INSERT INTO 'focus' VALUES ('2c9090074f81561a014f815634340013', null, 'picpath7', '107', '95', null, '圈子', 'pc/admin/circle/view?id=95');
INSERT INTO 'focus' VALUES ('2c9090074f81561a014f815634340014', null, 'picpath8', '108', '29', null, '活动', 'pc/admin/activity/view?id=29');
INSERT INTO 'focus' VALUES ('2c9090074f81561a014f815634340015', null, 'picpath9', '109', '30', null, '圈子', 'pc/admin/circle/view?id=30');
INSERT INTO 'focus' VALUES ('2c9090074f81d0a7014f81d0c246000c', null, 'picpath0', '100', '86', null, '活动', 'pc/admin/activity/view?id=86');
INSERT INTO 'focus' VALUES ('2c9090074f81d0a7014f81d0c247000d', null, 'picpath1', '101', '93', null, '活动', 'pc/admin/activity/view?id=93');
INSERT INTO 'focus' VALUES ('2c9090074f81d0a7014f81d0c247000e', null, 'picpath2', '102', '27', null, '活动', 'pc/admin/activity/view?id=27');
INSERT INTO 'focus' VALUES ('2c9090074f81d0a7014f81d0c247000f', null, 'picpath3', '103', '62', null, '活动', 'pc/admin/activity/view?id=62');
INSERT INTO 'focus' VALUES ('2c9090074f81d0a7014f81d0c2470010', null, 'picpath4', '104', '53', null, '圈子', 'pc/admin/circle/view?id=53');
INSERT INTO 'focus' VALUES ('2c9090074f81d0a7014f81d0c2470011', null, 'picpath5', '105', '45', null, '圈子', 'pc/admin/circle/view?id=45');
INSERT INTO 'focus' VALUES ('2c9090074f81d0a7014f81d0c2470012', null, 'picpath6', '106', '27', null, '圈子', 'pc/admin/circle/view?id=27');
INSERT INTO 'focus' VALUES ('2c9090074f81d0a7014f81d0c2470013', null, 'picpath7', '107', '70', null, '活动', 'pc/admin/activity/view?id=70');
INSERT INTO 'focus' VALUES ('2c9090074f81d0a7014f81d0c2470014', null, 'picpath8', '108', '24', null, '圈子', 'pc/admin/circle/view?id=24');
INSERT INTO 'focus' VALUES ('2c9090074f81d0a7014f81d0c2470015', null, 'picpath9', '109', '96', null, '圈子', 'pc/admin/circle/view?id=96');
INSERT INTO 'focus' VALUES ('2c9090074f82634b014f82636271000c', null, 'picpath0', '100', '81', null, '圈子', 'pc/admin/circle/view?id=81');
INSERT INTO 'focus' VALUES ('2c9090074f82634b014f82636271000d', null, 'picpath1', '101', '30', null, '活动', 'pc/admin/activity/view?id=30');
INSERT INTO 'focus' VALUES ('2c9090074f82634b014f82636271000e', null, 'picpath2', '102', '30', null, '圈子', 'pc/admin/circle/view?id=30');
INSERT INTO 'focus' VALUES ('2c9090074f82634b014f82636271000f', null, 'picpath3', '103', '89', null, '圈子', 'pc/admin/circle/view?id=89');
INSERT INTO 'focus' VALUES ('2c9090074f82634b014f826362710010', null, 'picpath4', '104', '7', null, '活动', 'pc/admin/activity/view?id=7');
INSERT INTO 'focus' VALUES ('2c9090074f82634b014f826362710011', null, 'picpath5', '105', '91', null, '活动', 'pc/admin/activity/view?id=91');
INSERT INTO 'focus' VALUES ('2c9090074f82634b014f826362720012', null, 'picpath6', '106', '31', null, '活动', 'pc/admin/activity/view?id=31');
INSERT INTO 'focus' VALUES ('2c9090074f82634b014f826362720013', null, 'picpath7', '107', '44', null, '活动', 'pc/admin/activity/view?id=44');
INSERT INTO 'focus' VALUES ('2c9090074f82634b014f826362720014', null, 'picpath8', '108', '69', null, '圈子', 'pc/admin/circle/view?id=69');
INSERT INTO 'focus' VALUES ('2c9090074f82634b014f826362720015', null, 'picpath9', '109', '42', null, '活动', 'pc/admin/activity/view?id=42');
INSERT INTO 'focus' VALUES ('2c9090074f82b966014f82b9802e000c', null, 'picpath0', '100', '45', null, '圈子', 'pc/admin/circle/view?id=45');
INSERT INTO 'focus' VALUES ('2c9090074f82b966014f82b9802e000d', null, 'picpath1', '101', '83', null, '圈子', 'pc/admin/circle/view?id=83');
INSERT INTO 'focus' VALUES ('2c9090074f82b966014f82b9802e000e', null, 'picpath2', '102', '46', null, '活动', 'pc/admin/activity/view?id=46');
INSERT INTO 'focus' VALUES ('2c9090074f82b966014f82b9802e000f', null, 'picpath3', '103', '64', null, '活动', 'pc/admin/activity/view?id=64');
INSERT INTO 'focus' VALUES ('2c9090074f82b966014f82b9802e0010', null, 'picpath4', '104', '0', null, '圈子', 'pc/admin/circle/view?id=0');
INSERT INTO 'focus' VALUES ('2c9090074f82b966014f82b9802e0011', null, 'picpath5', '105', '53', null, '圈子', 'pc/admin/circle/view?id=53');
INSERT INTO 'focus' VALUES ('2c9090074f82b966014f82b9802e0012', null, 'picpath6', '106', '83', null, '圈子', 'pc/admin/circle/view?id=83');
INSERT INTO 'focus' VALUES ('2c9090074f82b966014f82b9802e0013', null, 'picpath7', '107', '37', null, '活动', 'pc/admin/activity/view?id=37');
INSERT INTO 'focus' VALUES ('2c9090074f82b966014f82b9802e0014', null, 'picpath8', '108', '72', null, '圈子', 'pc/admin/circle/view?id=72');
INSERT INTO 'focus' VALUES ('2c9090074f82b966014f82b9802e0015', null, 'picpath9', '109', '98', null, '圈子', 'pc/admin/circle/view?id=98');
INSERT INTO 'focus' VALUES ('2c9090074f82f4d1014f82f4eb72000c', null, 'picpath0', '100', '52', null, '活动', 'pc/admin/activity/view?id=52');
INSERT INTO 'focus' VALUES ('2c9090074f82f4d1014f82f4eb72000d', null, 'picpath1', '101', '39', null, '活动', 'pc/admin/activity/view?id=39');
INSERT INTO 'focus' VALUES ('2c9090074f82f4d1014f82f4eb72000e', null, 'picpath2', '102', '33', null, '活动', 'pc/admin/activity/view?id=33');
INSERT INTO 'focus' VALUES ('2c9090074f82f4d1014f82f4eb72000f', null, 'picpath3', '103', '17', null, '圈子', 'pc/admin/circle/view?id=17');
INSERT INTO 'focus' VALUES ('2c9090074f82f4d1014f82f4eb720010', null, 'picpath4', '104', '42', null, '活动', 'pc/admin/activity/view?id=42');
INSERT INTO 'focus' VALUES ('2c9090074f82f4d1014f82f4eb720011', null, 'picpath5', '105', '71', null, '活动', 'pc/admin/activity/view?id=71');
INSERT INTO 'focus' VALUES ('2c9090074f82f4d1014f82f4eb720012', null, 'picpath6', '106', '46', null, '活动', 'pc/admin/activity/view?id=46');
INSERT INTO 'focus' VALUES ('2c9090074f82f4d1014f82f4eb720013', null, 'picpath7', '107', '20', null, '圈子', 'pc/admin/circle/view?id=20');
INSERT INTO 'focus' VALUES ('2c9090074f82f4d1014f82f4eb720014', null, 'picpath8', '108', '98', null, '圈子', 'pc/admin/circle/view?id=98');
INSERT INTO 'focus' VALUES ('2c9090074f82f4d1014f82f4eb720015', null, 'picpath9', '109', '37', null, '活动', 'pc/admin/activity/view?id=37');
INSERT INTO 'focus' VALUES ('2c9090074f831293014f8312add7000c', null, 'picpath0', '100', '24', null, '活动', 'pc/admin/activity/view?id=24');
INSERT INTO 'focus' VALUES ('2c9090074f831293014f8312add8000d', null, 'picpath1', '101', '39', null, '圈子', 'pc/admin/circle/view?id=39');
INSERT INTO 'focus' VALUES ('2c9090074f831293014f8312add8000e', null, 'picpath2', '102', '11', null, '圈子', 'pc/admin/circle/view?id=11');
INSERT INTO 'focus' VALUES ('2c9090074f831293014f8312add8000f', null, 'picpath3', '103', '48', null, '圈子', 'pc/admin/circle/view?id=48');
INSERT INTO 'focus' VALUES ('2c9090074f831293014f8312add80010', null, 'picpath4', '104', '12', null, '圈子', 'pc/admin/circle/view?id=12');
INSERT INTO 'focus' VALUES ('2c9090074f831293014f8312add80011', null, 'picpath5', '105', '71', null, '圈子', 'pc/admin/circle/view?id=71');
INSERT INTO 'focus' VALUES ('2c9090074f831293014f8312add80012', null, 'picpath6', '106', '86', null, '圈子', 'pc/admin/circle/view?id=86');
INSERT INTO 'focus' VALUES ('2c9090074f831293014f8312add80013', null, 'picpath7', '107', '20', null, '圈子', 'pc/admin/circle/view?id=20');
INSERT INTO 'focus' VALUES ('2c9090074f831293014f8312add80014', null, 'picpath8', '108', '8', null, '圈子', 'pc/admin/circle/view?id=8');
INSERT INTO 'focus' VALUES ('2c9090074f831293014f8312add80015', null, 'picpath9', '109', '25', null, '圈子', 'pc/admin/circle/view?id=25');
INSERT INTO 'focus' VALUES ('3', '', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '3', '58', '', '活动', 'pc/admin/activity/view?id=58');
INSERT INTO 'focus' VALUES ('4', '', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '4', '70', '', '活动', 'pc/admin/activity/view?id=70');
INSERT INTO 'focus' VALUES ('5', '', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '5', '92', '', '资讯', 'pc/admin/news/view?id=92');
INSERT INTO 'focus' VALUES ('6', '', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '6', '75', '', '资讯', 'pc/admin/news/view?id=75');
INSERT INTO 'focus' VALUES ('7', '', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '7', '7', '', '圈子', 'pc/admin/circle/view?id=7');
INSERT INTO 'focus' VALUES ('8', '', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '8', '63', '', '圈子', 'pc/admin/circle/view?id=63');
INSERT INTO 'focus' VALUES ('9', '', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '9', '89', '', '圈子', 'pc/admin/circle/view?id=89');

-- ----------------------------
-- Table structure for 'friend'
-- ----------------------------
DROP TABLE IF EXISTS 'friend';
CREATE TABLE 'friend' (
  'id' varchar(255) NOT NULL DEFAULT '编号',
  'a_time' datetime DEFAULT NULL COMMENT '申请时间',
  'c_time' datetime DEFAULT NULL COMMENT '创建时间',
  'distance' double DEFAULT NULL COMMENT '距离',
  'state' bit(1) DEFAULT NULL COMMENT '状态',
  'friend_id' varchar(255) DEFAULT NULL COMMENT '朋友编号',
  'user_id' varchar(255) DEFAULT NULL COMMENT '用户编号',
  PRIMARY KEY ('id'),
  KEY 'FK_35d6grhalmmon6mu9ciek0tg3' ('friend_id'),
  KEY 'FK_5mn3bglcwhx2o930ygv7k7u2f' ('user_id'),
  CONSTRAINT 'FK_35d6grhalmmon6mu9ciek0tg3' FOREIGN KEY ('friend_id') REFERENCES 'user' ('id'),
  CONSTRAINT 'FK_5mn3bglcwhx2o930ygv7k7u2f' FOREIGN KEY ('user_id') REFERENCES 'user' ('id')
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of friend
-- ----------------------------
INSERT INTO 'friend' VALUES ('0', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '875', '', '3', '80');
INSERT INTO 'friend' VALUES ('1', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '748', '', '92', '63');
INSERT INTO 'friend' VALUES ('10', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '936', '', '71', '53');
INSERT INTO 'friend' VALUES ('11', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '730', '', '66', '71');
INSERT INTO 'friend' VALUES ('12', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '318', '', '99', '17');
INSERT INTO 'friend' VALUES ('13', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '810', '', '76', '72');
INSERT INTO 'friend' VALUES ('14', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '772', '', '90', '21');
INSERT INTO 'friend' VALUES ('15', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '325', '', '48', '4');
INSERT INTO 'friend' VALUES ('16', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '516', '', '53', '43');
INSERT INTO 'friend' VALUES ('17', '2015-08-29 11:13:55', '2015-08-31 17:24:41', '934', '', '47', '1');
INSERT INTO 'friend' VALUES ('18', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '718', '', '21', '64');
INSERT INTO 'friend' VALUES ('19', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '826', '', '65', '27');
INSERT INTO 'friend' VALUES ('2', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '678', '', '11', '78');
INSERT INTO 'friend' VALUES ('20', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '389', '', '69', '64');
INSERT INTO 'friend' VALUES ('21', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '821', '', '24', '42');
INSERT INTO 'friend' VALUES ('22', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '350', '', '46', '71');
INSERT INTO 'friend' VALUES ('23', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '105', '', '39', '51');
INSERT INTO 'friend' VALUES ('24', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '690', '', '76', '38');
INSERT INTO 'friend' VALUES ('25', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '700', '', '31', '68');
INSERT INTO 'friend' VALUES ('26', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '321', '', '45', '22');
INSERT INTO 'friend' VALUES ('27', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '771', '', '3', '22');
INSERT INTO 'friend' VALUES ('28', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '964', '', '13', '2');
INSERT INTO 'friend' VALUES ('29', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '909', '', '91', '63');
INSERT INTO 'friend' VALUES ('2c9090074f77741e014f77743e6f0004', '2015-08-29 11:15:51', null, '8683.288029485095', '', '2', '1');
INSERT INTO 'friend' VALUES ('3', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '520', '', '47', '9');
INSERT INTO 'friend' VALUES ('30', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '193', '', '39', '3');
INSERT INTO 'friend' VALUES ('31', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '933', '', '77', '66');
INSERT INTO 'friend' VALUES ('32', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '635', '', '64', '82');
INSERT INTO 'friend' VALUES ('33', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '811', '', '60', '42');
INSERT INTO 'friend' VALUES ('34', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '590', '', '10', '63');
INSERT INTO 'friend' VALUES ('35', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '275', '', '89', '5');
INSERT INTO 'friend' VALUES ('36', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '164', '', '64', '81');
INSERT INTO 'friend' VALUES ('37', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '591', '', '46', '28');
INSERT INTO 'friend' VALUES ('38', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '69', '', '57', '67');
INSERT INTO 'friend' VALUES ('39', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '788', '', '42', '40');
INSERT INTO 'friend' VALUES ('4', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '637', '', '88', '58');
INSERT INTO 'friend' VALUES ('40', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '614', '', '58', '50');
INSERT INTO 'friend' VALUES ('41', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '108', '', '87', '93');
INSERT INTO 'friend' VALUES ('42', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '743', '', '83', '33');
INSERT INTO 'friend' VALUES ('43', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '479', '', '87', '69');
INSERT INTO 'friend' VALUES ('44', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '138', '', '58', '55');
INSERT INTO 'friend' VALUES ('45', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '806', '', '27', '34');
INSERT INTO 'friend' VALUES ('46', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '686', '', '9', '24');
INSERT INTO 'friend' VALUES ('47', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '644', '', '70', '70');
INSERT INTO 'friend' VALUES ('48', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '406', '', '54', '0');
INSERT INTO 'friend' VALUES ('49', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '723', '', '33', '66');
INSERT INTO 'friend' VALUES ('5', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '666', '', '13', '76');
INSERT INTO 'friend' VALUES ('50', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '983', '', '22', '26');
INSERT INTO 'friend' VALUES ('51', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '659', '', '16', '2');
INSERT INTO 'friend' VALUES ('52', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '431', '', '36', '90');
INSERT INTO 'friend' VALUES ('53', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '796', '', '58', '51');
INSERT INTO 'friend' VALUES ('54', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '961', '', '73', '38');
INSERT INTO 'friend' VALUES ('55', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '334', '', '89', '73');
INSERT INTO 'friend' VALUES ('56', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '877', '', '2', '62');
INSERT INTO 'friend' VALUES ('57', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '903', '', '22', '68');
INSERT INTO 'friend' VALUES ('58', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '351', '', '81', '71');
INSERT INTO 'friend' VALUES ('59', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '494', '', '3', '54');
INSERT INTO 'friend' VALUES ('6', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '393', '', '13', '58');
INSERT INTO 'friend' VALUES ('60', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '274', '', '99', '30');
INSERT INTO 'friend' VALUES ('61', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '671', '', '68', '99');
INSERT INTO 'friend' VALUES ('62', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '613', '', '90', '5');
INSERT INTO 'friend' VALUES ('63', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '406', '', '4', '56');
INSERT INTO 'friend' VALUES ('64', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '536', '', '58', '65');
INSERT INTO 'friend' VALUES ('65', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '245', '', '52', '59');
INSERT INTO 'friend' VALUES ('66', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '619', '', '12', '88');
INSERT INTO 'friend' VALUES ('67', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '762', '', '58', '38');
INSERT INTO 'friend' VALUES ('68', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '11', '', '64', '31');
INSERT INTO 'friend' VALUES ('69', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '944', '', '66', '33');
INSERT INTO 'friend' VALUES ('7', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '810', '', '41', '2');
INSERT INTO 'friend' VALUES ('70', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '179', '', '90', '43');
INSERT INTO 'friend' VALUES ('71', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '701', '', '58', '56');
INSERT INTO 'friend' VALUES ('72', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '701', '', '77', '26');
INSERT INTO 'friend' VALUES ('73', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '465', '', '84', '23');
INSERT INTO 'friend' VALUES ('74', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '102', '', '16', '87');
INSERT INTO 'friend' VALUES ('75', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '482', '', '58', '87');
INSERT INTO 'friend' VALUES ('76', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '998', '', '69', '25');
INSERT INTO 'friend' VALUES ('77', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '83', '', '1', '21');
INSERT INTO 'friend' VALUES ('78', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '684', '', '67', '35');
INSERT INTO 'friend' VALUES ('79', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '891', '', '72', '54');
INSERT INTO 'friend' VALUES ('8', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '452', '', '76', '40');
INSERT INTO 'friend' VALUES ('80', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '652', '', '83', '67');
INSERT INTO 'friend' VALUES ('81', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '180', '', '63', '48');
INSERT INTO 'friend' VALUES ('82', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '655', '', '60', '87');
INSERT INTO 'friend' VALUES ('83', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '847', '', '42', '22');
INSERT INTO 'friend' VALUES ('84', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '736', '', '12', '4');
INSERT INTO 'friend' VALUES ('85', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '425', '', '19', '31');
INSERT INTO 'friend' VALUES ('86', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '28', '', '87', '19');
INSERT INTO 'friend' VALUES ('87', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '56', '', '33', '2');
INSERT INTO 'friend' VALUES ('88', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '517', '', '56', '74');
INSERT INTO 'friend' VALUES ('89', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '73', '', '55', '20');
INSERT INTO 'friend' VALUES ('9', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '911', '', '90', '97');
INSERT INTO 'friend' VALUES ('90', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '56', '', '65', '16');
INSERT INTO 'friend' VALUES ('91', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '159', '', '13', '75');
INSERT INTO 'friend' VALUES ('92', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '960', '', '35', '99');
INSERT INTO 'friend' VALUES ('93', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '714', '', '7', '86');
INSERT INTO 'friend' VALUES ('94', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '219', '', '6', '41');
INSERT INTO 'friend' VALUES ('95', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '833', '', '69', '96');
INSERT INTO 'friend' VALUES ('96', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '890', '', '77', '95');
INSERT INTO 'friend' VALUES ('97', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '588', '', '74', '92');
INSERT INTO 'friend' VALUES ('98', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '577', '', '54', '36');
INSERT INTO 'friend' VALUES ('99', '2015-08-29 11:13:55', '2015-08-29 11:13:55', '115', '', '38', '17');

-- ----------------------------
-- Table structure for 'inform'
-- ----------------------------
DROP TABLE IF EXISTS 'inform';
CREATE TABLE 'inform' (
  'id' varchar(255) NOT NULL DEFAULT '' COMMENT '举报编号',
  'asso_id' varchar(32) DEFAULT NULL COMMENT '关联编号',
  'asso_name' varchar(64) DEFAULT NULL COMMENT '关联名称',
  'c_time' datetime DEFAULT NULL COMMENT '创建时间',
  'otherinfo' varchar(255) DEFAULT NULL COMMENT '其他信息',
  'reason' varchar(16) DEFAULT NULL COMMENT '举报原因',
  'state' int(11) DEFAULT NULL COMMENT '状态',
  'type' varchar(8) DEFAULT NULL COMMENT '举报类型',
  'viewurl' varchar(64) DEFAULT NULL COMMENT '查看url',
  'create_userid' varchar(255) DEFAULT NULL COMMENT '举报者编号',
  PRIMARY KEY ('id'),
  KEY 'FK_cibwerhp9n52464r4r7xyagtj' ('create_userid'),
  CONSTRAINT 'FK_cibwerhp9n52464r4r7xyagtj' FOREIGN KEY ('create_userid') REFERENCES 'user' ('id')
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of inform
-- ----------------------------
INSERT INTO 'inform' VALUES ('0', '28', 'title0', '2015-08-29 11:13:56', 'otherinfo0', '广告骚扰', '1', '圈子', 'pc/admin/circle/viewid=28', '45');
INSERT INTO 'inform' VALUES ('1', '87', 'title1', '2015-08-29 11:13:56', 'otherinfo1', '诋毁侮辱', '0', '资讯', 'pc/admin/news/viewid=87', '34');
INSERT INTO 'inform' VALUES ('10', '55', 'title10', '2015-08-29 11:13:56', 'otherinfo10', '政治', '0', '活动', 'pc/admin/activity/viewid=55', '54');
INSERT INTO 'inform' VALUES ('11', '80', 'title11', '2015-08-29 11:13:56', 'otherinfo11', '欺诈', '1', '资讯', 'pc/admin/news/viewid=80', '74');
INSERT INTO 'inform' VALUES ('12', '95', 'title12', '2015-08-29 11:13:56', 'otherinfo12', '广告骚扰', '0', '圈子', 'pc/admin/circle/viewid=95', '78');
INSERT INTO 'inform' VALUES ('13', '0', 'title13', '2015-08-29 11:13:56', 'otherinfo13', '其他', '0', '圈子', 'pc/admin/circle/viewid=0', '28');
INSERT INTO 'inform' VALUES ('14', '73', 'title14', '2015-08-29 11:13:56', 'otherinfo14', '色情', '0', '活动', 'pc/admin/activity/viewid=73', '85');
INSERT INTO 'inform' VALUES ('15', '15', 'title15', '2015-08-29 11:13:56', 'otherinfo15', '非交大校友', '0', '资讯', 'pc/admin/news/viewid=15', '93');
INSERT INTO 'inform' VALUES ('16', '68', 'title16', '2015-08-29 11:13:56', 'otherinfo16', '色情', '1', '活动', 'pc/admin/activity/viewid=68', '35');
INSERT INTO 'inform' VALUES ('17', '11', 'title17', '2015-08-29 11:13:56', 'otherinfo17', '广告骚扰', '1', '资讯', 'pc/admin/news/viewid=11', '59');
INSERT INTO 'inform' VALUES ('18', '30', 'title18', '2015-08-29 11:13:56', 'otherinfo18', '非交大校友', '1', '资讯', 'pc/admin/news/viewid=30', '84');
INSERT INTO 'inform' VALUES ('19', '10', 'title19', '2015-08-29 11:13:56', 'otherinfo19', '广告骚扰', '0', '资讯', 'pc/admin/news/viewid=10', '77');
INSERT INTO 'inform' VALUES ('2', '30', 'title2', '2015-08-29 11:13:56', 'otherinfo2', '其他', '1', '圈子', 'pc/admin/circle/viewid=30', '18');
INSERT INTO 'inform' VALUES ('20', '81', 'title20', '2015-08-29 11:13:56', 'otherinfo20', '其他', '0', '圈子', 'pc/admin/circle/viewid=81', '62');
INSERT INTO 'inform' VALUES ('21', '49', 'title21', '2015-08-29 11:13:56', 'otherinfo21', '其他', '0', '活动', 'pc/admin/activity/viewid=49', '42');
INSERT INTO 'inform' VALUES ('22', '70', 'title22', '2015-08-29 11:13:56', 'otherinfo22', '诋毁侮辱', '1', '资讯', 'pc/admin/news/viewid=70', '53');
INSERT INTO 'inform' VALUES ('23', '50', 'title23', '2015-08-29 11:13:56', 'otherinfo23', '广告骚扰', '0', '资讯', 'pc/admin/news/viewid=50', '56');
INSERT INTO 'inform' VALUES ('24', '22', 'title24', '2015-08-29 11:13:56', 'otherinfo24', '广告骚扰', '0', '资讯', 'pc/admin/news/viewid=22', '97');
INSERT INTO 'inform' VALUES ('25', '64', 'title25', '2015-08-29 11:13:56', 'otherinfo25', '诋毁侮辱', '1', '活动', 'pc/admin/activity/viewid=64', '83');
INSERT INTO 'inform' VALUES ('26', '13', 'title26', '2015-08-29 11:13:56', 'otherinfo26', '其他', '1', '活动', 'pc/admin/activity/viewid=13', '29');
INSERT INTO 'inform' VALUES ('27', '21', 'title27', '2015-08-29 11:13:56', 'otherinfo27', '色情', '0', '资讯', 'pc/admin/news/viewid=21', '1');
INSERT INTO 'inform' VALUES ('28', '81', 'title28', '2015-08-29 11:13:56', 'otherinfo28', '色情', '1', '资讯', 'pc/admin/news/viewid=81', '96');
INSERT INTO 'inform' VALUES ('29', '11', 'title29', '2015-08-29 11:13:56', 'otherinfo29', '广告骚扰', '0', '圈子', 'pc/admin/circle/viewid=11', '39');
INSERT INTO 'inform' VALUES ('2c9090074f825c56014f826284650000', '4', 'test', '2015-08-31 14:12:19', '其他信息', '政治', '0', '资讯', 'pc/admin/news/view?id=4', '1');
INSERT INTO 'inform' VALUES ('2c9090074f82634b014f82635d1b0004', '12', 'realname12', '2015-08-31 14:13:14', 'otherinfo', '政治', '0', '资讯', 'pc/admin/news/view?id=12', '12');
INSERT INTO 'inform' VALUES ('2c9090074f82b966014f82b97bbf0004', '12', 'realname12', '2015-08-31 15:47:18', 'otherinfo', '政治', '0', '资讯', 'pc/admin/news/view?id=12', '12');
INSERT INTO 'inform' VALUES ('2c9090074f82f4d1014f82f4e6d50004', '12', 'realname12', '2015-08-31 16:52:12', 'otherinfo', '政治', '0', '资讯', 'pc/admin/news/view?id=12', '12');
INSERT INTO 'inform' VALUES ('2c9090074f831293014f8312a95a0004', '12', 'realname12', '2015-08-31 17:24:42', 'otherinfo', '政治', '0', '资讯', 'pc/admin/news/view?id=12', '12');
INSERT INTO 'inform' VALUES ('3', '29', 'title3', '2015-08-29 11:13:56', 'otherinfo3', '诋毁侮辱', '0', '活动', 'pc/admin/activity/viewid=29', '83');
INSERT INTO 'inform' VALUES ('30', '69', 'title30', '2015-08-29 11:13:56', 'otherinfo30', '广告骚扰', '0', '圈子', 'pc/admin/circle/viewid=69', '20');
INSERT INTO 'inform' VALUES ('31', '81', 'title31', '2015-08-29 11:13:56', 'otherinfo31', '政治', '1', '活动', 'pc/admin/activity/viewid=81', '16');
INSERT INTO 'inform' VALUES ('32', '48', 'title32', '2015-08-29 11:13:56', 'otherinfo32', '广告骚扰', '1', '圈子', 'pc/admin/circle/viewid=48', '48');
INSERT INTO 'inform' VALUES ('33', '88', 'title33', '2015-08-29 11:13:56', 'otherinfo33', '色情', '0', '活动', 'pc/admin/activity/viewid=88', '50');
INSERT INTO 'inform' VALUES ('34', '1', 'title34', '2015-08-29 11:13:56', 'otherinfo34', '欺诈', '1', '活动', 'pc/admin/activity/viewid=1', '32');
INSERT INTO 'inform' VALUES ('35', '90', 'title35', '2015-08-29 11:13:56', 'otherinfo35', '广告骚扰', '1', '圈子', 'pc/admin/circle/viewid=90', '99');
INSERT INTO 'inform' VALUES ('36', '51', 'title36', '2015-08-29 11:13:56', 'otherinfo36', '非交大校友', '0', '资讯', 'pc/admin/news/viewid=51', '91');
INSERT INTO 'inform' VALUES ('37', '2', 'title37', '2015-08-29 11:13:56', 'otherinfo37', '诋毁侮辱', '0', '圈子', 'pc/admin/circle/viewid=2', '10');
INSERT INTO 'inform' VALUES ('38', '52', 'title38', '2015-08-29 11:13:56', 'otherinfo38', '广告骚扰', '0', '资讯', 'pc/admin/news/viewid=52', '15');
INSERT INTO 'inform' VALUES ('39', '80', 'title39', '2015-08-29 11:13:56', 'otherinfo39', '非交大校友', '0', '活动', 'pc/admin/activity/viewid=80', '20');
INSERT INTO 'inform' VALUES ('4', '9', 'title4', '2015-08-29 11:13:56', 'otherinfo4', '诋毁侮辱', '1', '圈子', 'pc/admin/circle/viewid=9', '45');
INSERT INTO 'inform' VALUES ('40', '56', 'title40', '2015-08-29 11:13:56', 'otherinfo40', '欺诈', '1', '资讯', 'pc/admin/news/viewid=56', '24');
INSERT INTO 'inform' VALUES ('41', '86', 'title41', '2015-08-29 11:13:56', 'otherinfo41', '色情', '1', '资讯', 'pc/admin/news/viewid=86', '16');
INSERT INTO 'inform' VALUES ('42', '23', 'title42', '2015-08-29 11:13:56', 'otherinfo42', '广告骚扰', '1', '圈子', 'pc/admin/circle/viewid=23', '96');
INSERT INTO 'inform' VALUES ('43', '68', 'title43', '2015-08-29 11:13:56', 'otherinfo43', '诋毁侮辱', '1', '活动', 'pc/admin/activity/viewid=68', '1');
INSERT INTO 'inform' VALUES ('44', '67', 'title44', '2015-08-29 11:13:56', 'otherinfo44', '诋毁侮辱', '1', '活动', 'pc/admin/activity/viewid=67', '56');
INSERT INTO 'inform' VALUES ('45', '81', 'title45', '2015-08-29 11:13:56', 'otherinfo45', '其他', '1', '活动', 'pc/admin/activity/viewid=81', '85');
INSERT INTO 'inform' VALUES ('46', '47', 'title46', '2015-08-29 11:13:56', 'otherinfo46', '色情', '0', '资讯', 'pc/admin/news/viewid=47', '13');
INSERT INTO 'inform' VALUES ('47', '28', 'title47', '2015-08-29 11:13:56', 'otherinfo47', '非交大校友', '1', '资讯', 'pc/admin/news/viewid=28', '78');
INSERT INTO 'inform' VALUES ('48', '86', 'title48', '2015-08-29 11:13:56', 'otherinfo48', '非交大校友', '1', '资讯', 'pc/admin/news/viewid=86', '82');
INSERT INTO 'inform' VALUES ('49', '81', 'title49', '2015-08-29 11:13:56', 'otherinfo49', '色情', '0', '圈子', 'pc/admin/circle/viewid=81', '19');
INSERT INTO 'inform' VALUES ('5', '75', 'title5', '2015-08-29 11:13:56', 'otherinfo5', '欺诈', '1', '圈子', 'pc/admin/circle/viewid=75', '63');
INSERT INTO 'inform' VALUES ('52', '32', 'title52', '2015-08-29 11:13:56', 'otherinfo52', '色情', '0', '圈子', 'pc/admin/circle/viewid=32', '46');
INSERT INTO 'inform' VALUES ('54', '60', 'title54', '2015-08-29 11:13:56', 'otherinfo54', '诋毁侮辱', '1', '资讯', 'pc/admin/news/viewid=60', '61');
INSERT INTO 'inform' VALUES ('55', '78', 'title55', '2015-08-29 11:13:56', 'otherinfo55', '政治', '0', '资讯', 'pc/admin/news/viewid=78', '27');
INSERT INTO 'inform' VALUES ('56', '46', 'title56', '2015-08-29 11:13:56', 'otherinfo56', '其他', '1', '资讯', 'pc/admin/news/viewid=46', '61');
INSERT INTO 'inform' VALUES ('57', '31', 'title57', '2015-08-29 11:13:56', 'otherinfo57', '政治', '0', '圈子', 'pc/admin/circle/viewid=31', '87');
INSERT INTO 'inform' VALUES ('58', '44', 'title58', '2015-08-29 11:13:56', 'otherinfo58', '色情', '1', '活动', 'pc/admin/activity/viewid=44', '83');
INSERT INTO 'inform' VALUES ('59', '55', 'title59', '2015-08-29 11:13:56', 'otherinfo59', '政治', '1', '活动', 'pc/admin/activity/viewid=55', '49');
INSERT INTO 'inform' VALUES ('6', '6', 'title6', '2015-08-29 11:13:56', 'otherinfo6', '欺诈', '1', '活动', 'pc/admin/activity/viewid=6', '27');
INSERT INTO 'inform' VALUES ('60', '68', 'title60', '2015-08-29 11:13:56', 'otherinfo60', '其他', '0', '活动', 'pc/admin/activity/viewid=68', '66');
INSERT INTO 'inform' VALUES ('61', '8', 'title61', '2015-08-29 11:13:56', 'otherinfo61', '政治', '0', '活动', 'pc/admin/activity/viewid=8', '9');
INSERT INTO 'inform' VALUES ('62', '51', 'title62', '2015-08-29 11:13:56', 'otherinfo62', '广告骚扰', '1', '资讯', 'pc/admin/news/viewid=51', '24');
INSERT INTO 'inform' VALUES ('63', '2', 'title63', '2015-08-29 11:13:56', 'otherinfo63', '非交大校友', '1', '活动', 'pc/admin/activity/viewid=2', '23');
INSERT INTO 'inform' VALUES ('64', '82', 'title64', '2015-08-29 11:13:56', 'otherinfo64', '欺诈', '0', '圈子', 'pc/admin/circle/viewid=82', '38');
INSERT INTO 'inform' VALUES ('65', '14', 'title65', '2015-08-29 11:13:56', 'otherinfo65', '广告骚扰', '1', '活动', 'pc/admin/activity/viewid=14', '54');
INSERT INTO 'inform' VALUES ('66', '19', 'title66', '2015-08-29 11:13:56', 'otherinfo66', '广告骚扰', '0', '活动', 'pc/admin/activity/viewid=19', '49');
INSERT INTO 'inform' VALUES ('67', '30', 'title67', '2015-08-29 11:13:56', 'otherinfo67', '政治', '1', '资讯', 'pc/admin/news/viewid=30', '76');
INSERT INTO 'inform' VALUES ('68', '5', 'title68', '2015-08-29 11:13:56', 'otherinfo68', '非交大校友', '0', '活动', 'pc/admin/activity/viewid=5', '45');
INSERT INTO 'inform' VALUES ('69', '19', 'title69', '2015-08-29 11:13:56', 'otherinfo69', '其他', '1', '资讯', 'pc/admin/news/viewid=19', '28');
INSERT INTO 'inform' VALUES ('7', '26', 'title7', '2015-08-29 11:13:56', 'otherinfo7', '色情', '1', '资讯', 'pc/admin/news/viewid=26', '87');
INSERT INTO 'inform' VALUES ('70', '10', 'title70', '2015-08-29 11:13:56', 'otherinfo70', '欺诈', '0', '圈子', 'pc/admin/circle/viewid=10', '54');
INSERT INTO 'inform' VALUES ('71', '4', 'title71', '2015-08-29 11:13:56', 'otherinfo71', '诋毁侮辱', '1', '圈子', 'pc/admin/circle/viewid=4', '39');
INSERT INTO 'inform' VALUES ('72', '85', 'title72', '2015-08-29 11:13:56', 'otherinfo72', '其他', '1', '活动', 'pc/admin/activity/viewid=85', '4');
INSERT INTO 'inform' VALUES ('73', '76', 'title73', '2015-08-29 11:13:56', 'otherinfo73', '其他', '1', '圈子', 'pc/admin/circle/viewid=76', '98');
INSERT INTO 'inform' VALUES ('74', '45', 'title74', '2015-08-29 11:13:56', 'otherinfo74', '诋毁侮辱', '1', '资讯', 'pc/admin/news/viewid=45', '76');
INSERT INTO 'inform' VALUES ('75', '58', 'title75', '2015-08-29 11:13:56', 'otherinfo75', '诋毁侮辱', '0', '圈子', 'pc/admin/circle/viewid=58', '15');
INSERT INTO 'inform' VALUES ('76', '66', 'title76', '2015-08-29 11:13:56', 'otherinfo76', '色情', '0', '圈子', 'pc/admin/circle/viewid=66', '65');
INSERT INTO 'inform' VALUES ('77', '42', 'title77', '2015-08-29 11:13:56', 'otherinfo77', '诋毁侮辱', '0', '圈子', 'pc/admin/circle/viewid=42', '50');
INSERT INTO 'inform' VALUES ('78', '33', 'title78', '2015-08-29 11:13:56', 'otherinfo78', '欺诈', '1', '活动', 'pc/admin/activity/viewid=33', '78');
INSERT INTO 'inform' VALUES ('79', '54', 'title79', '2015-08-29 11:13:56', 'otherinfo79', '诋毁侮辱', '1', '资讯', 'pc/admin/news/viewid=54', '82');
INSERT INTO 'inform' VALUES ('8', '38', 'title8', '2015-08-29 11:13:56', 'otherinfo8', '其他', '1', '圈子', 'pc/admin/circle/viewid=38', '68');
INSERT INTO 'inform' VALUES ('80', '27', 'title80', '2015-08-29 11:13:56', 'otherinfo80', '色情', '0', '资讯', 'pc/admin/news/viewid=27', '22');
INSERT INTO 'inform' VALUES ('81', '14', 'title81', '2015-08-29 11:13:56', 'otherinfo81', '政治', '1', '圈子', 'pc/admin/circle/viewid=14', '25');
INSERT INTO 'inform' VALUES ('82', '77', 'title82', '2015-08-29 11:13:56', 'otherinfo82', '广告骚扰', '1', '资讯', 'pc/admin/news/viewid=77', '49');
INSERT INTO 'inform' VALUES ('83', '35', 'title83', '2015-08-29 11:13:56', 'otherinfo83', '广告骚扰', '1', '资讯', 'pc/admin/news/viewid=35', '44');
INSERT INTO 'inform' VALUES ('84', '88', 'title84', '2015-08-29 11:13:56', 'otherinfo84', '非交大校友', '0', '资讯', 'pc/admin/news/viewid=88', '60');
INSERT INTO 'inform' VALUES ('85', '23', 'title85', '2015-08-29 11:13:56', 'otherinfo85', '广告骚扰', '0', '圈子', 'pc/admin/circle/viewid=23', '63');
INSERT INTO 'inform' VALUES ('86', '80', 'title86', '2015-08-29 11:13:56', 'otherinfo86', '色情', '0', '资讯', 'pc/admin/news/viewid=80', '66');
INSERT INTO 'inform' VALUES ('87', '3', 'title87', '2015-08-29 11:13:56', 'otherinfo87', '欺诈', '1', '资讯', 'pc/admin/news/viewid=3', '12');
INSERT INTO 'inform' VALUES ('88', '48', 'title88', '2015-08-29 11:13:56', 'otherinfo88', '广告骚扰', '1', '圈子', 'pc/admin/circle/viewid=48', '10');
INSERT INTO 'inform' VALUES ('89', '70', 'title89', '2015-08-29 11:13:56', 'otherinfo89', '欺诈', '1', '圈子', 'pc/admin/circle/viewid=70', '95');
INSERT INTO 'inform' VALUES ('9', '0', 'title9', '2015-08-29 11:13:56', 'otherinfo9', '诋毁侮辱', '1', '活动', 'pc/admin/activity/viewid=0', '58');
INSERT INTO 'inform' VALUES ('90', '40', 'title90', '2015-08-29 11:13:56', 'otherinfo90', '色情', '1', '活动', 'pc/admin/activity/viewid=40', '28');
INSERT INTO 'inform' VALUES ('91', '10', 'title91', '2015-08-29 11:13:56', 'otherinfo91', '非交大校友', '0', '活动', 'pc/admin/activity/viewid=10', '58');
INSERT INTO 'inform' VALUES ('92', '14', 'title92', '2015-08-29 11:13:56', 'otherinfo92', '其他', '0', '活动', 'pc/admin/activity/viewid=14', '83');
INSERT INTO 'inform' VALUES ('93', '46', 'title93', '2015-08-29 11:13:56', 'otherinfo93', '广告骚扰', '0', '资讯', 'pc/admin/news/viewid=46', '39');
INSERT INTO 'inform' VALUES ('94', '89', 'title94', '2015-08-29 11:13:56', 'otherinfo94', '非交大校友', '1', '活动', 'pc/admin/activity/viewid=89', '85');
INSERT INTO 'inform' VALUES ('95', '97', 'title95', '2015-08-29 11:13:56', 'otherinfo95', '政治', '0', '资讯', 'pc/admin/news/viewid=97', '50');
INSERT INTO 'inform' VALUES ('96', '85', 'title96', '2015-08-29 11:13:56', 'otherinfo96', '非交大校友', '0', '资讯', 'pc/admin/news/viewid=85', '78');
INSERT INTO 'inform' VALUES ('97', '89', 'title97', '2015-08-29 11:13:56', 'otherinfo97', '色情', '1', '资讯', 'pc/admin/news/viewid=89', '37');
INSERT INTO 'inform' VALUES ('98', '2', 'title98', '2015-08-29 11:13:56', 'otherinfo98', '欺诈', '1', '资讯', 'pc/admin/news/viewid=2', '78');
INSERT INTO 'inform' VALUES ('99', '17', 'title99', '2015-08-29 11:13:56', 'otherinfo99', '诋毁侮辱', '1', '圈子', 'pc/admin/circle/viewid=17', '94');

-- ----------------------------
-- Table structure for 'invitatecode'
-- ----------------------------
DROP TABLE IF EXISTS 'invitatecode';
CREATE TABLE 'invitatecode' (
  'id' varchar(255) NOT NULL COMMENT '编号',
  'code' varchar(8) DEFAULT NULL COMMENT '邀请码',
  'c_time' datetime DEFAULT NULL COMMENT '创建时间',
  'create_userid' varchar(255) DEFAULT NULL COMMENT '创建者编号',
  PRIMARY KEY ('id'),
  KEY 'FK_mgfdcitwa6mjunattrt72s7x3' ('create_userid'),
  CONSTRAINT 'FK_mgfdcitwa6mjunattrt72s7x3' FOREIGN KEY ('create_userid') REFERENCES 'user' ('id')
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of invitatecode
-- ----------------------------
INSERT INTO 'invitatecode' VALUES ('2c9090074f77741e014f7774427d000c', '2OU7RC', '2015-08-29 11:15:52', '12');
INSERT INTO 'invitatecode' VALUES ('2c9090074f78e0e5014f78e0fca2000b', '2O5JCJ', '2015-08-29 17:54:15', '12');
INSERT INTO 'invitatecode' VALUES ('2c9090074f78e11c014f78e12ff6000b', '2OLMLC', '2015-08-29 17:54:28', '12');
INSERT INTO 'invitatecode' VALUES ('2c9090074f81561a014f815632eb000b', '2O6CIN', '2015-08-31 09:19:14', '12');
INSERT INTO 'invitatecode' VALUES ('2c9090074f8156d4014f815f67810000', 'QO2WWE', '2015-08-31 09:29:17', '1');
INSERT INTO 'invitatecode' VALUES ('2c9090074f8156d4014f81cf5bd7000c', 'QO6XLL', '2015-08-31 11:31:34', '1');
INSERT INTO 'invitatecode' VALUES ('2c9090074f8156d4014f81cf6118000d', 'QO8S3H', '2015-08-31 11:31:36', '1');
INSERT INTO 'invitatecode' VALUES ('2c9090074f8156d4014f81cf63c3000e', 'QOZBGG', '2015-08-31 11:31:37', '1');
INSERT INTO 'invitatecode' VALUES ('2c9090074f8156d4014f81cf66a0000f', 'QOD8AP', '2015-08-31 11:31:37', '1');
INSERT INTO 'invitatecode' VALUES ('2c9090074f8156d4014f81cf66e70010', 'QOB37C', '2015-08-31 11:31:37', '1');
INSERT INTO 'invitatecode' VALUES ('2c9090074f8156d4014f81cf68e80011', 'QOTUQF', '2015-08-31 11:31:38', '1');
INSERT INTO 'invitatecode' VALUES ('2c9090074f81d0a7014f81d0c13a000b', '2O6E4B', '2015-08-31 11:33:06', '12');
INSERT INTO 'invitatecode' VALUES ('2c9090074f82634b014f82636146000b', '2OYHQ8', '2015-08-31 14:13:15', '12');
INSERT INTO 'invitatecode' VALUES ('2c9090074f82b966014f82b97f42000b', '2OM9DM', '2015-08-31 15:47:19', '12');
INSERT INTO 'invitatecode' VALUES ('2c9090074f82f4d1014f82f4ea62000b', '2OGQKR', '2015-08-31 16:52:13', '12');
INSERT INTO 'invitatecode' VALUES ('2c9090074f831293014f8312ace9000b', '2OW8S6', '2015-08-31 17:24:43', '12');

-- ----------------------------
-- Table structure for 'join_user_activity'
-- ----------------------------
DROP TABLE IF EXISTS 'join_user_activity';
CREATE TABLE 'join_user_activity' (
  'activity_id' varchar(255) NOT NULL COMMENT '活动编号',
  'user_id' varchar(255) NOT NULL COMMENT '用户编号',
  PRIMARY KEY ('activity_id','user_id'),
  KEY 'FK_3i9glux119f0dwdjr8x9ojghx' ('user_id'),
  CONSTRAINT 'FK_3i9glux119f0dwdjr8x9ojghx' FOREIGN KEY ('user_id') REFERENCES 'user' ('id'),
  CONSTRAINT 'FK_f9krtfqoc4i67h3fw8q673rjc' FOREIGN KEY ('activity_id') REFERENCES 'activity' ('id')
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of join_user_activity
-- ----------------------------
INSERT INTO 'join_user_activity' VALUES ('11', '1');
INSERT INTO 'join_user_activity' VALUES ('30', '14');
INSERT INTO 'join_user_activity' VALUES ('30', '15');
INSERT INTO 'join_user_activity' VALUES ('30', '16');
INSERT INTO 'join_user_activity' VALUES ('30', '17');
INSERT INTO 'join_user_activity' VALUES ('30', '18');

-- ----------------------------
-- Table structure for 'join_user_circle'
-- ----------------------------
DROP TABLE IF EXISTS 'join_user_circle';
CREATE TABLE 'join_user_circle' (
  'circle_id' varchar(255) NOT NULL COMMENT '圈子编号',
  'user_id' varchar(255) NOT NULL COMMENT '用户编号',
  PRIMARY KEY ('circle_id','user_id'),
  KEY 'FK_250w1aqfltkevv3je1hlcu80t' ('user_id'),
  CONSTRAINT 'FK_250w1aqfltkevv3je1hlcu80t' FOREIGN KEY ('user_id') REFERENCES 'user' ('id'),
  CONSTRAINT 'FK_r0edsp7lov86b3to8c95dmh3j' FOREIGN KEY ('circle_id') REFERENCES 'circle' ('id')
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of join_user_circle
-- ----------------------------
INSERT INTO 'join_user_circle' VALUES ('0', '1');
INSERT INTO 'join_user_circle' VALUES ('89', '1');
INSERT INTO 'join_user_circle' VALUES ('12', '6');
INSERT INTO 'join_user_circle' VALUES ('12', '7');
INSERT INTO 'join_user_circle' VALUES ('12', '8');

-- ----------------------------
-- Table structure for 'message'
-- ----------------------------
DROP TABLE IF EXISTS 'message';
CREATE TABLE 'message' (
  'id' varchar(255) NOT NULL COMMENT '编号',
  'attachpath' varchar(64) DEFAULT NULL COMMENT '附件路径',
  'content' varchar(255) DEFAULT NULL COMMENT '内容',
  'c_time' datetime DEFAULT NULL COMMENT '创建时间',
  'state' int(11) DEFAULT NULL COMMENT '状态',
  'title' varchar(64) DEFAULT NULL COMMENT '标题',
  'receive_userid' varchar(255) DEFAULT NULL COMMENT '接受者编号',
  'sender_userid' varchar(255) DEFAULT NULL COMMENT '发送者编号',
  PRIMARY KEY ('id'),
  KEY 'FK_cr5irw062ujnvahc3xit9uaqc' ('receive_userid'),
  KEY 'FK_dg84bufwglu370qwabt5t01pt' ('sender_userid'),
  CONSTRAINT 'FK_cr5irw062ujnvahc3xit9uaqc' FOREIGN KEY ('receive_userid') REFERENCES 'user' ('id'),
  CONSTRAINT 'FK_dg84bufwglu370qwabt5t01pt' FOREIGN KEY ('sender_userid') REFERENCES 'user' ('id')
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO 'message' VALUES ('0', 'attachpath0', 'content0', '2015-08-29 11:13:56', '0', 'title0', '76', '87');
INSERT INTO 'message' VALUES ('1', 'attachpath1', 'content1', '2015-08-29 11:13:56', '1', 'title1', '29', '90');
INSERT INTO 'message' VALUES ('10', 'attachpath10', 'content10', '2015-08-29 11:13:56', '1', 'title10', '13', '18');
INSERT INTO 'message' VALUES ('11', 'attachpath11', 'content11', '2015-08-29 11:13:56', '0', 'title11', '15', '42');
INSERT INTO 'message' VALUES ('12', 'attachpath12', 'content12', '2015-08-29 11:13:56', '1', 'title12', '53', '85');
INSERT INTO 'message' VALUES ('13', 'attachpath13', 'content13', '2015-08-29 11:13:56', '0', 'title13', '75', '42');
INSERT INTO 'message' VALUES ('14', 'attachpath14', 'content14', '2015-08-29 11:13:56', '1', 'title14', '39', '57');
INSERT INTO 'message' VALUES ('15', 'attachpath15', 'content15', '2015-08-29 11:13:56', '0', 'title15', '59', '61');
INSERT INTO 'message' VALUES ('16', 'attachpath16', 'content16', '2015-08-29 11:13:56', '0', 'title16', '55', '48');
INSERT INTO 'message' VALUES ('17', 'attachpath17', 'content17', '2015-08-29 11:13:56', '0', 'title17', '66', '20');
INSERT INTO 'message' VALUES ('18', 'attachpath18', 'content18', '2015-08-29 11:13:56', '1', 'title18', '88', '45');
INSERT INTO 'message' VALUES ('19', 'attachpath19', 'content19', '2015-08-29 11:13:56', '1', 'title19', '41', '75');
INSERT INTO 'message' VALUES ('2', 'attachpath2', 'content2', '2015-08-29 11:13:56', '0', 'title2', '39', '50');
INSERT INTO 'message' VALUES ('20', 'attachpath20', 'content20', '2015-08-29 11:13:56', '0', 'title20', '88', '16');
INSERT INTO 'message' VALUES ('21', 'attachpath21', 'content21', '2015-08-29 11:13:56', '1', 'title21', '7', '61');
INSERT INTO 'message' VALUES ('22', 'attachpath22', 'content22', '2015-08-29 11:13:56', '0', 'title22', '78', '91');
INSERT INTO 'message' VALUES ('23', 'attachpath23', 'content23', '2015-08-29 11:13:56', '1', 'title23', '61', '81');
INSERT INTO 'message' VALUES ('24', 'attachpath24', 'content24', '2015-08-29 11:13:56', '0', 'title24', '41', '93');
INSERT INTO 'message' VALUES ('25', 'attachpath25', 'content25', '2015-08-29 11:13:56', '1', 'title25', '6', '43');
INSERT INTO 'message' VALUES ('26', 'attachpath26', 'content26', '2015-08-29 11:13:56', '0', 'title26', '98', '58');
INSERT INTO 'message' VALUES ('27', 'attachpath27', 'content27', '2015-08-29 11:13:56', '1', 'title27', '85', '61');
INSERT INTO 'message' VALUES ('28', 'attachpath28', 'content28', '2015-08-29 11:13:56', '0', 'title28', '7', '79');
INSERT INTO 'message' VALUES ('29', 'attachpath29', 'content29', '2015-08-29 11:13:56', '0', 'title29', '4', '49');
INSERT INTO 'message' VALUES ('2c9090074f77741e014f77743f800006', null, '消息内容测试', '2015-08-29 11:15:51', '1', '消息发送测试', '12', '22');
INSERT INTO 'message' VALUES ('2c9090074f77741e014f77743f900007', null, '消息内容测试', '2015-08-29 11:15:51', '1', '消息发送测试', '22', '12');
INSERT INTO 'message' VALUES ('2c9090074f78e0e5014f78e0fa050005', null, '消息内容测试', '2015-08-29 17:54:14', '1', '消息发送测试', '12', '22');
INSERT INTO 'message' VALUES ('2c9090074f78e0e5014f78e0fa1d0006', null, '消息内容测试', '2015-08-29 17:54:14', '1', '消息发送测试', '22', '12');
INSERT INTO 'message' VALUES ('2c9090074f78e11c014f78e12d870005', null, '消息内容测试', '2015-08-29 17:54:27', '1', '消息发送测试', '12', '22');
INSERT INTO 'message' VALUES ('2c9090074f78e11c014f78e12d990006', null, '消息内容测试', '2015-08-29 17:54:27', '1', '消息发送测试', '22', '12');
INSERT INTO 'message' VALUES ('2c9090074f81561a014f815630260005', null, '消息内容测试', '2015-08-31 09:19:13', '1', '消息发送测试', '12', '22');
INSERT INTO 'message' VALUES ('2c9090074f81561a014f8156303f0006', null, '消息内容测试', '2015-08-31 09:19:13', '1', '消息发送测试', '22', '12');
INSERT INTO 'message' VALUES ('2c9090074f81d0a7014f81d0bda30005', null, '消息内容测试', '2015-08-31 11:33:05', '1', '消息发送测试', '12', '22');
INSERT INTO 'message' VALUES ('2c9090074f81d0a7014f81d0bdb70006', null, '消息内容测试', '2015-08-31 11:33:05', '1', '消息发送测试', '22', '12');
INSERT INTO 'message' VALUES ('2c9090074f82634b014f82635d560005', null, '消息内容测试', '2015-08-31 14:13:14', '1', '消息发送测试', '12', '22');
INSERT INTO 'message' VALUES ('2c9090074f82634b014f82635d700006', null, '消息内容测试', '2015-08-31 14:13:14', '1', '消息发送测试', '22', '12');
INSERT INTO 'message' VALUES ('2c9090074f82b966014f82b97bf80005', null, '消息内容测试', '2015-08-31 15:47:18', '1', '消息发送测试', '12', '22');
INSERT INTO 'message' VALUES ('2c9090074f82b966014f82b97c0a0006', null, '消息内容测试', '2015-08-31 15:47:18', '1', '消息发送测试', '22', '12');
INSERT INTO 'message' VALUES ('2c9090074f82f4d1014f82f4e70a0005', null, '消息内容测试', '2015-08-31 16:52:12', '1', '消息发送测试', '12', '22');
INSERT INTO 'message' VALUES ('2c9090074f82f4d1014f82f4e71b0006', null, '消息内容测试', '2015-08-31 16:52:12', '1', '消息发送测试', '22', '12');
INSERT INTO 'message' VALUES ('2c9090074f831293014f8312a98d0005', null, '消息内容测试', '2015-08-31 17:24:43', '1', '消息发送测试', '12', '22');
INSERT INTO 'message' VALUES ('2c9090074f831293014f8312a99c0006', null, '消息内容测试', '2015-08-31 17:24:43', '1', '消息发送测试', '22', '12');
INSERT INTO 'message' VALUES ('30', 'attachpath30', 'content30', '2015-08-29 11:13:56', '0', 'title30', '76', '23');
INSERT INTO 'message' VALUES ('31', 'attachpath31', 'content31', '2015-08-29 11:13:56', '1', 'title31', '39', '1');
INSERT INTO 'message' VALUES ('32', 'attachpath32', 'content32', '2015-08-29 11:13:56', '0', 'title32', '4', '62');
INSERT INTO 'message' VALUES ('33', 'attachpath33', 'content33', '2015-08-29 11:13:56', '1', 'title33', '35', '29');
INSERT INTO 'message' VALUES ('34', 'attachpath34', 'content34', '2015-08-29 11:13:56', '0', 'title34', '38', '91');
INSERT INTO 'message' VALUES ('35', 'attachpath35', 'content35', '2015-08-29 11:13:56', '1', 'title35', '77', '87');
INSERT INTO 'message' VALUES ('36', 'attachpath36', 'content36', '2015-08-29 11:13:56', '1', 'title36', '40', '32');
INSERT INTO 'message' VALUES ('37', 'attachpath37', 'content37', '2015-08-29 11:13:56', '1', 'title37', '43', '7');
INSERT INTO 'message' VALUES ('38', 'attachpath38', 'content38', '2015-08-29 11:13:56', '0', 'title38', '68', '29');
INSERT INTO 'message' VALUES ('39', 'attachpath39', 'content39', '2015-08-29 11:13:56', '1', 'title39', '84', '79');
INSERT INTO 'message' VALUES ('4', 'attachpath4', 'content4', '2015-08-29 11:13:56', '1', 'title4', '27', '45');
INSERT INTO 'message' VALUES ('40', 'attachpath40', 'content40', '2015-08-29 11:13:56', '0', 'title40', '50', '57');
INSERT INTO 'message' VALUES ('41', 'attachpath41', 'content41', '2015-08-29 11:13:56', '0', 'title41', '95', '84');
INSERT INTO 'message' VALUES ('42', 'attachpath42', 'content42', '2015-08-29 11:13:56', '0', 'title42', '14', '83');
INSERT INTO 'message' VALUES ('43', 'attachpath43', 'content43', '2015-08-29 11:13:56', '1', 'title43', '33', '26');
INSERT INTO 'message' VALUES ('44', 'attachpath44', 'content44', '2015-08-29 11:13:56', '1', 'title44', '82', '60');
INSERT INTO 'message' VALUES ('45', 'attachpath45', 'content45', '2015-08-29 11:13:56', '1', 'title45', '45', '76');
INSERT INTO 'message' VALUES ('46', 'attachpath46', 'content46', '2015-08-29 11:13:56', '0', 'title46', '41', '22');
INSERT INTO 'message' VALUES ('47', 'attachpath47', 'content47', '2015-08-29 11:13:56', '1', 'title47', '64', '91');
INSERT INTO 'message' VALUES ('48', 'attachpath48', 'content48', '2015-08-29 11:13:56', '0', 'title48', '29', '8');
INSERT INTO 'message' VALUES ('49', 'attachpath49', 'content49', '2015-08-29 11:13:56', '1', 'title49', '83', '64');
INSERT INTO 'message' VALUES ('5', 'attachpath5', 'content5', '2015-08-29 11:13:56', '1', 'title5', '21', '99');
INSERT INTO 'message' VALUES ('50', 'attachpath50', 'content50', '2015-08-29 11:13:56', '1', 'title50', '53', '28');
INSERT INTO 'message' VALUES ('51', 'attachpath51', 'content51', '2015-08-29 11:13:56', '0', 'title51', '74', '81');
INSERT INTO 'message' VALUES ('52', 'attachpath52', 'content52', '2015-08-29 11:13:56', '0', 'title52', '67', '54');
INSERT INTO 'message' VALUES ('53', 'attachpath53', 'content53', '2015-08-29 11:13:56', '0', 'title53', '14', '85');
INSERT INTO 'message' VALUES ('54', 'attachpath54', 'content54', '2015-08-29 11:13:56', '1', 'title54', '10', '98');
INSERT INTO 'message' VALUES ('55', 'attachpath55', 'content55', '2015-08-29 11:13:56', '1', 'title55', '24', '2');
INSERT INTO 'message' VALUES ('56', 'attachpath56', 'content56', '2015-08-29 11:13:56', '0', 'title56', '31', '29');
INSERT INTO 'message' VALUES ('57', 'attachpath57', 'content57', '2015-08-29 11:13:56', '1', 'title57', '74', '67');
INSERT INTO 'message' VALUES ('58', 'attachpath58', 'content58', '2015-08-29 11:13:56', '1', 'title58', '43', '20');
INSERT INTO 'message' VALUES ('59', 'attachpath59', 'content59', '2015-08-29 11:13:56', '0', 'title59', '2', '13');
INSERT INTO 'message' VALUES ('6', 'attachpath6', 'content6', '2015-08-29 11:13:56', '1', 'title6', '76', '48');
INSERT INTO 'message' VALUES ('60', 'attachpath60', 'content60', '2015-08-29 11:13:56', '1', 'title60', '46', '57');
INSERT INTO 'message' VALUES ('61', 'attachpath61', 'content61', '2015-08-29 11:13:56', '1', 'title61', '31', '51');
INSERT INTO 'message' VALUES ('62', 'attachpath62', 'content62', '2015-08-29 11:13:56', '1', 'title62', '16', '6');
INSERT INTO 'message' VALUES ('63', 'attachpath63', 'content63', '2015-08-29 11:13:56', '1', 'title63', '12', '97');
INSERT INTO 'message' VALUES ('64', 'attachpath64', 'content64', '2015-08-29 11:13:56', '0', 'title64', '50', '54');
INSERT INTO 'message' VALUES ('65', 'attachpath65', 'content65', '2015-08-29 11:13:56', '0', 'title65', '41', '19');
INSERT INTO 'message' VALUES ('66', 'attachpath66', 'content66', '2015-08-29 11:13:56', '0', 'title66', '3', '50');
INSERT INTO 'message' VALUES ('67', 'attachpath67', 'content67', '2015-08-29 11:13:56', '1', 'title67', '25', '12');
INSERT INTO 'message' VALUES ('68', 'attachpath68', 'content68', '2015-08-29 11:13:56', '0', 'title68', '78', '92');
INSERT INTO 'message' VALUES ('69', 'attachpath69', 'content69', '2015-08-29 11:13:56', '1', 'title69', '6', '1');
INSERT INTO 'message' VALUES ('7', 'attachpath7', 'content7', '2015-08-29 11:13:56', '1', 'title7', '63', '75');
INSERT INTO 'message' VALUES ('70', 'attachpath70', 'content70', '2015-08-29 11:13:56', '1', 'title70', '41', '80');
INSERT INTO 'message' VALUES ('71', 'attachpath71', 'content71', '2015-08-29 11:13:56', '1', 'title71', '61', '84');
INSERT INTO 'message' VALUES ('72', 'attachpath72', 'content72', '2015-08-29 11:13:56', '0', 'title72', '48', '48');
INSERT INTO 'message' VALUES ('73', 'attachpath73', 'content73', '2015-08-29 11:13:56', '0', 'title73', '60', '56');
INSERT INTO 'message' VALUES ('74', 'attachpath74', 'content74', '2015-08-29 11:13:56', '0', 'title74', '96', '3');
INSERT INTO 'message' VALUES ('75', 'attachpath75', 'content75', '2015-08-29 11:13:56', '0', 'title75', '78', '6');
INSERT INTO 'message' VALUES ('76', 'attachpath76', 'content76', '2015-08-29 11:13:56', '0', 'title76', '66', '4');
INSERT INTO 'message' VALUES ('77', 'attachpath77', 'content77', '2015-08-29 11:13:56', '0', 'title77', '79', '41');
INSERT INTO 'message' VALUES ('78', 'attachpath78', 'content78', '2015-08-29 11:13:56', '1', 'title78', '75', '36');
INSERT INTO 'message' VALUES ('79', 'attachpath79', 'content79', '2015-08-29 11:13:56', '0', 'title79', '21', '43');
INSERT INTO 'message' VALUES ('8', 'attachpath8', 'content8', '2015-08-29 11:13:56', '1', 'title8', '9', '80');
INSERT INTO 'message' VALUES ('80', 'attachpath80', 'content80', '2015-08-29 11:13:56', '1', 'title80', '66', '24');
INSERT INTO 'message' VALUES ('81', 'attachpath81', 'content81', '2015-08-29 11:13:56', '0', 'title81', '69', '56');
INSERT INTO 'message' VALUES ('82', 'attachpath82', 'content82', '2015-08-29 11:13:56', '0', 'title82', '22', '66');
INSERT INTO 'message' VALUES ('83', 'attachpath83', 'content83', '2015-08-29 11:13:56', '1', 'title83', '20', '81');
INSERT INTO 'message' VALUES ('84', 'attachpath84', 'content84', '2015-08-29 11:13:56', '0', 'title84', '2', '69');
INSERT INTO 'message' VALUES ('85', 'attachpath85', 'content85', '2015-08-29 11:13:56', '1', 'title85', '70', '80');
INSERT INTO 'message' VALUES ('86', 'attachpath86', 'content86', '2015-08-29 11:13:56', '1', 'title86', '92', '36');
INSERT INTO 'message' VALUES ('87', 'attachpath87', 'content87', '2015-08-29 11:13:56', '0', 'title87', '59', '76');
INSERT INTO 'message' VALUES ('88', 'attachpath88', 'content88', '2015-08-29 11:13:56', '0', 'title88', '4', '92');
INSERT INTO 'message' VALUES ('89', 'attachpath89', 'content89', '2015-08-29 11:13:56', '0', 'title89', '4', '99');
INSERT INTO 'message' VALUES ('9', 'attachpath9', 'content9', '2015-08-29 11:13:56', '1', 'title9', '10', '56');
INSERT INTO 'message' VALUES ('90', 'attachpath90', 'content90', '2015-08-29 11:13:56', '0', 'title90', '78', '74');
INSERT INTO 'message' VALUES ('91', 'attachpath91', 'content91', '2015-08-29 11:13:56', '1', 'title91', '43', '58');
INSERT INTO 'message' VALUES ('92', 'attachpath92', 'content92', '2015-08-29 11:13:56', '1', 'title92', '9', '44');
INSERT INTO 'message' VALUES ('93', 'attachpath93', 'content93', '2015-08-29 11:13:56', '1', 'title93', '78', '58');
INSERT INTO 'message' VALUES ('94', 'attachpath94', 'content94', '2015-08-29 11:13:56', '0', 'title94', '24', '43');
INSERT INTO 'message' VALUES ('95', 'attachpath95', 'content95', '2015-08-29 11:13:56', '1', 'title95', '0', '68');
INSERT INTO 'message' VALUES ('96', 'attachpath96', 'content96', '2015-08-29 11:13:56', '0', 'title96', '10', '28');
INSERT INTO 'message' VALUES ('97', 'attachpath97', 'content97', '2015-08-29 11:13:56', '0', 'title97', '40', '42');
INSERT INTO 'message' VALUES ('98', 'attachpath98', 'content98', '2015-08-29 11:13:56', '0', 'title98', '47', '55');
INSERT INTO 'message' VALUES ('99', 'attachpath99', 'content99', '2015-08-29 11:13:56', '1', 'title99', '97', '26');

-- ----------------------------
-- Table structure for 'news'
-- ----------------------------
DROP TABLE IF EXISTS 'news';
CREATE TABLE 'news' (
  'id' varchar(255) NOT NULL COMMENT '编号',
  'content' varchar(255) DEFAULT NULL COMMENT '内容',
  'c_time' datetime DEFAULT NULL COMMENT '创建时间',
  'picpath' varchar(64) DEFAULT NULL COMMENT '图片路径',
  'pv' int(11) DEFAULT NULL COMMENT '访问次数',
  'state' int(11) DEFAULT NULL COMMENT '状态',
  'title' varchar(64) DEFAULT NULL COMMENT '标题',
  'type' varchar(16) DEFAULT NULL COMMENT '类型',
  'create_userid' varchar(255) DEFAULT NULL COMMENT '创建者编号',
  PRIMARY KEY ('id'),
  KEY 'FK_jhphfv1cw9yq0shux6idr5p69' ('create_userid'),
  CONSTRAINT 'FK_jhphfv1cw9yq0shux6idr5p69' FOREIGN KEY ('create_userid') REFERENCES 'user' ('id')
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO 'news' VALUES ('0', 'content0', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '6', '1', 'title0', '投融资', '0');
INSERT INTO 'news' VALUES ('1', 'content1', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '75', '1', 'title1', '互帮互助', '1');
INSERT INTO 'news' VALUES ('10', 'content10', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', '1', 'title10', '合作商机', '10');
INSERT INTO 'news' VALUES ('11', 'content11', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', '1', 'title11', '互帮互助', '11');
INSERT INTO 'news' VALUES ('12', 'content12', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', '1', 'title12', '思源创业', '12');
INSERT INTO 'news' VALUES ('13', 'content13', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', '1', 'title13', '投融资', '13');
INSERT INTO 'news' VALUES ('14', 'content14', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', '1', 'title14', '校友企业', '14');
INSERT INTO 'news' VALUES ('15', 'content15', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', '1', 'title15', '思源创业', '15');
INSERT INTO 'news' VALUES ('16', 'content16', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', '1', 'title16', '求职招聘', '16');
INSERT INTO 'news' VALUES ('17', 'content17', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', '1', 'title17', '合作商机', '17');
INSERT INTO 'news' VALUES ('18', 'content18', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', '1', 'title18', '新闻动态', '18');
INSERT INTO 'news' VALUES ('19', 'content19', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', '1', 'title19', '互帮互助', '19');
INSERT INTO 'news' VALUES ('2', 'content2', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '10', '1', 'title2', '投融资', '2');
INSERT INTO 'news' VALUES ('20', 'content20', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', '1', 'title20', '在水一方', '20');
INSERT INTO 'news' VALUES ('21', 'content21', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', '1', 'title21', '投融资', '21');
INSERT INTO 'news' VALUES ('22', 'content22', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', '1', 'title22', '合作商机', '22');
INSERT INTO 'news' VALUES ('23', 'content23', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', '1', 'title23', '求职招聘', '23');
INSERT INTO 'news' VALUES ('24', 'content24', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', '1', 'title24', '在水一方', '24');
INSERT INTO 'news' VALUES ('25', 'content25', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', '1', 'title25', '新闻动态', '25');
INSERT INTO 'news' VALUES ('26', 'content26', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', '1', 'title26', '思源创业', '26');
INSERT INTO 'news' VALUES ('27', 'content27', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', '1', 'title27', '思源创业', '27');
INSERT INTO 'news' VALUES ('28', 'content28', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', '1', 'title28', '合作商机', '28');
INSERT INTO 'news' VALUES ('29', 'content29', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', '1', 'title29', '求职招聘', '29');
INSERT INTO 'news' VALUES ('3', 'content3', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', '1', 'title3', '校友企业', '3');
INSERT INTO 'news' VALUES ('30', 'content30', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', '1', 'title30', '在水一方', '30');
INSERT INTO 'news' VALUES ('31', 'content31', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', '1', 'title31', '投融资', '31');
INSERT INTO 'news' VALUES ('32', 'content32', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', '1', 'title32', '互帮互助', '32');
INSERT INTO 'news' VALUES ('33', 'content33', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', '1', 'title33', '互帮互助', '33');
INSERT INTO 'news' VALUES ('34', 'content34', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', '1', 'title34', '求职招聘', '34');
INSERT INTO 'news' VALUES ('35', 'content35', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', '1', 'title35', '思源创业', '35');
INSERT INTO 'news' VALUES ('36', 'content36', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', '1', 'title36', '投融资', '36');
INSERT INTO 'news' VALUES ('37', 'content37', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', '1', 'title37', '求职招聘', '37');
INSERT INTO 'news' VALUES ('38', 'content38', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', '1', 'title38', '互帮互助', '38');
INSERT INTO 'news' VALUES ('39', 'content39', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', '1', 'title39', '校友企业', '39');
INSERT INTO 'news' VALUES ('4', 'content4', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', '1', 'title4', '思源创业', '4');
INSERT INTO 'news' VALUES ('40', 'content40', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', '1', 'title40', '求职招聘', '40');
INSERT INTO 'news' VALUES ('41', 'content41', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', '1', 'title41', '合作商机', '41');
INSERT INTO 'news' VALUES ('42', 'content42', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', '1', 'title42', '投融资', '42');
INSERT INTO 'news' VALUES ('43', 'content43', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', '1', 'title43', '思源创业', '43');
INSERT INTO 'news' VALUES ('44', 'content44', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', '1', 'title44', '在水一方', '44');
INSERT INTO 'news' VALUES ('45', 'content45', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', '1', 'title45', '在水一方', '45');
INSERT INTO 'news' VALUES ('46', 'content46', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', '1', 'title46', '新闻动态', '46');
INSERT INTO 'news' VALUES ('47', 'content47', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', '1', 'title47', '求职招聘', '47');
INSERT INTO 'news' VALUES ('48', 'content48', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', '1', 'title48', '互帮互助', '48');
INSERT INTO 'news' VALUES ('49', 'content49', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', '1', 'title49', '投融资', '49');
INSERT INTO 'news' VALUES ('5', 'content5', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', '1', 'title5', '新闻动态', '5');
INSERT INTO 'news' VALUES ('50', 'content50', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', '1', 'title50', '投融资', '50');
INSERT INTO 'news' VALUES ('51', 'content51', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', '1', 'title51', '新闻动态', '51');
INSERT INTO 'news' VALUES ('52', 'content52', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', '1', 'title52', '思源创业', '52');
INSERT INTO 'news' VALUES ('53', 'content53', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', '1', 'title53', '在水一方', '53');
INSERT INTO 'news' VALUES ('54', 'content54', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', '1', 'title54', '在水一方', '54');
INSERT INTO 'news' VALUES ('55', 'content55', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', '1', 'title55', '校友企业', '55');
INSERT INTO 'news' VALUES ('56', 'content56', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', '1', 'title56', '在水一方', '56');
INSERT INTO 'news' VALUES ('57', 'content57', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', '1', 'title57', '互帮互助', '57');
INSERT INTO 'news' VALUES ('58', 'content58', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', '1', 'title58', '新闻动态', '58');
INSERT INTO 'news' VALUES ('59', 'content59', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', '1', 'title59', '互帮互助', '59');
INSERT INTO 'news' VALUES ('6', 'content6', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', '1', 'title6', '在水一方', '6');
INSERT INTO 'news' VALUES ('60', 'content60', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', '1', 'title60', '互帮互助', '60');
INSERT INTO 'news' VALUES ('61', 'content61', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', '1', 'title61', '合作商机', '61');
INSERT INTO 'news' VALUES ('62', 'content62', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', '1', 'title62', '思源创业', '62');
INSERT INTO 'news' VALUES ('63', 'content63', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', '1', 'title63', '投融资', '63');
INSERT INTO 'news' VALUES ('64', 'content64', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', '1', 'title64', '思源创业', '64');
INSERT INTO 'news' VALUES ('65', 'content65', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', '1', 'title65', '互帮互助', '65');
INSERT INTO 'news' VALUES ('66', 'content66', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', '1', 'title66', '新闻动态', '66');
INSERT INTO 'news' VALUES ('67', 'content67', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', '1', 'title67', '求职招聘', '67');
INSERT INTO 'news' VALUES ('68', 'content68', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', '1', 'title68', '思源创业', '68');
INSERT INTO 'news' VALUES ('69', 'content69', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', '1', 'title69', '求职招聘', '69');
INSERT INTO 'news' VALUES ('7', 'content7', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', '1', 'title7', '校友企业', '7');
INSERT INTO 'news' VALUES ('70', 'content70', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', '1', 'title70', '合作商机', '70');
INSERT INTO 'news' VALUES ('71', 'content71', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', '1', 'title71', '新闻动态', '71');
INSERT INTO 'news' VALUES ('72', 'content72', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', '1', 'title72', '思源创业', '72');
INSERT INTO 'news' VALUES ('73', 'content73', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', '1', 'title73', '投融资', '73');
INSERT INTO 'news' VALUES ('74', 'content74', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', '1', 'title74', '求职招聘', '74');
INSERT INTO 'news' VALUES ('75', 'content75', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', '1', 'title75', '合作商机', '75');
INSERT INTO 'news' VALUES ('76', 'content76', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', '1', 'title76', '合作商机', '76');
INSERT INTO 'news' VALUES ('77', 'content77', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', '1', 'title77', '求职招聘', '77');
INSERT INTO 'news' VALUES ('78', 'content78', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', '1', 'title78', '求职招聘', '78');
INSERT INTO 'news' VALUES ('79', 'content79', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', '1', 'title79', '投融资', '79');
INSERT INTO 'news' VALUES ('8', 'content8', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', '1', 'title8', '新闻动态', '8');
INSERT INTO 'news' VALUES ('80', 'content80', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', '1', 'title80', '互帮互助', '80');
INSERT INTO 'news' VALUES ('81', 'content81', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', '1', 'title81', '校友企业', '81');
INSERT INTO 'news' VALUES ('82', 'content82', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', '1', 'title82', '投融资', '82');
INSERT INTO 'news' VALUES ('83', 'content83', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', '1', 'title83', '校友企业', '83');
INSERT INTO 'news' VALUES ('84', 'content84', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', '1', 'title84', '校友企业', '84');
INSERT INTO 'news' VALUES ('85', 'content85', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', '1', 'title85', '互帮互助', '85');
INSERT INTO 'news' VALUES ('86', 'content86', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', '1', 'title86', '校友企业', '86');
INSERT INTO 'news' VALUES ('87', 'content87', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', '1', 'title87', '在水一方', '87');
INSERT INTO 'news' VALUES ('88', 'content88', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', '1', 'title88', '求职招聘', '88');
INSERT INTO 'news' VALUES ('89', 'content89', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', '1', 'title89', '投融资', '89');
INSERT INTO 'news' VALUES ('9', 'content9', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', '1', 'title9', '在水一方', '9');
INSERT INTO 'news' VALUES ('90', 'content90', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', '1', 'title90', '求职招聘', '90');
INSERT INTO 'news' VALUES ('91', 'content91', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', '1', 'title91', '求职招聘', '91');
INSERT INTO 'news' VALUES ('92', 'content92', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', '1', 'title92', '求职招聘', '92');
INSERT INTO 'news' VALUES ('93', 'content93', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', '1', 'title93', '求职招聘', '93');
INSERT INTO 'news' VALUES ('94', 'content94', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', '1', 'title94', '思源创业', '94');
INSERT INTO 'news' VALUES ('95', 'content95', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', '1', 'title95', '投融资', '95');
INSERT INTO 'news' VALUES ('96', 'content96', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', '1', 'title96', '投融资', '96');
INSERT INTO 'news' VALUES ('97', 'content97', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic1.jpg', '1', '1', 'title97', '校友企业', '97');
INSERT INTO 'news' VALUES ('98', 'content98', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic3.jpg', '1', '1', 'title98', '求职招聘', '98');
INSERT INTO 'news' VALUES ('99', 'content99', '2015-08-29 11:13:54', 'uploadfiles/20150811/20150811111719207/pic2.jpg', '1', '1', 'title99', '求职招聘', '99');

-- ----------------------------
-- Table structure for 'newscmt'
-- ----------------------------
DROP TABLE IF EXISTS 'newscmt';
CREATE TABLE 'newscmt' (
  'id' varchar(255) NOT NULL COMMENT '编号',
  'content' varchar(255) DEFAULT NULL COMMENT '内容',
  'c_time' datetime DEFAULT NULL COMMENT '创建时间',
  'likecount' int(11) DEFAULT NULL COMMENT '点赞次数',
  'comment_userid' varchar(255) DEFAULT NULL COMMENT '评论者编号',
  'news_id' varchar(255) DEFAULT NULL COMMENT '资讯编号',
  'parent_id' varchar(255) DEFAULT NULL COMMENT '父级评论编号',
  PRIMARY KEY ('id'),
  KEY 'FK_oaw43xcpufpolmxgs0lok2djk' ('comment_userid'),
  KEY 'FK_gt5s5n33au25uhna8itk25krp' ('news_id'),
  KEY 'FK_6i3rsgkiv3qndas7sc5lrh9r8' ('parent_id'),
  CONSTRAINT 'FK_6i3rsgkiv3qndas7sc5lrh9r8' FOREIGN KEY ('parent_id') REFERENCES 'newscmt' ('id'),
  CONSTRAINT 'FK_gt5s5n33au25uhna8itk25krp' FOREIGN KEY ('news_id') REFERENCES 'news' ('id'),
  CONSTRAINT 'FK_oaw43xcpufpolmxgs0lok2djk' FOREIGN KEY ('comment_userid') REFERENCES 'user' ('id')
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of newscmt
-- ----------------------------
INSERT INTO 'newscmt' VALUES ('0', 'content0', '2015-08-29 11:13:54', '93', '14', '45', null);
INSERT INTO 'newscmt' VALUES ('1', 'content1', '2015-08-29 11:13:54', '27', '69', '56', null);
INSERT INTO 'newscmt' VALUES ('11', 'content11', '2015-08-29 11:13:54', '58', '67', '26', '3');
INSERT INTO 'newscmt' VALUES ('12', 'content12', '2015-08-29 11:13:54', '95', '3', '0', '5');
INSERT INTO 'newscmt' VALUES ('13', 'content13', '2015-08-29 11:13:54', '42', '88', '77', '7');
INSERT INTO 'newscmt' VALUES ('14', 'content14', '2015-08-29 11:13:55', '18', '12', '64', '2');
INSERT INTO 'newscmt' VALUES ('15', 'content15', '2015-08-29 11:13:55', '73', '59', '0', '5');
INSERT INTO 'newscmt' VALUES ('16', 'content16', '2015-08-29 11:13:55', '37', '93', '26', '3');
INSERT INTO 'newscmt' VALUES ('17', 'content17', '2015-08-29 11:13:55', '0', '1', '26', '3');
INSERT INTO 'newscmt' VALUES ('18', 'content18', '2015-08-29 11:13:55', '37', '66', '45', '0');
INSERT INTO 'newscmt' VALUES ('19', 'content19', '2015-08-29 11:13:55', '23', '36', '77', '7');
INSERT INTO 'newscmt' VALUES ('2', 'content2', '2015-08-29 11:13:54', '11', '7', '64', null);
INSERT INTO 'newscmt' VALUES ('20', 'content20', '2015-08-29 11:13:55', '76', '6', '56', '1');
INSERT INTO 'newscmt' VALUES ('21', 'content21', '2015-08-29 11:13:55', '10', '56', '63', '8');
INSERT INTO 'newscmt' VALUES ('22', 'content22', '2015-08-29 11:13:55', '87', '63', '64', '2');
INSERT INTO 'newscmt' VALUES ('23', 'content23', '2015-08-29 11:13:55', '5', '69', '26', '3');
INSERT INTO 'newscmt' VALUES ('24', 'content24', '2015-08-29 11:13:55', '61', '67', '53', '6');
INSERT INTO 'newscmt' VALUES ('25', 'content25', '2015-08-29 11:13:55', '75', '84', '26', '3');
INSERT INTO 'newscmt' VALUES ('26', 'content26', '2015-08-29 11:13:55', '33', '87', '53', '6');
INSERT INTO 'newscmt' VALUES ('27', 'content27', '2015-08-29 11:13:55', '56', '86', '26', '3');
INSERT INTO 'newscmt' VALUES ('28', 'content28', '2015-08-29 11:13:55', '18', '0', '53', '6');
INSERT INTO 'newscmt' VALUES ('29', 'content29', '2015-08-29 11:13:55', '29', '64', '64', '2');
INSERT INTO 'newscmt' VALUES ('2c9090074f77741e014f777440d90008', '评论2', '2015-08-29 11:15:52', '0', '3', '0', null);
INSERT INTO 'newscmt' VALUES ('2c9090074f77741e014f777440e10009', '评论2的子评论', '2015-08-29 11:15:52', '0', '6', '0', '2c9090074f77741e014f777440d90008');
INSERT INTO 'newscmt' VALUES ('2c9090074f7774e3014f78be09aa0000', null, null, null, null, null, null);
INSERT INTO 'newscmt' VALUES ('2c9090074f7774e3014f78be40950001', null, null, null, null, null, null);
INSERT INTO 'newscmt' VALUES ('2c9090074f7774e3014f78cc5f500002', null, null, null, null, '1', null);
INSERT INTO 'newscmt' VALUES ('2c9090074f7774e3014f78ccc55f0003', 'zzzzz', '2015-08-29 17:32:10', '2', '1', '1', '2c9090074f7774e3014f78cc5f500002');
INSERT INTO 'newscmt' VALUES ('2c9090074f78e0e5014f78e0fb2e0007', '评论2', '2015-08-29 17:54:14', '0', '3', '0', null);
INSERT INTO 'newscmt' VALUES ('2c9090074f78e0e5014f78e0fb340008', '评论2的子评论', '2015-08-29 17:54:14', '0', '6', '0', '2c9090074f78e0e5014f78e0fb2e0007');
INSERT INTO 'newscmt' VALUES ('2c9090074f78e11c014f78e12eb00007', '评论2', '2015-08-29 17:54:28', '0', '3', '0', null);
INSERT INTO 'newscmt' VALUES ('2c9090074f78e11c014f78e12eb50008', '评论2的子评论', '2015-08-29 17:54:28', '0', '6', '0', '2c9090074f78e11c014f78e12eb00007');
INSERT INTO 'newscmt' VALUES ('2c9090074f81561a014f8156318f0007', '评论2', '2015-08-31 09:19:14', '0', '3', '0', null);
INSERT INTO 'newscmt' VALUES ('2c9090074f81561a014f8156319e0008', '评论2的子评论', '2015-08-31 09:19:14', '0', '6', '0', '2c9090074f81561a014f8156318f0007');
INSERT INTO 'newscmt' VALUES ('2c9090074f8156d4014f81a9d2d10008', 'ccccccccccccc', '2015-08-31 10:50:35', '2', '1', '1', '2c9090074f7774e3014f78ccc55f0003');
INSERT INTO 'newscmt' VALUES ('2c9090074f8156d4014f81ab3caf0009', 'aaaa', '2015-08-31 10:52:07', '2', '1', '1', '2c9090074f8156d4014f81a9d2d10008');
INSERT INTO 'newscmt' VALUES ('2c9090074f81d0a7014f81d0bef50007', '评论2', '2015-08-31 11:33:05', '0', '3', '0', null);
INSERT INTO 'newscmt' VALUES ('2c9090074f81d0a7014f81d0befe0008', '评论2的子评论', '2015-08-31 11:33:05', '0', '6', '0', '2c9090074f81d0a7014f81d0bef50007');
INSERT INTO 'newscmt' VALUES ('2c9090074f82634b014f82635eb50007', '评论2', '2015-08-31 14:13:15', '0', '3', '0', null);
INSERT INTO 'newscmt' VALUES ('2c9090074f82634b014f82635ebd0008', '评论2的子评论', '2015-08-31 14:13:15', '0', '6', '0', '2c9090074f82634b014f82635eb50007');
INSERT INTO 'newscmt' VALUES ('2c9090074f82b966014f82b97d100007', '评论2', '2015-08-31 15:47:18', '0', '3', '0', null);
INSERT INTO 'newscmt' VALUES ('2c9090074f82b966014f82b97d150008', '评论2的子评论', '2015-08-31 15:47:18', '0', '6', '0', '2c9090074f82b966014f82b97d100007');
INSERT INTO 'newscmt' VALUES ('2c9090074f82f4d1014f82f4e82f0007', '评论2', '2015-08-31 16:52:12', '0', '3', '0', null);
INSERT INTO 'newscmt' VALUES ('2c9090074f82f4d1014f82f4e8350008', '评论2的子评论', '2015-08-31 16:52:12', '0', '6', '0', '2c9090074f82f4d1014f82f4e82f0007');
INSERT INTO 'newscmt' VALUES ('2c9090074f831293014f8312aa8c0007', '评论2', '2015-08-31 17:24:43', '0', '3', '0', null);
INSERT INTO 'newscmt' VALUES ('2c9090074f831293014f8312aa920008', '评论2的子评论', '2015-08-31 17:24:43', '0', '6', '0', '2c9090074f831293014f8312aa8c0007');
INSERT INTO 'newscmt' VALUES ('3', 'content3', '2015-08-29 11:13:54', '33', '25', '26', null);
INSERT INTO 'newscmt' VALUES ('30', 'content30', '2015-08-29 11:13:55', '9', '57', '26', '3');
INSERT INTO 'newscmt' VALUES ('31', 'content31', '2015-08-29 11:13:55', '30', '98', '53', '4');
INSERT INTO 'newscmt' VALUES ('32', 'content32', '2015-08-29 11:13:55', '41', '5', '0', '5');
INSERT INTO 'newscmt' VALUES ('33', 'content33', '2015-08-29 11:13:55', '34', '89', '64', '2');
INSERT INTO 'newscmt' VALUES ('34', 'content34', '2015-08-29 11:13:55', '58', '10', '26', '3');
INSERT INTO 'newscmt' VALUES ('35', 'content35', '2015-08-29 11:13:55', '93', '69', '14', '9');
INSERT INTO 'newscmt' VALUES ('36', 'content36', '2015-08-29 11:13:55', '0', '52', '53', '6');
INSERT INTO 'newscmt' VALUES ('37', 'content37', '2015-08-29 11:13:55', '34', '91', '26', '3');
INSERT INTO 'newscmt' VALUES ('38', 'content38', '2015-08-29 11:13:55', '33', '66', '45', '0');
INSERT INTO 'newscmt' VALUES ('39', 'content39', '2015-08-29 11:13:55', '50', '17', '63', '8');
INSERT INTO 'newscmt' VALUES ('4', 'content4', '2015-08-29 11:13:54', '83', '43', '53', null);
INSERT INTO 'newscmt' VALUES ('40', 'content40', '2015-08-29 11:13:55', '59', '23', '26', '3');
INSERT INTO 'newscmt' VALUES ('41', 'content41', '2015-08-29 11:13:55', '95', '2', '26', '3');
INSERT INTO 'newscmt' VALUES ('42', 'content42', '2015-08-29 11:13:55', '75', '10', '53', '6');
INSERT INTO 'newscmt' VALUES ('43', 'content43', '2015-08-29 11:13:55', '35', '45', '26', '3');
INSERT INTO 'newscmt' VALUES ('44', 'content44', '2015-08-29 11:13:55', '78', '84', '26', '3');
INSERT INTO 'newscmt' VALUES ('45', 'content45', '2015-08-29 11:13:55', '78', '59', '63', '8');
INSERT INTO 'newscmt' VALUES ('46', 'content46', '2015-08-29 11:13:55', '30', '60', '56', '1');
INSERT INTO 'newscmt' VALUES ('47', 'content47', '2015-08-29 11:13:55', '14', '83', '26', '3');
INSERT INTO 'newscmt' VALUES ('48', 'content48', '2015-08-29 11:13:55', '60', '50', '26', '3');
INSERT INTO 'newscmt' VALUES ('49', 'content49', '2015-08-29 11:13:55', '34', '53', '63', '8');
INSERT INTO 'newscmt' VALUES ('5', 'content5', '2015-08-29 11:13:54', '46', '18', '0', null);
INSERT INTO 'newscmt' VALUES ('50', 'content50', '2015-08-29 11:13:55', '23', '85', '26', '3');
INSERT INTO 'newscmt' VALUES ('51', 'content51', '2015-08-29 11:13:55', '6', '27', '56', '1');
INSERT INTO 'newscmt' VALUES ('52', 'content52', '2015-08-29 11:13:55', '24', '90', '63', '8');
INSERT INTO 'newscmt' VALUES ('53', 'content53', '2015-08-29 11:13:55', '37', '91', '0', '5');
INSERT INTO 'newscmt' VALUES ('54', 'content54', '2015-08-29 11:13:55', '15', '67', '77', '7');
INSERT INTO 'newscmt' VALUES ('55', 'content55', '2015-08-29 11:13:55', '37', '10', '56', '1');
INSERT INTO 'newscmt' VALUES ('56', 'content56', '2015-08-29 11:13:55', '14', '7', '63', '8');
INSERT INTO 'newscmt' VALUES ('57', 'content57', '2015-08-29 11:13:55', '97', '97', '14', '9');
INSERT INTO 'newscmt' VALUES ('58', 'content58', '2015-08-29 11:13:55', '43', '48', '56', '1');
INSERT INTO 'newscmt' VALUES ('59', 'content59', '2015-08-29 11:13:55', '10', '62', '63', '8');
INSERT INTO 'newscmt' VALUES ('6', 'content6', '2015-08-29 11:13:54', '29', '42', '53', null);
INSERT INTO 'newscmt' VALUES ('60', 'content60', '2015-08-29 11:13:55', '69', '14', '26', '3');
INSERT INTO 'newscmt' VALUES ('61', 'content61', '2015-08-29 11:13:55', '18', '32', '0', '5');
INSERT INTO 'newscmt' VALUES ('62', 'content62', '2015-08-29 11:13:55', '0', '32', '56', '1');
INSERT INTO 'newscmt' VALUES ('63', 'content63', '2015-08-29 11:13:55', '60', '91', '63', '8');
INSERT INTO 'newscmt' VALUES ('64', 'content64', '2015-08-29 11:13:55', '49', '25', '63', '8');
INSERT INTO 'newscmt' VALUES ('65', 'content65', '2015-08-29 11:13:55', '83', '24', '64', '2');
INSERT INTO 'newscmt' VALUES ('66', 'content66', '2015-08-29 11:13:55', '76', '72', '0', '5');
INSERT INTO 'newscmt' VALUES ('67', 'content67', '2015-08-29 11:13:55', '42', '8', '45', '0');
INSERT INTO 'newscmt' VALUES ('68', 'content68', '2015-08-29 11:13:55', '60', '88', '63', '8');
INSERT INTO 'newscmt' VALUES ('69', 'content69', '2015-08-29 11:13:55', '7', '90', '53', '4');
INSERT INTO 'newscmt' VALUES ('7', 'content7', '2015-08-29 11:13:54', '69', '4', '77', null);
INSERT INTO 'newscmt' VALUES ('70', 'content70', '2015-08-29 11:13:55', '0', '93', '0', '5');
INSERT INTO 'newscmt' VALUES ('71', 'content71', '2015-08-29 11:13:55', '59', '35', '14', '9');
INSERT INTO 'newscmt' VALUES ('72', 'content72', '2015-08-29 11:13:55', '1', '86', '26', '3');
INSERT INTO 'newscmt' VALUES ('73', 'content73', '2015-08-29 11:13:55', '29', '64', '53', '6');
INSERT INTO 'newscmt' VALUES ('74', 'content74', '2015-08-29 11:13:55', '24', '51', '77', '7');
INSERT INTO 'newscmt' VALUES ('75', 'content75', '2015-08-29 11:13:55', '3', '93', '64', '2');
INSERT INTO 'newscmt' VALUES ('76', 'content76', '2015-08-29 11:13:55', '98', '85', '64', '2');
INSERT INTO 'newscmt' VALUES ('77', 'content77', '2015-08-29 11:13:55', '74', '52', '64', '2');
INSERT INTO 'newscmt' VALUES ('78', 'content78', '2015-08-29 11:13:55', '67', '75', '64', '2');
INSERT INTO 'newscmt' VALUES ('79', 'content79', '2015-08-29 11:13:55', '61', '66', '14', '9');
INSERT INTO 'newscmt' VALUES ('8', 'content8', '2015-08-29 11:13:54', '16', '73', '63', null);
INSERT INTO 'newscmt' VALUES ('80', 'content80', '2015-08-29 11:13:55', '49', '8', '77', '7');
INSERT INTO 'newscmt' VALUES ('81', 'content81', '2015-08-29 11:13:55', '15', '84', '14', '9');
INSERT INTO 'newscmt' VALUES ('82', 'content82', '2015-08-29 11:13:55', '11', '94', '26', '3');
INSERT INTO 'newscmt' VALUES ('83', 'content83', '2015-08-29 11:13:55', '66', '69', '56', '1');
INSERT INTO 'newscmt' VALUES ('84', 'content84', '2015-08-29 11:13:55', '84', '59', '14', '9');
INSERT INTO 'newscmt' VALUES ('85', 'content85', '2015-08-29 11:13:55', '28', '79', '0', '5');
INSERT INTO 'newscmt' VALUES ('86', 'content86', '2015-08-29 11:13:55', '53', '92', '56', '1');
INSERT INTO 'newscmt' VALUES ('87', 'content87', '2015-08-29 11:13:55', '78', '97', '0', '5');
INSERT INTO 'newscmt' VALUES ('88', 'content88', '2015-08-29 11:13:55', '99', '41', '53', '4');
INSERT INTO 'newscmt' VALUES ('89', 'content89', '2015-08-29 11:13:55', '16', '90', '53', '6');
INSERT INTO 'newscmt' VALUES ('9', 'content9', '2015-08-29 11:13:54', '38', '70', '14', null);
INSERT INTO 'newscmt' VALUES ('90', 'content90', '2015-08-29 11:13:55', '51', '32', '45', '0');
INSERT INTO 'newscmt' VALUES ('91', 'content91', '2015-08-29 11:13:55', '81', '27', '64', '2');
INSERT INTO 'newscmt' VALUES ('92', 'content92', '2015-08-29 11:13:55', '33', '34', '63', '8');
INSERT INTO 'newscmt' VALUES ('93', 'content93', '2015-08-29 11:13:55', '24', '33', '56', '1');
INSERT INTO 'newscmt' VALUES ('94', 'content94', '2015-08-29 11:13:55', '23', '53', '77', '7');
INSERT INTO 'newscmt' VALUES ('95', 'content95', '2015-08-29 11:13:55', '84', '37', '56', '1');
INSERT INTO 'newscmt' VALUES ('96', 'content96', '2015-08-29 11:13:55', '4', '63', '53', '4');
INSERT INTO 'newscmt' VALUES ('97', 'content97', '2015-08-29 11:13:55', '11', '81', '0', '5');
INSERT INTO 'newscmt' VALUES ('98', 'content98', '2015-08-29 11:13:55', '19', '66', '53', '6');
INSERT INTO 'newscmt' VALUES ('99', 'content99', '2015-08-29 11:13:55', '65', '84', '53', '6');

-- ----------------------------
-- Table structure for 'user'
-- ----------------------------
DROP TABLE IF EXISTS 'user';
CREATE TABLE 'user' (
  'id' varchar(255) NOT NULL COMMENT '编号',
  'c_time' datetime DEFAULT NULL COMMENT '创建时间',
  'password' varchar(32) DEFAULT NULL COMMENT '密码',
  'state' int(11) DEFAULT NULL COMMENT '状态',
  'username' varchar(32) DEFAULT NULL COMMENT '用户名',
  PRIMARY KEY ('id')
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO 'user' VALUES ('0', '2015-08-29 11:13:54', 'pass0', '1', '1111110');
INSERT INTO 'user' VALUES ('1', '2015-08-29 11:13:54', 'pass1', '1', '1111111');
INSERT INTO 'user' VALUES ('10', '2015-08-29 11:13:54', 'pass10', '1', '11111110');
INSERT INTO 'user' VALUES ('11', '2015-08-29 11:13:54', 'pass11', '1', '11111111');
INSERT INTO 'user' VALUES ('12', '2015-08-29 11:13:54', 'pass12', '1', '11111112');
INSERT INTO 'user' VALUES ('13', '2015-08-29 11:13:54', 'pass13', '1', '11111113');
INSERT INTO 'user' VALUES ('14', '2015-08-29 11:13:54', 'pass14', '1', '11111114');
INSERT INTO 'user' VALUES ('15', '2015-08-29 11:13:54', 'pass15', '1', '11111115');
INSERT INTO 'user' VALUES ('16', '2015-08-29 11:13:54', 'pass16', '1', '11111116');
INSERT INTO 'user' VALUES ('17', '2015-08-29 11:13:54', 'pass17', '1', '11111117');
INSERT INTO 'user' VALUES ('18', '2015-08-29 11:13:54', 'pass18', '1', '11111118');
INSERT INTO 'user' VALUES ('19', '2015-08-29 11:13:54', 'pass19', '1', '11111119');
INSERT INTO 'user' VALUES ('2', '2015-08-29 11:13:54', 'pass2', '1', '1111112');
INSERT INTO 'user' VALUES ('20', '2015-08-29 11:13:54', 'pass20', '1', '11111120');
INSERT INTO 'user' VALUES ('21', '2015-08-29 11:13:54', 'pass21', '1', '11111121');
INSERT INTO 'user' VALUES ('22', '2015-08-29 11:13:54', 'pass22', '1', '11111122');
INSERT INTO 'user' VALUES ('23', '2015-08-29 11:13:54', 'pass23', '1', '11111123');
INSERT INTO 'user' VALUES ('24', '2015-08-29 11:13:54', 'pass24', '1', '11111124');
INSERT INTO 'user' VALUES ('25', '2015-08-29 11:13:54', 'pass25', '1', '11111125');
INSERT INTO 'user' VALUES ('26', '2015-08-29 11:13:54', 'pass26', '1', '11111126');
INSERT INTO 'user' VALUES ('27', '2015-08-29 11:13:54', 'pass27', '1', '11111127');
INSERT INTO 'user' VALUES ('28', '2015-08-29 11:13:54', 'pass28', '1', '11111128');
INSERT INTO 'user' VALUES ('29', '2015-08-29 11:13:54', 'pass29', '1', '11111129');
INSERT INTO 'user' VALUES ('3', '2015-08-29 11:13:54', 'pass3', '1', '1111113');
INSERT INTO 'user' VALUES ('30', '2015-08-29 11:13:54', 'pass30', '1', '11111130');
INSERT INTO 'user' VALUES ('31', '2015-08-29 11:13:54', 'pass31', '1', '11111131');
INSERT INTO 'user' VALUES ('32', '2015-08-29 11:13:54', 'pass32', '1', '11111132');
INSERT INTO 'user' VALUES ('33', '2015-08-29 11:13:54', 'pass33', '1', '11111133');
INSERT INTO 'user' VALUES ('34', '2015-08-29 11:13:54', 'pass34', '1', '11111134');
INSERT INTO 'user' VALUES ('35', '2015-08-29 11:13:54', 'pass35', '1', '11111135');
INSERT INTO 'user' VALUES ('36', '2015-08-29 11:13:54', 'pass36', '1', '11111136');
INSERT INTO 'user' VALUES ('37', '2015-08-29 11:13:54', 'pass37', '1', '11111137');
INSERT INTO 'user' VALUES ('38', '2015-08-29 11:13:54', 'pass38', '1', '11111138');
INSERT INTO 'user' VALUES ('39', '2015-08-29 11:13:54', 'pass39', '1', '11111139');
INSERT INTO 'user' VALUES ('4', '2015-08-29 11:13:54', 'pass4', '1', '1111114');
INSERT INTO 'user' VALUES ('40', '2015-08-29 11:13:54', 'pass40', '1', '11111140');
INSERT INTO 'user' VALUES ('41', '2015-08-29 11:13:54', 'pass41', '1', '11111141');
INSERT INTO 'user' VALUES ('42', '2015-08-29 11:13:54', 'pass42', '1', '11111142');
INSERT INTO 'user' VALUES ('43', '2015-08-29 11:13:54', 'pass43', '1', '11111143');
INSERT INTO 'user' VALUES ('44', '2015-08-29 11:13:54', 'pass44', '1', '11111144');
INSERT INTO 'user' VALUES ('45', '2015-08-29 11:13:54', 'pass45', '1', '11111145');
INSERT INTO 'user' VALUES ('46', '2015-08-29 11:13:54', 'pass46', '1', '11111146');
INSERT INTO 'user' VALUES ('47', '2015-08-29 11:13:54', 'pass47', '1', '11111147');
INSERT INTO 'user' VALUES ('48', '2015-08-29 11:13:54', 'pass48', '1', '11111148');
INSERT INTO 'user' VALUES ('49', '2015-08-29 11:13:54', 'pass49', '1', '11111149');
INSERT INTO 'user' VALUES ('5', '2015-08-29 11:13:54', 'pass5', '1', '1111115');
INSERT INTO 'user' VALUES ('50', '2015-08-29 11:13:54', 'pass50', '1', '11111150');
INSERT INTO 'user' VALUES ('51', '2015-08-29 11:13:54', 'pass51', '1', '11111151');
INSERT INTO 'user' VALUES ('52', '2015-08-29 11:13:54', 'pass52', '1', '11111152');
INSERT INTO 'user' VALUES ('53', '2015-08-29 11:13:54', 'pass53', '1', '11111153');
INSERT INTO 'user' VALUES ('54', '2015-08-29 11:13:54', 'pass54', '1', '11111154');
INSERT INTO 'user' VALUES ('55', '2015-08-29 11:13:54', 'pass55', '1', '11111155');
INSERT INTO 'user' VALUES ('56', '2015-08-29 11:13:54', 'pass56', '1', '11111156');
INSERT INTO 'user' VALUES ('57', '2015-08-29 11:13:54', 'pass57', '1', '11111157');
INSERT INTO 'user' VALUES ('58', '2015-08-29 11:13:54', 'pass58', '1', '11111158');
INSERT INTO 'user' VALUES ('59', '2015-08-29 11:13:54', 'pass59', '1', '11111159');
INSERT INTO 'user' VALUES ('6', '2015-08-29 11:13:54', 'pass6', '1', '1111116');
INSERT INTO 'user' VALUES ('60', '2015-08-29 11:13:54', 'pass60', '1', '11111160');
INSERT INTO 'user' VALUES ('61', '2015-08-29 11:13:54', 'pass61', '1', '11111161');
INSERT INTO 'user' VALUES ('62', '2015-08-29 11:13:54', 'pass62', '1', '11111162');
INSERT INTO 'user' VALUES ('63', '2015-08-29 11:13:54', 'pass63', '1', '11111163');
INSERT INTO 'user' VALUES ('64', '2015-08-29 11:13:54', 'pass64', '1', '11111164');
INSERT INTO 'user' VALUES ('65', '2015-08-29 11:13:54', 'pass65', '1', '11111165');
INSERT INTO 'user' VALUES ('66', '2015-08-29 11:13:54', 'pass66', '1', '11111166');
INSERT INTO 'user' VALUES ('67', '2015-08-29 11:13:54', 'pass67', '1', '11111167');
INSERT INTO 'user' VALUES ('68', '2015-08-29 11:13:54', 'pass68', '1', '11111168');
INSERT INTO 'user' VALUES ('69', '2015-08-29 11:13:54', 'pass69', '1', '11111169');
INSERT INTO 'user' VALUES ('7', '2015-08-29 11:13:54', 'pass7', '1', '1111117');
INSERT INTO 'user' VALUES ('70', '2015-08-29 11:13:54', 'pass70', '1', '11111170');
INSERT INTO 'user' VALUES ('71', '2015-08-29 11:13:54', 'pass71', '1', '11111171');
INSERT INTO 'user' VALUES ('72', '2015-08-29 11:13:54', 'pass72', '1', '11111172');
INSERT INTO 'user' VALUES ('73', '2015-08-29 11:13:54', 'pass73', '1', '11111173');
INSERT INTO 'user' VALUES ('74', '2015-08-29 11:13:54', 'pass74', '1', '11111174');
INSERT INTO 'user' VALUES ('75', '2015-08-29 11:13:54', 'pass75', '1', '11111175');
INSERT INTO 'user' VALUES ('76', '2015-08-29 11:13:54', 'pass76', '1', '11111176');
INSERT INTO 'user' VALUES ('77', '2015-08-29 11:13:54', 'pass77', '1', '11111177');
INSERT INTO 'user' VALUES ('78', '2015-08-29 11:13:54', 'pass78', '1', '11111178');
INSERT INTO 'user' VALUES ('79', '2015-08-29 11:13:54', 'pass79', '1', '11111179');
INSERT INTO 'user' VALUES ('8', '2015-08-29 11:13:54', 'pass8', '1', '1111118');
INSERT INTO 'user' VALUES ('80', '2015-08-29 11:13:54', 'pass80', '1', '11111180');
INSERT INTO 'user' VALUES ('81', '2015-08-29 11:13:54', 'pass81', '1', '11111181');
INSERT INTO 'user' VALUES ('82', '2015-08-29 11:13:54', 'pass82', '1', '11111182');
INSERT INTO 'user' VALUES ('83', '2015-08-29 11:13:54', 'pass83', '1', '11111183');
INSERT INTO 'user' VALUES ('84', '2015-08-29 11:13:54', 'pass84', '1', '11111184');
INSERT INTO 'user' VALUES ('85', '2015-08-29 11:13:54', 'pass85', '1', '11111185');
INSERT INTO 'user' VALUES ('86', '2015-08-29 11:13:54', 'pass86', '1', '11111186');
INSERT INTO 'user' VALUES ('87', '2015-08-29 11:13:54', 'pass87', '1', '11111187');
INSERT INTO 'user' VALUES ('88', '2015-08-29 11:13:54', 'pass88', '1', '11111188');
INSERT INTO 'user' VALUES ('89', '2015-08-29 11:13:54', 'pass89', '1', '11111189');
INSERT INTO 'user' VALUES ('9', '2015-08-29 11:13:54', 'pass9', '1', '1111119');
INSERT INTO 'user' VALUES ('90', '2015-08-29 11:13:54', 'pass90', '1', '11111190');
INSERT INTO 'user' VALUES ('91', '2015-08-29 11:13:54', 'pass91', '1', '11111191');
INSERT INTO 'user' VALUES ('92', '2015-08-29 11:13:54', 'pass92', '1', '11111192');
INSERT INTO 'user' VALUES ('93', '2015-08-29 11:13:54', 'pass93', '1', '11111193');
INSERT INTO 'user' VALUES ('94', '2015-08-29 11:13:54', 'pass94', '1', '11111194');
INSERT INTO 'user' VALUES ('95', '2015-08-29 11:13:54', 'pass95', '1', '11111195');
INSERT INTO 'user' VALUES ('96', '2015-08-29 11:13:54', 'pass96', '1', '11111196');
INSERT INTO 'user' VALUES ('97', '2015-08-29 11:13:54', 'pass97', '1', '11111197');
INSERT INTO 'user' VALUES ('98', '2015-08-29 11:13:54', 'pass98', '1', '11111198');
INSERT INTO 'user' VALUES ('99', '2015-08-29 11:13:54', 'pass99', '1', '11111199');

-- ----------------------------
-- Table structure for 'verifycode'
-- ----------------------------
DROP TABLE IF EXISTS 'verifycode';
CREATE TABLE 'verifycode' (
  'id' varchar(255) NOT NULL COMMENT '编号',
  'c_time' datetime DEFAULT NULL COMMENT '创建时间',
  'phone' varchar(16) DEFAULT NULL COMMENT '电话',
  'verifycode' varchar(8) DEFAULT NULL COMMENT '验证码',
  PRIMARY KEY ('id')
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of verifycode
-- ----------------------------
INSERT INTO 'verifycode' VALUES ('2c9090074f77741e014f77744136000a', '2015-08-29 11:15:52', '888', '612224');
INSERT INTO 'verifycode' VALUES ('2c9090074f77741e014f777441ed000b', '2015-08-29 11:15:52', '111111', '935964');
INSERT INTO 'verifycode' VALUES ('2c9090074f78e0e5014f78e0fb820009', '2015-08-29 17:54:15', '888', '445421');
INSERT INTO 'verifycode' VALUES ('2c9090074f78e0e5014f78e0fc2b000a', '2015-08-29 17:54:15', '111111', '813184');
INSERT INTO 'verifycode' VALUES ('2c9090074f78e11c014f78e12eef0009', '2015-08-29 17:54:28', '888', '632413');
INSERT INTO 'verifycode' VALUES ('2c9090074f78e11c014f78e12f85000a', '2015-08-29 17:54:28', '111111', '103140');
INSERT INTO 'verifycode' VALUES ('2c9090074f81561a014f815631de0009', '2015-08-31 09:19:14', '888', '543147');
INSERT INTO 'verifycode' VALUES ('2c9090074f81561a014f81563281000a', '2015-08-31 09:19:14', '111111', '856222');
INSERT INTO 'verifycode' VALUES ('2c9090074f81d0a7014f81d0bf490009', '2015-08-31 11:33:05', '888', '142726');
INSERT INTO 'verifycode' VALUES ('2c9090074f81d0a7014f81d0c079000a', '2015-08-31 11:33:06', '111111', '297700');
INSERT INTO 'verifycode' VALUES ('2c9090074f82634b014f82635f0f0009', '2015-08-31 14:13:15', '888', '281555');
INSERT INTO 'verifycode' VALUES ('2c9090074f82634b014f82636054000a', '2015-08-31 14:13:15', '111111', '715673');
INSERT INTO 'verifycode' VALUES ('2c9090074f82b966014f82b97d500009', '2015-08-31 15:47:18', '888', '529313');
INSERT INTO 'verifycode' VALUES ('2c9090074f82b966014f82b97e8f000a', '2015-08-31 15:47:19', '111111', '653881');
INSERT INTO 'verifycode' VALUES ('2c9090074f82f4d1014f82f4e87c0009', '2015-08-31 16:52:13', '888', '167449');
INSERT INTO 'verifycode' VALUES ('2c9090074f82f4d1014f82f4e9a7000a', '2015-08-31 16:52:13', '111111', '829753');
INSERT INTO 'verifycode' VALUES ('2c9090074f831293014f8312aacb0009', '2015-08-31 17:24:43', '888', '561774');
INSERT INTO 'verifycode' VALUES ('2c9090074f831293014f8312ac03000a', '2015-08-31 17:24:43', '111111', '259047');
