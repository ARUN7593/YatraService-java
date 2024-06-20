/*
SQLyog Community v8.4 RC2
MySQL - 5.0.15-nt : Database - yatra
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yatra` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `yatra`;

/*Table structure for table `book` */

DROP TABLE IF EXISTS `book`;

CREATE TABLE `book` (
  `bookid` varchar(255) default NULL,
  `authorname` varchar(255) default NULL,
  `bookname` varchar(255) default NULL,
  `language` varchar(255) default NULL,
  `edition` varchar(255) default NULL,
  `category` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `book` */

insert  into `book`(`bookid`,`authorname`,`bookname`,`language`,`edition`,`category`) values ('1','azees','java','english','2014','novel'),('2','az','ga','tamil','2015','novel'),('3','NAMBIKAI','Absalom, Absalom! ..','TAMIL','2020','Short Story'),('3','NAMBIKAI','Absalom, Absalom! ..','TAMIL','2020','Short Story'),('5','DHINA MALAR','The House of Mirth by Edith Wharton','ENGLISH','2019','New Papers'),('5','DHINA MALAR','The House of Mirth by Edith Wharton','ENGLISH','2019','New Papers'),('7','Disha Experts\'','The Sun Also Rises by Ernest Hemingway','TAMIL','2021','General Knowledge Books'),('7','Disha Experts\'','The Sun Also Rises by Ernest Hemingway','TAMIL','2021','General Knowledge Books'),('9','Business India','A Scanner Darkly by Philip','ENGLISH','2022','Magazine'),('9','Business India','A Scanner Darkly by Philip','ENGLISH','2022','Magazine');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `mobile` varchar(255) default NULL,
  `itemname` varchar(255) default NULL,
  `ct` int(255) default NULL,
  `totalprice` int(255) default NULL,
  `date` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cart` */

/*Table structure for table `complaint` */

DROP TABLE IF EXISTS `complaint`;

CREATE TABLE `complaint` (
  `mobile` varchar(100) default NULL,
  `prob` varchar(300) default NULL,
  `image` mediumblob,
  `description` varchar(500) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `complaint` */

insert  into `complaint`(`mobile`,`prob`,`image`,`description`) values ('9840930414','ggg','thailand.jpg','gg'),('9840930414','dddddd','flash1.jpg','gg'),('7299300077','dddddd','thailand.jpg','dd');

/*Table structure for table `daily_food_count` */

DROP TABLE IF EXISTS `daily_food_count`;

CREATE TABLE `daily_food_count` (
  `count` varchar(255) default NULL,
  `date_c` varchar(255) default NULL,
  `foodname` varchar(255) default NULL,
  `cate` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `daily_food_count` */

insert  into `daily_food_count`(`count`,`date_c`,`foodname`,`cate`) values ('03/03/2017','Leham Kapsa','10','Biryani & Rice'),('10','03/03/2017','BBQ. Chicken Kapsa','Biryani & Rice'),('10','17/03/2017','Leham Kapsa','Biryani & Rice');

/*Table structure for table `dress` */

DROP TABLE IF EXISTS `dress`;

CREATE TABLE `dress` (
  `mobile` varchar(255) default NULL,
  `color` varchar(255) default NULL,
  `size` varchar(255) default NULL,
  `collored` varchar(255) default NULL,
  `fullsleave` varchar(255) default NULL,
  `dry` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dress` */

insert  into `dress`(`mobile`,`color`,`size`,`collored`,`fullsleave`,`dry`) values ('null','White','30','Yes','Yes','Yes'),('null','Black','30','Yes','No','Yes');

/*Table structure for table `food` */

DROP TABLE IF EXISTS `food`;

CREATE TABLE `food` (
  `foodid` int(255) NOT NULL auto_increment,
  `foodname` varchar(255) default NULL,
  `fooddesc` varchar(255) default NULL,
  `category` varchar(255) default NULL,
  `price` varchar(255) default NULL,
  PRIMARY KEY  (`foodid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `food` */

insert  into `food`(`foodid`,`foodname`,`fooddesc`,`category`,`price`) values (1,'Leham Kapsa','An Arabian method of cooking chicken or mutton with Arabic spices, herbs flavoured with saffron & dark lemon','Biryani & Rice','130'),(2,'BBQ. Chicken Kapsa','An Arabian method of cooking chicken or mutton with Arabic spices, herbs flavoured with saffron & dark lemon','Biryani & Rice','150'),(3,'Mutton Raan Kapsa','An Arabian method of cooking chicken or mutton with Arabic spices, herbs flavoured with saffron & dark lemon','Biryani & Rice','150'),(4,'Rubiyan Kapsa','An Arabian method of cooking chicken or mutton with Arabic spices, herbs flavoured with saffron & dark lemon','Biryani & Rice','160'),(5,'Kashmiri Pulao','An Arabian method of cooking chicken or mutton with Arabic spices, herbs flavoured with saffron & dark lemon','Biryani & Rice','150'),(6,'Veg. Pulao','An Arabian method of cooking chicken or mutton with Arabic spices, herbs flavoured with saffron & dark lemon','Biryani & Rice','135'),(7,'Sultana Pulao','Steamed basmati rice cooked with aromatic mild Indian recipe','Biryani & Rice','210'),(8,'Chicken Dum Biryani','Steamed basmati rice cooked with aromatic mild Indian recipe','Biryani & Rice','200'),(9,'Fish Biryani','Steamed basmati rice cooked with aromatic mild Indian recipe','Biryani & Rice','210'),(10,'Prawns Biryani','Classical method of long grain creation with fried boneless chicken, a chef\'s special of the house','Biryani & Rice','200'),(11,'Veg. Biryani','Classical method of long grain creation with fried boneless chicken, a chef\'s special of the house','Biryani & Rice','210'),(12,'Special Chicken Biryani','Classical method of long grain creation with fried boneless chicken, a chef\'s special of the house','Biryani & Rice','250'),(13,'Egg Biryani','Classical method of long grain creation with fried boneless chicken, a chef\'s special of the house','Biryani & Rice','230'),(14,'Mutton Dum Biryani','Classical method of long grain creation with fried boneless chicken, a chef\'s special of the house','Biryani & Rice','240'),(27,'sambar','dhal dhal ','Indian Gravies: Veg.& Non-Veg','220'),(28,'wheat','wheat','Breads','20'),(29,'sample','sample','sample','22'),(30,'coke','drink','Beverages','20'),(31,'omlet','omlet','Egg & Kada','10'),(32,'MUTTON SOUP','YUMMYY','Soups','20'),(33,'MEXICAN SHAWARMA','SPICY','Shawarmas & Rolls','100'),(34,'PERI PERI SHAWARMA','WOW','Shawarmas & Rolls','120'),(35,'SHAWARMA ROLL','YUMMY','Shawarmas & Rolls','60'),(36,'FRIED CHECKEN','SPICY','Barbecue Charcoal Grilled: Veg. & Non-Veg','180'),(37,'YAATRA SPECIAL CHICKEN','YUMMY AND SPICY','Barbecue Charcoal Grilled: Veg. & Non-Veg','200'),(38,'CHICKEN FRIED RICE','SPICY','Fried Rice & Noodles','100'),(39,'CHICKEN NOODLES','AUTHENTIC','Fried Rice & Noodles','100'),(40,'PRAWN','WOWW','Seafoods','100'),(41,'FISH','JUICY','Seafoods','120'),(42,'BIG FISH','SUPERB','Seafoods','150'),(43,'WHITE SAUCE PASTA','PEPPERY','Pastas & Macaronis','80'),(44,'SPICY MACARONIS','SPICY','Pastas & Macaronis','100'),(45,'ITEM1','GOOD','Short Dips','80'),(46,'MILKSHAKE','SWEET','Cold Appetizers','50'),(47,'SALAD','NICE','Cold Appetizers','50'),(48,'ICE CREAMS','CHILL','Desserts & Ice Cream','100'),(49,'GRILL CHICKEN','TASTY','Starters: Veg. & Non-Veg','180'),(50,'TNDOORI','YUMMY','Starters: Veg. & Non-Veg','200'),(51,NULL,'',NULL,NULL),(52,NULL,'',NULL,NULL);

/*Table structure for table `medical` */

DROP TABLE IF EXISTS `medical`;

CREATE TABLE `medical` (
  `tid` int(255) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `dosage` varchar(255) default NULL,
  `category` varchar(255) default NULL,
  `price` int(255) default NULL,
  PRIMARY KEY  (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `medical` */

insert  into `medical`(`tid`,`name`,`dosage`,`category`,`price`) values (1,'dolo','650','Antibiotic',10),(2,'benedryl','50','Syrup',20),(3,'aaa','22','Vitamin',15),(4,'jgbjh','54','Pain Killer',40);

/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `fname` varchar(255) default NULL,
  `lname` varchar(255) default NULL,
  `mail` varchar(255) default NULL,
  `mob` varchar(255) default NULL,
  `pass` varchar(255) default NULL,
  `pid` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `register` */

insert  into `register`(`fname`,`lname`,`mail`,`mob`,`pass`,`pid`) values ('muthalib','muthalib','uniq.jega@gmail.com','9840930414','123456','5647'),('jaga','jaga','jagadeesan@uniqtechnologies.co.in','7299300077','123123','0611'),('priya','a','priya@gmail.com','7894561232','priya12','3862');

/*Table structure for table `transaction_details` */

DROP TABLE IF EXISTS `transaction_details`;

CREATE TABLE `transaction_details` (
  `transaction_id` int(255) NOT NULL auto_increment,
  `mobile` varchar(255) default NULL,
  `amount` varchar(255) default NULL,
  `date_c` varchar(255) default NULL,
  `status` varchar(255) default NULL,
  `category` varchar(255) default NULL,
  PRIMARY KEY  (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `transaction_details` */

insert  into `transaction_details`(`transaction_id`,`mobile`,`amount`,`date_c`,`status`,`category`) values (1,'9840930414','560','23/02/2017','completed',NULL),(2,'9840930414','260','11/03/2017','onprocess',NULL),(3,'9840930414','120','11/03/2017','onprocess',NULL),(4,'9840930414','65','11/03/2017','onprocess',NULL),(5,'9840930414','120','11/03/2017','onprocess',NULL),(6,'9840930414','390','11/03/2017','onprocess','null'),(7,'9840930414','130','11/03/2017','completed','food'),(8,'9840930414','65','11/03/2017','onprocess','food'),(9,'9840930414','40','11/03/2017','onprocess','food'),(10,'9840930414','40','11/03/2017','onprocess','medical'),(11,'9840930414','260','12/03/2017','onprocess','food'),(12,'9840930414','80','14/03/2017','completed','medical'),(13,'9840930414','80','14/03/2017','completed','medical'),(14,'9840930414','65','17/03/2017','onprocess','null'),(15,'9840930414','65','17/03/2017','onprocess','null'),(16,'9840930414','65','17/03/2017','onprocess','null'),(17,'9840930414','65','17/03/2017','onprocess','dress'),(18,'9840930414','300','17/03/2017','onprocess','food'),(19,'9840930414','130','19/03/2017','onprocess','food'),(20,'9840930414','65','19/03/2017','onprocess','dress'),(21,'9840930414','40','19/03/2017','onprocess','medical'),(22,'7299300077','450','19/03/2017','onprocess','food'),(23,'7299300077','65','19/03/2017','onprocess','dress'),(24,'7299300077','60','19/03/2017','onprocess','medical'),(25,'9840930414','310','19/03/2017','onprocess','food');

/*Table structure for table `wallet` */

DROP TABLE IF EXISTS `wallet`;

CREATE TABLE `wallet` (
  `mobile` varchar(255) default NULL,
  `amount` int(255) default NULL,
  `pass` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `wallet` */

insert  into `wallet`(`mobile`,`amount`,`pass`) values ('9840930414',1065,'123456'),('7299300077',9425,'123123'),('7894561232',20000,'priya12');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
