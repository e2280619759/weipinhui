-- 设置客户端连接服务器短的编码
set names utf8;
-- 丢弃数据库如果存在
drop database if exists wph;
-- 创建新的数据库,设置储存的编码格式
create database wph charset=utf8;
-- 进入数据库
use wph;
-- 创建用户表
create table user(
 id  mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '作者ID,主键且自增',
 uname varchar(30) NOT NULL COMMENT '用户名,唯一',
 upwd varchar(32) NOT NULL COMMENT '密码,MD5',
 email  varchar(34) NOT NULL COMMENT '邮箱',
 phone  varchar(32)  COMMENT '电话',
 avatar  varchar(30) DEFAULT NULL,
 gender int,
 PRIMARY KEY (`id`),
  UNIQUE KEY `uname` (`uname`)
);
#保存用户数据
insert into user values(1,'ztf123','123456','2280619759@qq.com','18792976675',null,0);
-- 创建每日必看表格
create table daily(
  eid int NOT null ,
  bg varchar(50) NOT NULL DEFAULT 'unnamed.jpg' COMMENT '大背景',
  bigImg varchar(150) NOT NULL DEFAULT 'unnamed.jpg' COMMENT '中背景',
  ingImg varchar(140) NOT NULL DEFAULT 'unnamed.jpg' COMMENT '小背景',
  smallImg varchar(130) NOT NULL DEFAULT 'unnamed.jpg' COMMENT '小图片',
  quantity varchar(10),
  sele varchar(10),
  price varchar(10)
);
-- 保存每日必看专区数据
insert into daily values("1","../assets/img/1607914975921_1020x582_90.jpg","../assets/img/82f89a45-1626-4a64-a0f9-66bf69e75b53_420_531_292x368_90.jpg","../assets/img/1599118052991_1140x684_90.jpg","
../assets/img/primary_136x68_90.png","1419","特卖价","389");
insert into daily values("2","../assets/img/1607914975921_1020x582_90.jpg","../assets/img/82f89a45-1626-4a64-a0f9-66bf69e75b53_420_531_292x368_90.jpg","../assets/img/1599118052991_1140x684_90.jpg","
../assets/img/primary_136x68_90.png","1419","特卖价","389");
insert into daily values("3","../assets/img/1607914975921_1020x582_90.jpg","../assets/img/82f89a45-1626-4a64-a0f9-66bf69e75b53_420_531_292x368_90.jpg","../assets/img/1599118052991_1140x684_90.jpg","
../assets/img/primary_136x68_90.png","1419","特卖价","389");
insert into daily values("4","../assets/img/1599118052991_1140x684_90.jpg","../assets/img/xie.png","../assets/img/1599118382502_204x38_90.png","","","鞋","");
insert into daily values("5","../assets/img/1599185745041_1990x606_90.png","../assets/img/yao.jpg","","","","特卖价","148");
insert into daily values("6","../assets/img/1599185745041_1990x606_90.png","../assets/img/yao.jpg","","","","特卖价","148");
insert into daily values("7","../assets/img/1599185745041_1990x606_90.png","../assets/img/yao.jpg","","","","特卖价","148");
insert into daily values("8","../assets/img/1599185745041_1990x606_90.png","../assets/img/yao.jpg","","","","特卖价","148");
insert into daily values("9","../assets/img/1599185745041_1990x606_90.png","../assets/img/yao.jpg","","","","特卖价","148");
insert into daily values("10","../assets/img/1599185745041_1990x606_90.png","../assets/img/yao.jpg","","","","特卖价","148");
-- 创建主体表格
create table wph_inner(
  id int NOT NULL,
  bg varchar(64),
  tx1 varchar(64),
  tx2 varchar(64),
  num_ber varchar(24),
  da_ta varchar(24)
);
insert into wph_inner values('1',"../assets/img/ias_161787240474957_1135x545_85.jpg","../assets/img/543dc0b6d236ac4832b4844f1dbaa489.jpg","../assets/img/237a7264a2e25ceb2eb7da86391616af.jpg","10.3万人购买","1.3");
insert into wph_inner values('2',"../assets/img/ias_161787240474957_1135x545_85.jpg","../assets/img/543dc0b6d236ac4832b4844f1dbaa489.jpg","../assets/img/237a7264a2e25ceb2eb7da86391616af.jpg","10.3万人购买","1.3");
insert into wph_inner values('3',"../assets/img/ias_161787240474957_1135x545_85.jpg","../assets/img/543dc0b6d236ac4832b4844f1dbaa489.jpg","../assets/img/237a7264a2e25ceb2eb7da86391616af.jpg","10.3万人购买","1.3");
insert into wph_inner values('4',"../assets/img/ias_161787240474957_1135x545_85.jpg","../assets/img/543dc0b6d236ac4832b4844f1dbaa489.jpg","../assets/img/237a7264a2e25ceb2eb7da86391616af.jpg","10.3万人购买","1.3");