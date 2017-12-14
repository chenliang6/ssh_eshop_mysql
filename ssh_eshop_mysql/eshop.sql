# SQL Manager 2007 Lite for MySQL 4.4.2.1
# ---------------------------------------
# Host     : localhost
# Port     : 3306
# Database : eshop


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

SET FOREIGN_KEY_CHECKS=0;

CREATE DATABASE `eshop`
    CHARACTER SET 'utf8'
    COLLATE 'utf8_general_ci';

USE `eshop`;

#
# Structure for the `admin` table : 
#

CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Structure for the `category` table : 
#

CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Structure for the `indent` table : 
#

CREATE TABLE `indent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `total` float DEFAULT NULL COMMENT '总价',
  `amount` int(11) DEFAULT NULL COMMENT '商品总数',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态(1未发货/2已发货)',
  `systime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '下单时间',
  `user_id` int(11) DEFAULT NULL COMMENT '下单用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `items` table : 
#

CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` float DEFAULT NULL COMMENT '购买时价格',
  `amount` int(11) DEFAULT NULL COMMENT '数量',
  `indent_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

#
# Structure for the `product` table : 
#

CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `cover` varchar(255) DEFAULT NULL COMMENT '封面',
  `price` float DEFAULT NULL COMMENT '价格',
  `intro` varchar(255) DEFAULT NULL COMMENT '介绍',
  `stock` int(11) DEFAULT NULL COMMENT '库存',
  `category_id` int(11) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

#
# Structure for the `product_new` table : 
#

CREATE TABLE `product_new` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Structure for the `product_sale` table : 
#

CREATE TABLE `product_sale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `discount` tinyint(4) DEFAULT '100' COMMENT '折扣(x%)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Structure for the `product_show` table : 
#

CREATE TABLE `product_show` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `showtext` varchar(255) DEFAULT NULL COMMENT '展示图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

#
# Structure for the `users` table : 
#

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `phone` varchar(255) DEFAULT NULL COMMENT '电话',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for the `admin` table  (LIMIT 0,500)
#

INSERT INTO `admin` (`id`, `username`, `password`) VALUES 
  (1,'1','iUOoOdMAl7FsB1Kig37hmg==');
COMMIT;

#
# Data for the `category` table  (LIMIT 0,500)
#

INSERT INTO `category` (`id`, `name`) VALUES 
  (1,'手机通讯'),
  (2,'摄影摄像'),
  (3,'数码影音'),
  (4,'智能家居');
COMMIT;

#
# Data for the `items` table  (LIMIT 0,500)
#

INSERT INTO `items` (`id`, `price`, `amount`, `indent_id`, `product_id`) VALUES 
  (1,96.51,1,1,16),
  (2,79.99,1,2,12),
  (3,255.62,1,2,9),
  (4,2093.17,2,2,7),
  (5,456.28,1,2,6),
  (6,6899.99,1,2,1),
  (7,350.88,1,2,4),
  (8,566.98,1,2,17),
  (9,96.51,1,2,16),
  (10,457.5,1,2,10),
  (11,8161.61,1,2,2),
  (12,126.66,1,2,13),
  (13,123.45,1,2,8),
  (14,589.88,1,2,5),
  (15,99.99,1,2,11),
  (16,523.87,1,3,14),
  (17,98.54,1,3,15),
  (18,6899.99,2,1,1),
  (19,96.51,1,1,16),
  (20,79.99,1,1,12);
COMMIT;

#
# Data for the `product` table  (LIMIT 0,500)
#

INSERT INTO `product` (`id`, `name`, `cover`, `price`, `intro`, `stock`, `category_id`) VALUES 
  (1,'1','/picture/pic1.jpg',6899.99,'1',8,2),
  (2,'2','/picture/pic2.jpg',8871.31,'2',10,2),
  (3,'3','/picture/pic3.jpg',1299.85,'3',10,2),
  (4,'4','/picture/pic4.jpg',350.88,'4',10,3),
  (5,'5','/picture/pic5.jpg',589.88,'5',10,3),
  (6,'6','/picture/pic6.jpg',456.28,'6',10,3),
  (7,'7','/picture/pic7.jpg',2552.65,'7',10,3),
  (8,'8','/picture/pic8.jpg',123.45,'8',10,3),
  (9,'9','/picture/pic9.jpg',255.62,'9',10,3),
  (10,'10','/picture/pic10.jpg',514.05,'10',10,3),
  (11,'11','/picture/pic11.jpg',99.99,'11',10,4),
  (12,'12','/picture/pic12.jpg',79.99,'12',9,4),
  (13,'13','/picture/pic13.jpg',126.66,'13',9,4),
  (14,'14','/picture/pic14.jpg',523.87,'14',9,4),
  (15,'15','/picture/pic15.jpg',98.54,'15',9,4),
  (16,'16','/picture/pic16.jpg',122.17,'16',7,4),
  (17,'17','/picture/pic17.jpg',566.98,'17',20,1);
COMMIT;

#
# Data for the `product_new` table  (LIMIT 0,500)
#

INSERT INTO `product_new` (`id`, `product_id`) VALUES 
  (1,11),
  (2,5),
  (3,8),
  (4,13);
COMMIT;

#
# Data for the `product_sale` table  (LIMIT 0,500)
#

INSERT INTO `product_sale` (`id`, `product_id`, `discount`) VALUES 
  (1,2,92),
  (2,7,82),
  (3,10,89),
  (4,16,79);
COMMIT;

#
# Data for the `product_show` table  (LIMIT 0,500)
#

INSERT INTO `product_show` (`id`, `product_id`, `showtext`) VALUES 
  (1,17,'推荐理由'),
  (2,4,'推荐理由'),
  (3,1,'推荐理由'),
  (4,6,'推荐理由'),
  (5,7,'推荐理由'),
  (6,9,'推荐理由'),
  (7,12,'推荐理由'),
  (8,16,'推荐理由'),
  (9,15,''),
  (10,14,'');
COMMIT;

#
# Data for the `users` table  (LIMIT 0,500)
#

INSERT INTO `users` (`id`, `username`, `password`, `phone`, `address`) VALUES 
  (1,'1','iUOoOdMAl7FsB1Kig37hmg==','12312341234','北京北京北京'),
  (2,'11','ZrnK2mULkfPhqoe8LNKkiw==','11','11');
COMMIT;



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;