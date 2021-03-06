-- mysql 脚本
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL COMMENT '用户名称',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `sex` char(1) DEFAULT NULL COMMENT '性别',
  `address` varchar(256) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

insert into user values(1,"YourName","YourBirthday","YourSex","YourAddress");



-- sqlite 脚本
CREATE TABLE user (
    id       INTEGER       PRIMARY KEY AUTOINCREMENT,
    username VARCHAR (32)  NOT NULL,
    birthday DATE          DEFAULT (datetime('now', 'localtime') ),
    sex      VARCHAR (4),
    address  VARCHAR (256)
);

insert into user values(1,"YourName","YourBirthday","YourSex","YourAddress");
