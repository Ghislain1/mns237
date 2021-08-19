DROP TABLE IF EXISTS greeting;

CREATE TABLE greeting (
	id serial PRIMARY KEY,
	content VARCHAR ( 50 ) UNIQUE NOT NULL
);

INSERT INTO greeting ( content)
VALUES('Hello world !!');
INSERT INTO greeting ( content)
VALUES('Bonjour le Monde   !!');
INSERT INTO greeting ( content)
VALUES('Hallo die Welt !!');
INSERT INTO greeting ( content)
VALUES('Hallo die Welt 2!!');

DROP TABLE IF EXISTS comments CASCADE;
 create table comments (
 id int8 not null,
 autor varchar(255),
 created_date timestamp,
 email varchar(255),
 msg varchar(255),
 topic_id int8,
 primary key (id)
 );

INSERT INTO Comments(id, autor, email, msg, topic_id) VALUES(1, 'idrice','idrice.tsafouet@yahoo.com','this is the msg test from the api and db1',1);
INSERT INTO Comments(id, autor, email, msg, topic_id) VALUES(2, 'idrice','idrice.tsafouet@yahoo.com','this is the msg test from the api and db2',2);
INSERT INTO Comments(id, autor, email, msg, topic_id) VALUES(3, 'idrice','idrice.tsafouet@yahoo.com','this is the msg test from the api and db3',2);
INSERT INTO Comments(id, autor, email, msg, topic_id) VALUES(4, 'idrice','idrice.tsafouet@yahoo.com','this is the msg test from the api and db4',1);
INSERT INTO Comments(id, autor, email, msg, topic_id) VALUES(5, 'idrice','idrice.tsafouet@yahoo.com','this is the msg test from the api and db5',1);
INSERT INTO Comments(id, autor, email, msg, topic_id) VALUES(6, 'idrice','idrice.tsafouet@yahoo.com','this is the msg test from the api and db6',2);
INSERT INTO Comments(id, autor, email, msg, topic_id) VALUES(7, 'idrice','idrice.tsafouet@yahoo.com','this is the msg test from the api and db7',3);
INSERT INTO Comments(id, autor, email, msg, topic_id) VALUES(8, 'idrice','idrice.tsafouet@yahoo.com','this is the msg test from the api and db8',4);
INSERT INTO Comments(id, autor, email, msg, topic_id) VALUES(9, 'idrice','idrice.tsafouet@yahoo.com','this is the msg test from the api and db8',4);
INSERT INTO Comments(id, autor, email, msg, topic_id) VALUES(10, 'idrice','idrice.tsafouet@yahoo.com','this is the msg test from the api and db8',4);
INSERT INTO Comments(id, autor, email, msg, topic_id) VALUES(11, 'idrice','idrice.tsafouet@yahoo.com','this is the msg test from the api and db8',1);
INSERT INTO Comments(id, autor, email, msg, topic_id) VALUES(12, 'idrice','idrice.tsafouet@yahoo.com','this is the msg test from the api and db8',1);
INSERT INTO Comments(id, autor, email, msg, topic_id) VALUES(13, 'idrice','idrice.tsafouet@yahoo.com','this is the msg test from the api and db8',1);
INSERT INTO Comments(id, autor, email, msg, topic_id) VALUES(14, 'idrice','idrice.tsafouet@yahoo.com','this is the msg test from the api and db8',1);
INSERT INTO Comments(id, autor, email, msg, topic_id) VALUES(15, 'idrice','idrice.tsafouet@yahoo.com','this is the msg test from the api and db8',1);
INSERT INTO Comments(id, autor, email, msg, topic_id) VALUES(16, 'idrice','idrice.tsafouet@yahoo.com','this is the msg test from the api and db8',2);
INSERT INTO Comments(id, autor, email, msg, topic_id) VALUES(17, 'idrice','idrice.tsafouet@yahoo.com','this is the msg test from the api and db8',2);
INSERT INTO Comments(id, autor, email, msg, topic_id) VALUES(18, 'idrice','idrice.tsafouet@yahoo.com','this is the msg test from the api and db8',2);
INSERT INTO Comments(id, autor, email, msg, topic_id) VALUES(19, 'idrice','idrice.tsafouet@yahoo.com','this is the msg test from the api and db8',2);
INSERT INTO Comments(id, autor, email, msg, topic_id) VALUES(20, 'idrice','idrice.tsafouet@yahoo.com','this is the msg test from the api and db8',2);




DROP TABLE IF EXISTS photos CASCADE;
create table photos (
id int8 not null,
alt varchar(255),
published_date timestamp,
src varchar(255),
summary varchar(255),
thumbnail_image_src varchar(255),
primary key (id)
);
INSERT INTO photos VALUES(1,'Description for Image 1','2021/10/10','assets/img/CMR7.jpg','demo image','assets/img/CMR5.jpg');
INSERT INTO photos VALUES(2,'Description for Image 1','2020/10/10','assets/img/bg2.jpg','demo image','assets/img/bg2.jpg');
INSERT INTO photos VALUES(3,'Description for Image 1','2020/10/10','assets/img/CMR3.jpg','demo image','assets/img/CMR3.jpg');
INSERT INTO photos VALUES(4,'Description for Image 1','2010/10/10','assets/img/bg9.jpg','demo image','assets/img/bg9.jpg');
INSERT INTO photos VALUES(5,'Description for Image 1','2010/10/10','assets/img/bg7.jpg','demo image','assets/img/bg7.jpg');
INSERT INTO photos VALUES(6,'Description for Image 1','2010/10/10','assets/img/bg8.jpg','demo image','assets/img/bg8.jpg');
INSERT INTO photos VALUES(7,'Description for Image 1','2010/10/10','assets/img/bg11.jpg','demo image','assets/img/bg11.jpg');
INSERT INTO photos VALUES(8,'Description for Image 1','2010/10/10','assets/img/bg5.jpg','demo image','assets/img/bg5.jpg');
INSERT INTO photos VALUES(9,'Description for Image 1','2010/10/10','assets/img/bg7.jpg','demo image','assets/img/bg7.jpg');
INSERT INTO photos VALUES(10,'Description for Image 1','2010/10/10','assets/img/bg9.jpg','demo image','assets/img/bg9.jpg');

DROP TABLE IF EXISTS products CASCADE;
create table products (
id int8 not null,
category varchar(255),
code varchar(255),
content varchar(255),
created_date timestamp,
heart boolean,
image varchar(255),
image_url varchar(255),
inventorystatus varchar(255),
name varchar(255),
price float4,
published_date timestamp,
quantity float4,
rating float4,
summary varchar(255),
title varchar(255),
updated_date timestamp,
prod int, 
primary key (id)
);

INSERT INTO products VALUES(1, 'Mitsubishi','61957-9401','Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.','2010/10/10' ,false,'TODO','assets/img/edouard.jpg',true,'Shrimp - 150 - 250',923,'2010/10/10',45,'3','Optional homogeneous interface','','2010/10/10',1);
INSERT INTO products VALUES(2, 'Mitsubishi','61957-9401','Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.','2010/10/10' ,false,'http: //dummyimage.com/202x181.bmp/cc0000/ffffff','assets/img/edouard.jpg',true,'Shrimp - 150 - 250',923,'2010/10/10',45,'3','Optional homogeneous interface','','2010/10/10',1);
INSERT INTO products VALUES(3, 'Mitsubishi','61957-9401','Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.','2010/10/10' ,false,'TODO','assets/img/edouard.jpg',true,'Shrimp - 150 - 250',923,'2010/10/10',45,'3','Optional homogeneous interface','','2010/10/10',1);
INSERT INTO products VALUES(4, 'Mitsubishi','61957-9401','Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.','2010/10/10' ,false,'TODO','assets/img/edouard.jpg',true,'Shrimp - 150 - 250',923,'2010/10/10',45,'3','Optional homogeneous interface','','2010/10/10',1);
INSERT INTO products VALUES(5, 'Mitsubishi','61957-9401','Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.','2010/10/10' ,false,'TODO','assets/img/edouard.jpg',true,'Shrimp - 150 - 250',923,'2010/10/10',45,'3','Optional homogeneous interface','','2010/10/10',1);
INSERT INTO products VALUES(6, 'Mitsubishi','61957-9401','Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.','2010/10/10' ,false,'TODO','assets/img/edouard.jpg',true,'Shrimp - 150 - 250',923,'2010/10/10',45,'3','Optional homogeneous interface','','2010/10/10',1);
INSERT INTO products VALUES(7, 'Mitsubishi','61957-9401','Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.','2010/10/10' ,false,'TODO','assets/img/edouard.jpg',true,'Shrimp - 150 - 250',923,'2010/10/10',45,'3','Optional homogeneous interface','','2010/10/10',1);
INSERT INTO products VALUES(8, 'Mitsubishi','61957-9401','Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.','2010/10/10' ,false,'TODO','assets/img/edouard.jpg',true,'Shrimp - 150 - 250',923,'2010/10/10',45,'3','Optional homogeneous interface','','2010/10/10',1);
INSERT INTO products VALUES(9, 'Mitsubishi','61957-9401','Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.','2010/10/10' ,false,'TODO','assets/img/edouard.jpg',true,'Shrimp - 150 - 250',923,'2010/10/10',45,'3','Optional homogeneous interface','','2010/10/10',1);
INSERT INTO products VALUES(10, 'Mitsubishi','61957-9401','Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.','2010/10/10' ,false,'TODO','assets/img/edouard.jpg',true,'Shrimp - 150 - 250',923,'2010/10/10',45,'3','Optional homogeneous interface','','2010/10/10',1);
INSERT INTO products VALUES(11, 'Mitsubishi','61957-9401','Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.','2010/10/10' ,false,'TODO','assets/img/edouard.jpg',true,'Shrimp - 150 - 250',923,'2010/10/10',45,'3','Optional homogeneous interface','','2010/10/10',1);
INSERT INTO products VALUES(12, 'Mitsubishi','61957-9401','Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.','2010/10/10' ,false,'TODO','assets/img/edouard.jpg',true,'Shrimp - 150 - 250',923,'2010/10/10',45,'3','Optional homogeneous interface','','2010/10/10',1);
INSERT INTO products VALUES(13, 'Mitsubishi','61957-9401','Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.','2010/10/10' ,false,'TODO','assets/img/edouard.jpg',true,'Shrimp - 150 - 250',923,'2010/10/10',45,'3','Optional homogeneous interface','','2010/10/10',1);
INSERT INTO products VALUES(14, 'Mitsubishi','61957-9401','Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.','2010/10/10' ,false,'TODO','assets/img/edouard.jpg',true,'Shrimp - 150 - 250',923,'2010/10/10',45,'3','Optional homogeneous interface','','2010/10/10',1);
INSERT INTO products VALUES(15, 'Mitsubishi','61957-9401','Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.','2010/10/10' ,false,'TODO','assets/img/edouard.jpg',true,'Shrimp - 150 - 250',923,'2010/10/10',45,'3','Optional homogeneous interface','','2010/10/10',1);



DROP TABLE IF EXISTS users CASCADE;
create table users (
id int8 not null,
avater varchar(255),
created_date timestamp,
description varchar(255),
email varchar(255),
f_name varchar(255),
is_admin boolean,
l_name varchar(255),
password varchar(255),
password_confirmation varchar(255),
token varchar(255),
username varchar(255),
client_id int8,
primary key (id)
);

INSERT INTO users(id,f_name,l_name,password,email,is_admin,token,username) VALUES(1,'admin','admin','#123456789#','admni@mns237.org',true,'123456789#ZebationStafouetIdrice123456789#','admin');
INSERT INTO users(id,f_name,l_name,password,email,is_admin,token,username) VALUES(2,'idrice','tsafouet','0000','admni@mns237.org',true,'00000#123456789#0000','idrice');
INSERT INTO users(id,f_name,l_name,password,email,is_admin,token,username) VALUES(3,'alex','zabatio','1234','admni@mns237.org',false,'00000#123456789#0000','alex');
INSERT INTO users(id,f_name,l_name,password,email,is_admin,token,username) VALUES(4,'paul','tsafouet','4321','admni@mns237.org',false,'00000#123456789#0000','paul');
INSERT INTO users(id,f_name,l_name,password,email,is_admin,token,username) VALUES(5,'chanelle','zabatio','0000','admni@mns237.org',false,'00000#123456789#0000','chanelle');
INSERT INTO users(id,f_name,l_name,password,email,is_admin,token,username) VALUES(6,'pascal','tsafouet','9876','admni@mns237.org',false,'00000#123456789#0000','pascal');
INSERT INTO users(id,f_name,l_name,password,email,is_admin,token,username) VALUES(7,'lyam','tsafouet','3456','admni@mns237.org',false,'00000#123456789#0000','lyam');
INSERT INTO users(id,f_name,l_name,password,email,is_admin,token,username) VALUES(8,'zoe','tsafouet','6543','admni@mns237.org',false,'00000#123456789#0000','zeo');
INSERT INTO users(id,f_name,l_name,password,email,is_admin,token,username) VALUES(9,'christian','tsafouet','2345','admni@mns237.org',false,'00000#123456789#0000','christian');
INSERT INTO users(id,f_name,l_name,password,email,is_admin,token,username) VALUES(10,'christine','tsafouet','5432','admni@mns237.org',false,'00000#123456789#0000','christine');
INSERT INTO users(id,f_name,l_name,password,email,is_admin,token,username) VALUES(11,'victor','tsafouet','5678','admni@mns237.org',false,'00000#123456789#0000','victor');
INSERT INTO users(id,f_name,l_name,password,email,is_admin,token,username) VALUES(12,'victoria','tsafouet','8765','admni@mns237.org',false,'00000#123456789#0000','victoria');

DROP TABLE IF EXISTS subscribers CASCADE;

create table subscribers (
id int8 not null,
email varchar(255),
f_name varchar(255),
l_name varchar(255),
verified boolean,
primary key (id)
);
INSERT INTO subscribers VALUES(1,'idrice.tsafouet@yahoo.com','Tsafouet','Idrice',true);
INSERT INTO subscribers VALUES(2,'tsafouet@yahoo.com','Zebatio','Idrice',false);
INSERT INTO subscribers VALUES(3,'chanelle.chiozem@gmail.com','Chanelle','Chiozem',true);
INSERT INTO subscribers VALUES(4,'ghislain@yahoo.com','Ghislain','Zeleu',false);


DROP TABLE IF EXISTS videos;
create table videos (
id int8 not null,
like_button float4,
name varchar(255),
published_date timestamp,
subtitle varchar(255),
unlike_button float4,
year float4,
videos_id int,
primary key (id)
);

DROP TABLE IF EXISTS topic CASCADE;
create table topic (
id int8 not null,
category varchar(255),
content varchar(255),
created_date timestamp,
image_url varchar(255),
like_button varchar(255),
published_date timestamp,
rating varchar(255),
summary varchar(255),
title varchar(255),
unlike varchar(255),
updated_date timestamp,
verified boolean,
comments_id int8 DEFAULT 0,
primary key (id)
);

INSERT INTO topic VALUES(1,'E-Health','blog...hi... this is the second blog...hi... this is the second blog...hi... this is the second blog...','2020-01-12','assets/img/aboutus.jpg',870,'2020-01-12',3,'this is the second blog...hi... this is the second blog.is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the','first topic','-1','2020-03-02',true,null);
INSERT INTO topic VALUES(2,'E-Health','this is the second blog...hi... this is the second blog...hi... this is the second blog...','2020-01-12','assets/img/CMR5.jpg',99,'2020-01-12',3,'this is the second blog...hi... this is the second blog.is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the','third topic','-1','2020-03-02',true, null);
INSERT INTO topic VALUES(3,'E-Health','this is the second blog...hi... this is the second blog...hi... this is the second blog...','2020-01-12','assets/img/CMR2.jpg',9,'2020-01-12',3,'this is the second blog...hi... this is the second blog.is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the','second topic','-1','2020-03-02',true, null);
INSERT INTO topic VALUES(4,'E-Health','blog...hi... this is the second blog...hi... this is the second blog...hi... this is the second blog...','2020-01-12','assets/img/CMR1.jpg',93,'2020-01-12',3,'this is the second blog...hi... this is the second blog.is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the','sixth topic','-1','2020-03-02',true, null);
INSERT INTO topic VALUES(5,'E-Health','the second blog...hi... this is the second blog...hi... this is the second blog...hi... this is the second blog...','2020-01-12','assets/img/CMR8.jpg',48,'2020-01-12',3,'this is the second blog...hi... this is the second blog.is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the','eight topic','-1','2020-03-02',true, null);
INSERT INTO topic VALUES(6,'E-Health','the second blog...hi... this is the second blog...hi... this is the second blog...hi... this is the second blog...','2020-01-12','assets/img/CMR5.jpg',400,'2020-01-12',3,'this is the second blog...hi... this is the second blog.is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the','nine topic','-1','2020-03-02',true, null);
INSERT INTO topic VALUES(7,'E-Health','second blog...hi... this is the second blog...hi... this is the second blog...hi... this is the second blog...','2020-01-12','assets/img/CMR14.jpg',12,'2020-01-12',3,'this is the second blog...hi... this is the second blog.is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the','third topic','-1','2020-03-02',true, null);
INSERT INTO topic VALUES(8,'E-Health',' second blog...hi... this is the second blog...hi... this is the second blog...hi... this is the second blog...','2020-01-12','assets/img/CMR10.jpg',0,'2020-01-12',3,'this is the second blog...hi... this is the second blog.is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the','tenth topic','-1','2020-03-02',true, null);
INSERT INTO topic VALUES(9,'E-Health',' second blog...hi... this is the second blog...hi... this is the second blog...hi... this is the second blog...','2020-01-12','assets/img/CMR10.jpg',1,'2020-01-12',3,'this is the second blog...hi... this is the second blog.is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the','tenth topic','-1','2020-03-02',true, null);
INSERT INTO topic VALUES(10,'E-Health',' second blog...hi... this is the second blog...hi... this is the second blog...hi... this is the second blog...','2020-01-12','assets/img/CMR10.jpg',0,'2020-01-12',3,'this is the second blog...hi... this is the second blog.is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the','tenth topic','-1','2020-03-02',true, null);
INSERT INTO topic VALUES(11,'E-Health',' second blog...hi... this is the second blog...hi... this is the second blog...hi... this is the second blog...','2020-01-12','assets/img/CMR10.jpg',14,'2020-01-12',3,'this is the second blog...hi... this is the second blog.is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the','tenth topic','-1','2020-03-02',true, null);
INSERT INTO topic VALUES(12,'E-Health',' second blog...hi... this is the second blog...hi... this is the second blog...hi... this is the second blog...','2020-01-12','assets/img/CMR10.jpg',78,'2020-01-12',3,'this is the second blog...hi... this is the second blog.is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the','tenth topic','-1','2020-03-02',true, null);
INSERT INTO topic VALUES(13,'E-Health',' second blog...hi... this is the second blog...hi... this is the second blog...hi... this is the second blog...','2020-01-12','assets/img/CMR10.jpg',20,'2020-01-12',3,'this is the second blog...hi... this is the second blog.is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the first blog.hi this is the','tenth topic','-1','2020-03-02',true, null);


DROP TABLE IF EXISTS shoppings;
create table shoppings (
id int8 not null,
description varchar(255),
name varchar(255),
primary key (id)
);