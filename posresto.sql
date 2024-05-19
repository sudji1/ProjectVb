/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 10.1.38-MariaDB : Database - posresto
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`posresto` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `posresto`;

/*Table structure for table `tblaudit` */

DROP TABLE IF EXISTS `tblaudit`;

CREATE TABLE `tblaudit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(50) NOT NULL,
  `summary` text NOT NULL,
  `sdate` date NOT NULL,
  `stime` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `tblaudit` */

insert  into `tblaudit`(`id`,`user`,`summary`,`sdate`,`stime`) values 
(17,'admin','Add New Product  SATE; category MAKANAN; price 17500','2021-08-15','11:57:54 AM'),
(18,'admin','Add New Product  SPRITE; category DRINK; price 13500','2021-08-15','11:58:13 AM');

/*Table structure for table `tblcart` */

DROP TABLE IF EXISTS `tblcart`;

CREATE TABLE `tblcart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transno` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `qty` decimal(10,0) NOT NULL DEFAULT '1',
  `total` decimal(10,0) NOT NULL,
  `tdate` date NOT NULL,
  `tableno` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=latin1;

/*Data for the table `tblcart` */

insert  into `tblcart`(`id`,`transno`,`pid`,`price`,`qty`,`total`,`tdate`,`tableno`,`user`,`status`) values 
(105,'202108150001',35,17500,3,52500,'2021-08-15','TABLE 01','Sujiatin','Completed'),
(106,'202108150001',36,13500,2,27000,'2021-08-15','TABLE 01','Sujiatin','Completed'),
(107,'202108150002',35,17500,3,52500,'2021-08-15','TABLE 01','Sujiatin','Completed'),
(108,'202108150002',36,13500,2,27000,'2021-08-15','TABLE 01','Sujiatin','Completed'),
(109,'202108150003',35,17500,2,35000,'2021-08-15','TABLE 03','Sujiatin','Completed'),
(110,'202108150003',36,13500,1,13500,'2021-08-15','TABLE 03','Sujiatin','Completed'),
(111,'202108150004',35,17500,2,35000,'2021-08-15','TABLE 06','Sujiatin','Completed'),
(112,'202108150004',36,13500,4,54000,'2021-08-15','TABLE 06','Sujiatin','Completed'),
(113,'202108150005',35,17500,3,52500,'2021-08-15','TABLE 03','Sujiatin','Completed'),
(114,'202108150005',36,13500,2,27000,'2021-08-15','TABLE 03','Sujiatin','Completed'),
(115,'202108150006',35,17500,3,52500,'2021-08-15','TABLE 02','Sujiatin','Completed'),
(116,'202108150006',36,13500,2,27000,'2021-08-15','TABLE 02','Sujiatin','Completed'),
(117,'202108150007',35,17500,4,70000,'2021-08-15','TABLE 02','Sujiatin','Completed'),
(118,'202108150007',36,13500,3,40500,'2021-08-15','TABLE 02','Sujiatin','Completed'),
(119,'202108150008',35,17500,2,35000,'2021-08-15','TABLE 06','Sujiatin','Completed'),
(120,'202108150008',36,13500,1,13500,'2021-08-15','TABLE 06','Sujiatin','Completed'),
(121,'202108150009',35,17500,2,35000,'2021-08-15','TABLE 05','Sujiatin','Completed'),
(122,'202108150009',36,13500,1,13500,'2021-08-15','TABLE 05','Sujiatin','Completed'),
(123,'202108150010',35,17500,1,17500,'2021-08-15','TABLE 01','Sujiatin','Completed'),
(124,'202108150010',36,13500,1,13500,'2021-08-15','TABLE 01','Sujiatin','Completed'),
(125,'202108150011',35,17500,2,35000,'2021-08-15','TABLE 01','Sujiatin','Completed'),
(126,'202108150011',36,13500,1,13500,'2021-08-15','TABLE 01','Sujiatin','Completed'),
(127,'202108150012',35,17500,1,17500,'2021-08-15','TABLE 06','Sujiatin','Completed'),
(128,'202108150012',36,13500,1,13500,'2021-08-15','TABLE 06','Sujiatin','Completed'),
(129,'202108150013',35,17500,2,35000,'2021-08-15','TABLE 03','Sujiatin','Completed'),
(130,'202108150013',36,13500,2,27000,'2021-08-15','TABLE 03','Sujiatin','Completed'),
(131,'202108150014',35,17500,1,17500,'2021-08-15','TABLE 01','Sujiatin','Completed'),
(132,'202108150014',36,13500,1,13500,'2021-08-15','TABLE 01','Sujiatin','Completed'),
(133,'202108150015',35,17500,2,35000,'2021-08-15','TABLE 02','Sujiatin','Completed'),
(134,'202108150015',36,13500,2,27000,'2021-08-15','TABLE 02','Sujiatin','Completed'),
(135,'202108150016',35,17500,2,35000,'2021-08-15','TABLE 06','Sujiatin','Completed'),
(136,'202108150016',36,13500,1,13500,'2021-08-15','TABLE 06','Sujiatin','Completed');

/*Table structure for table `tblcategory` */

DROP TABLE IF EXISTS `tblcategory`;

CREATE TABLE `tblcategory` (
  `Category` varchar(50) NOT NULL,
  PRIMARY KEY (`Category`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tblcategory` */

insert  into `tblcategory`(`Category`) values 
('DRINK'),
('MAKANAN'),
('SNACK');

/*Table structure for table `tbldiscount` */

DROP TABLE IF EXISTS `tbldiscount`;

CREATE TABLE `tbldiscount` (
  `DESCRIPTION` varchar(50) NOT NULL,
  `persent` decimal(10,0) NOT NULL,
  PRIMARY KEY (`DESCRIPTION`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbldiscount` */

insert  into `tbldiscount`(`DESCRIPTION`,`persent`) values 
('RAWON	',25);

/*Table structure for table `tbllog` */

DROP TABLE IF EXISTS `tbllog`;

CREATE TABLE `tbllog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(50) NOT NULL,
  `sdate` date NOT NULL,
  `timein` varchar(50) NOT NULL,
  `timeout` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Online',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=latin1;

/*Data for the table `tbllog` */

insert  into `tbllog`(`id`,`user`,`sdate`,`timein`,`timeout`,`status`) values 
(82,'admin','2021-08-15','11:56:12 AM','11:58:19 AM','Offline'),
(83,'sudji','2021-08-15','11:58:23 AM','11:59:47 AM','Offline'),
(84,'sudji','2021-08-15','12:56:22 PM','12:57:31 PM','Offline'),
(85,'sudji','2021-08-15','12:58:42 PM','13:00:11 PM','Offline'),
(86,'sudji','2021-08-15','13:04:00 PM','13:05:15 PM','Offline'),
(87,'sudji','2021-08-15','16:12:27 PM','16:13:40 PM','Offline'),
(88,'sudji','2021-08-15','16:14:42 PM','16:15:33 PM','Offline'),
(89,'sudji','2021-08-15','16:18:20 PM','16:19:01 PM','Offline'),
(90,'sudji','2021-08-15','16:21:32 PM','16:22:26 PM','Offline'),
(91,'sudji','2021-08-15','16:24:18 PM','16:24:56 PM','Offline'),
(92,'sudji','2021-08-15','16:56:56 PM','16:57:40 PM','Offline'),
(93,'sudji','2021-08-15','16:58:46 PM','16:59:27 PM','Offline'),
(94,'sudji','2021-08-15','17:01:39 PM','17:02:26 PM','Offline'),
(95,'sudji','2021-08-15','18:05:01 PM','18:06:05 PM','Offline'),
(96,'sudji','2021-08-15','18:08:14 PM','18:09:12 PM','Offline'),
(97,'sudji','2021-08-15','18:10:14 PM','18:11:12 PM','Offline'),
(98,'sudji','2021-08-15','18:13:54 PM','18:14:42 PM','Offline'),
(99,'sudji','2021-08-15','18:16:29 PM','18:16:59 PM','Offline'),
(100,'sudji','2021-08-15','18:24:15 PM','18:24:47 PM','Offline'),
(101,'sudji','2021-08-15','18:25:32 PM','18:30:07 PM','Offline'),
(102,'sudji','2021-08-15','18:31:59 PM','18:32:22 PM','Offline'),
(103,'sudji','2021-08-15','18:33:20 PM','18:33:36 PM','Offline'),
(104,'sudji','2021-08-15','18:34:25 PM','18:34:44 PM','Offline'),
(105,'sudji','2021-08-15','18:35:53 PM','18:36:20 PM','Offline'),
(106,'sudji','2021-08-15','18:37:36 PM','18:37:56 PM','Offline'),
(107,'sudji','2021-08-15','18:38:46 PM','18:39:13 PM','Offline'),
(108,'sudji','2021-08-15','18:44:43 PM','18:44:57 PM','Offline'),
(109,'sudji','2021-08-15','20:03:06 PM','20:03:39 PM','Offline'),
(110,'sudji','2021-08-15','20:04:26 PM','','Online'),
(111,'sudji','2021-08-15','20:06:02 PM','20:09:28 PM','Offline'),
(112,'sudji','2021-08-15','20:16:10 PM','20:17:42 PM','Offline'),
(113,'admin','2021-08-23','09:21:26 AM','09:21:39 AM','Offline');

/*Table structure for table `tblproduct` */

DROP TABLE IF EXISTS `tblproduct`;

CREATE TABLE `tblproduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `category` varchar(50) NOT NULL,
  `weight` varchar(50) NOT NULL,
  `image` mediumblob NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'TIDAK ADA',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

/*Data for the table `tblproduct` */

insert  into `tblproduct`(`id`,`description`,`price`,`category`,`weight`,`image`,`status`) values 
(35,'SATE',17500,'MAKANAN','False','ÿØÿà\0JFIF\0\0\0\0\0\0\0ÿÛ\0C\0\n\Z\Z\Z\Z\Z\Z\Z!\Z\Z\Z !!+\"(#4#(-.111!7<70;+01.ÿÛ\0C0(\")002203302210100002.9000000000000022020000002000000ÿÀ\0\0·\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0A\0\0\0\0!1AQa\"q2‘¡BR±ÁÑ#3br‚áğ$S’¢ñC²âÒÿÄ\0\Z\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0.\0\0\0\0\0\0!1AQ\"a‘¡±2qÑğÁB#ÿÚ\0\0\0?\0=,¶â-ÜTRã^?8û:úb­ŒKfF ŠÒ<ês~QÀÑ9¥OyBã8Ü0Ş»B˜<|xˆÎGÊÄv¸=EøÕl˜[Í\"ˆÆ¥Ù˜·ÕWŞ‘qï&{jµCÛ§¨£›;~4óù¿õ®gÆôÀØî\'wò„ã-Šˆ;ÑäG¶ìE—SbÇAsĞq­ãÆçRÀ«/\"—:wÓNôM£†pD6<‹ûcĞÔm.•ÊƒÉY€#¥?óG†#í#(;€~V!FÆH¹òş>õ³báš?‡U³v=}­Ö…6ØÃ¢eñ\0^ä“B±{ï†E*¹œı>tk‘kŸû:Gnı¥ÍñÚ!fÔCPH¹ìZamÌÑ^õ›LWˆfU%ôU\"ã\'Mzš!µ÷:<ŒpÖ‰­|£à>ßgÚ¼1÷dİM+zdqŞÚØ¦ae7¹¶•¢ìTˆ_#äÖ‡nÈš)äLB•uµéÔu­>àöJğè…js&É„¨æ&á1Ÿº%\ršárÛ[ŸZ0‰œ™„ˆáS-˜\0S‘¶£™¯7í¢yp¬Ú>b{)#äk|cÇá±Ëvå?ÓÅ…SÓa\\`‘¼f\ZAîg›cg6øÈÅâ\Z“o2§¨ïKûõ¿Ùa…b±¸fû ÄÓ¦ÉÅ+B¼ÊVÚó·á\\	3È€æ#¨=ƒ>‚œşå÷9	­\'Ÿ1Ó	ûQ\"Ù£qèEI?íE˜Ú8œçÿ\0t¿³7BI<Ú*K\0Qİ‹»êÄ®L„<äy¨AÌ÷©ıÏjŞ§‹¶q8—¼º[‚‹ùâz—#NÂœp8LV!@[E\n€ \0úšÓ	²pøU¼®«ÖçRzõ&¢ÆïÔh2Â…­ÀëK#Q£Çît:~‹6Aÿ\0ÉoãÚÙû·‡W¼­ßáÿ\0Z½‹ÚÑBº²¢CJæ¸ığÄÉÁ‚Š?:6-Üİ˜±êM¨m:¸\0ÈÆò·Ê<mmü\"¹ûÆ”v†Ö’cy·áT/Yz!¤Nÿ\0Mø~œ{ş{É<fµ®@è\rQ¼±±ubzk¨«u•ŒŠĞóôxópßÌ?»Ûë(²Ov[qûCÿ\0ëÒ™pSE(W‰£Î‹ G1®‡Z[Áî«K3fg²ÿ\0J©Õ½ÍşUS±å3Ìƒí?ÜGJll‚ùãº±‰s2#q±ıã¾ñlùÌYU­r/‘‰ ÜÅÂnæ*)\"eœª’ƒ‰P5·}ºÔ²í…XÓ<Âè¦ÁX’İ¹÷ª8İñÃä>J$áb@æM¸ûW•–õI‚½T{æ]j	&¤]½3¯ÛY\0û-ÆÖäExUş(Ø5]Aÿ\0¸éOB÷‰n™»B­ˆïX“Õvæ\Zä±êTŠºò!PÀgâ§ğÓ_Ì§ˆD›Ç¬¥ù7£¤«9qMÇ­e¨¾`úgÄš8ò	_¨5é“/ÅÀs€ı¢J\0¢¿\rm•¾éE`ßx3¡=@#æåG­Lj«7…÷—haÌY&Ç+|JzõÌäÆª±±%o¡#[wïMK\0q<2¤½W@ÃÛ‡Ö”ö®Î’&É,lÑî:â¦fLŸíåø²äÁúOõì]í’-C¡FÔZ§îø¿äËàLøÜœ„öæ¾×ôÍÚ/jóÂn Ÿ­,ôÊx1ŸÉz•hùÿ\0q\Z6îl;Zee¿ÂÇUoía¡«{·³b•ZYd\Z*Ï‘oÒ¨ì]ôš%ğgQˆ„èQÀ&Şü}õïDÆÁÃbG‰€˜FÜL2’\0şÖ:¯½ÇqES÷ç´OS×õWH5çÌ#º{A’_u#å­éüm23\nâx¼F\'2™¤€ğo´8hx0î+|VøM+Ä€/eÿ\0O­öâ(äLÚK\Z¡¼é¿´j\"Ä^Ìª×|ìhfÏŞ¨3æ‘wƒlË‰!\0ˆÔæ7âÍÂç \ZéB#Ù«öWÔÑrwÉÿ\0‘ÄgŞ=ğÎ‚ÉÂz÷«í¿0xEI|Öµ‚Üş”šéæ\\ö­B’)>T,{ÖU@Gq°1®\rõ•£ğpñ²’2çfÌô½G„Åa0öò™¦ûª| ÷nt];Q¬é.ÒÂ‡úä×è\rg¨ª(oÉ‘÷a3hí9f•¼ƒá†3aèzÔûnHˆcF1‚o”ÀÖ‘îØW.qğÛ9éğÕÙvDùèCy_Ê’å‰³¼ë~½6!«\'>±ü|evbÆä’zMjËWÓfF@ÿ\0€ŸóÊ¤‡b—`±Ï³h9¹\'xÓı§Ñ\'â]-~ >I¯)·¸Ò¡Íˆ\0 ×(a™Ï%^„õ<(6ÔÙ³æfh:\0¾U\0ä,f>¿GÒŒÆÇÈy‚ï^^¶u#B,z\ZĞĞ\\³Tô5az…Şß­W“Ò³TKæÌí[«i6\\`rF÷4?fJ±q&ô7öE¶Ç„ğ¹ò†>Áµ¿Îôc²ÏïÂÃ*ÒäÊ¤YG¹×ÒœÅ™\0_Ú|T¡:‡ÕÅ“óŞÚû*7ıİs0¹\"êH<ì-QÅ±ZÖ;rÑ?;WH|2›\"ß…íÒ¥	^= ó:²;Ne>ê89Äg=¹¯o^ô?‹x¿›‘øUÁ÷Ôñ®ÀAÁÇ*”•Ôò`¬=\"ÖÆhë\rî\'ÅíèìFKáTğûÍ,oš”ô&âİïÊ»7ü‚Ì_÷hó0*|ºXó€=ø×«º8?Dpñ(%Ak¡¿ó½éHïõŠGE¼¥€f‹\noşúVUŒgì»²<·Ğ±`Hî,lk)^hïS˜©´÷>p3D«2qÍ¦İJ|CÚôµ6Ë ë¡« B£°bl-Âÿ\0…ªö+,§.3²\'Ù™X\\ú2ëìOµäeT™ÊĞIÌÀ`Ú™vFü‚\\K4\\8G|½{©Ë¸p9&9›²K§¶`,}íCñû¬ĞüQå‰\ZCÀÑœ¨Ü‹‚ÇywşÂâ—>\np‡ş”e®|ëşjWÛ;†oâE`>ÒŒÂİtåŞ¤ğYñæ8½Ç¸¦½•1x‘õ:0ïn½År»ÇÆ0“Å™ÏNÓcÅTûTâL€Jê½ßÁâÆhÂ†æ¤äf\ZGô³Ü°‘_+òQ‘ö·Àã¸4Õê1E@uÊx7÷•6Nû0ŒAŠ‰fƒ@\Z¨ê; ƒŞ®b7^<J™6táºÃ!‡ecÏ³[Ô×±nQ@ÚÀ§ÏŸµÙ;¾ºy\0àÚß¶Z0ô›}ŒS€£Ş¸›êbËu1‘Ä=ÁvÎQüÙO t„ñ;O–TÑ‡ö·hv?d‡Ãß0×ÂrŸNMô÷ lÌ9Új¶-6ışQ>-ü13§[zÚ§U`rÆŠ=…2lœ+.V”ìO•…Š§ÏÃ/™›òçŸÈ~4“¹ùâ»*ÔâVûV÷°­±[)Ô€Î ‘~\'I‚@Ókğ®§ñ©Uˆ\"5g<‚‹ûúPÑMÖä2ªlÈÔÌÌz\rnôI(ã[Ü÷<	4Á³÷vÊÒ²Ä.	_‰­í¥ıéóblÈ°ê0ªOmVn½«Á¸Ğ‹/‘ù1Ugk4 ÉJü²‚¤ß©ÒŞ–4[u7ƒoÿ\0[ùY†‘ÿ\0nœ«0’×úöúTÑå¾¤Ş›l>°€ s(ïÊ‹Åâå»\"Üƒ˜ˆ ó®WƒØû@ÏáD²DÖWÄl±©êI6ô:×cyUxµ½xzÚÀ7ˆ¦ƒp•Ùxœw‹ÇÇ\'…,N‚ätÖş\\Ä·¥P;NÙ1<Ö2Púå>S]\'{öBIá(ÃæRÖw‹Ë$w²«hÖ\'PÚZƒo>ï²¨ĞI™\\\rW(7×ì·\r(566N³.3³ûäØøy¿“ŠÈO•m¯÷.ŸJµ÷wÌÑ–O¿ÎŸ1ÃŞ‰M°eøJÒ(æÜv6ç^lù11b-¸‹w¸\"Ô \'3¤Ÿˆeq¹¹Spö¯‡ˆÊMƒ¨®Á³ö¥×+b4 Ù–üÁå\\®lLÒÄQ¨–-\rú°àh¶ÏÛÆ-çNN?>”å:v“uı}Ñ—hÿ\0ˆá˜ËÇBuÔ£ªü©Ïcc„Ğ¤ƒK¨½úóúÜRvÏÛ@€Ñ¿ÈÑV51¥ÌëxØ«_ÛCïF­W¼ÒÀÚ4şô€åÎ·µíq{u©+•ã·%‰¾¢Ëuaşap~•kgm«…’•/Äù“ó¬MûYã„VÌ?n\'J¯5ª[\'i,Ñ‡ˆ`Aq:Õ¨gV¸¤ mOˆ“VW™{×•éèšVÅ¢†8Ç[]¾f¨©á“á’ÄñP/jÌf*œB6º¹*Iå”ØŠ)‡ÅÆWø0½#k{ë\\Slw5:¤l.QxÖdÕZë`WÔ­ôö·¥F›.h‚ş,gÀd÷ÓŞ…íÍòÃÂJ_4ƒL««_§jƒeí=¥+‡%Š.$ÊN£Ğk^)|üç=¡ƒÎ©æRÙ}ÁáíTö¬d l<p~Ò6îA7½^Ú{	3«ÏÂèÇ!\'ª_+kéU6¶îÊ©	¼5ùVP9¸\"÷=-aÔÖ¢YÛë4°íğ[33ç™¼$@š1÷ÒÃ½\ZÅcF_	ãÇbY$Ôæê}¥A°÷‘å—–GM\rü¬G\"×Ûµ^1DêJ1œh²ğ·Ea¦§]GJsî+ãıIß;U%?	†ß‰(4ÍŞdÿ\0)mGù¾b®â1XˆAip…ˆÔ›ÊtdÜè>íÅ}ƒ0›Ì„-®¤j¬t\0\ZZŞÀÑßÛò©8wH‚ìAV‰ÔğáÖ…m}Ü”V±“ÚÃğ¾ÏÇ¦%UĞ‚\0ÌÑÜgSÉXq½éky6Ê¦!Qóeò–Ëpà›ğ<‡ûÑ¬nˆ¶‚)nHÌH\'‡Ã Ôzô­(tœ.,5ÆŠd×8GÌt\"İ\rkd#ğôá_q¿Çâ5lÜzJ¿Ä»Foe\'Î§•Ÿšñÿ\0Z¶é„u1[µ³#[-ø“×_Æ–wƒñÁâ¢ƒ—€\0‘”ñcnİhy¼EUw³_R,[zR”=j^%g&ja¹Œ{ÕºòA<ÄV{—U9ãZn&Ñ—2şï…L’ùTÈGØu>Ú\ryÖû#{bæ„¬N£^œín”ki`Ó\Z±,8€cŠÀÄ¤ZÜ{YùÓï¼‡?I êMÄ!³v¬²âÍa’ùm0w–à¨&ÌMÁ7±é­0$*¿Ä$³<³z‘o•ÙEw‘o…$ndD½€\0’MÏ(œ2;ĞƒnrıiÆâOxJ\"¢ÌEšÖµşµ¬Øµ_1¹ôªñ$«œ°EˆûÖ·šı5Pí8Køe{fU¸¹\r‡1éKrGÂ\Za¶ªHYr›cq¥Z,KXnÂ«àm{Êxö«2â2¶P¦ı†•«emŒó«a3…3I`Ò«@KK9,o”c¼5£±ÈH±õ¡ûy<™†¬¿©¶§°¬rQIn4áL\\ıí£™AÔ-€Ğê4\ZJóg,å-›ˆãïVÿ\0ÆÂ,@,9´]¯™ÈQÃ°ÊgSÁ&ÍÎş,,Ü-VÑ\'gl‰§fğÑ€RA- ¸å¯:,›µ4q¼…‡•I²ê\r…ìM9áx`¢éÏQSBq;ma}nTŸ0â={ÕmÔdàÅbèîÀÜÅƒŒ®¹¢-ğ›o§NS	·eC’Qc×‘ô4İ¼ÅÃR¹À\r²}¸4÷®}³¶Ÿ†Ş!3\'+ipEY n‘Ó³\n1Ç\r´s5v,s…ˆô4»6Í(‚l;øóûÉØşµ&z6r§x¯HĞ›nqÿ\0ÈO­ã^E¶][0XóuÈ·ùÚƒÇˆ½N­Br·˜>Šø†¿âyú•e	¬¯zÍæ{Ñ_F;“°†h^r| ¢ŸG\\Ê>nzVû7sg\n1`\\FÉ–OÊ·÷•5Œ|q.XcXÇ[kA¶ÖÛ…Eå|Ç:Ÿnb(.›¿´!dØ/cpÂ7Œ$eÓø¨.=Ù‡Êªâ6Ú1ÊçÂn@Ø©÷\Zş4®Û÷æÈè^æ>uîj½I²6DÈ&‹ëŸAã2\roÛ+À4kÙñö‡Ç;ıã&¼48‡Ë#åªj«ıFÃ­\rL|ªÆBä3ñá@v–L ²<Íì|Ö s‚E¿*#=æe«)µÁG·¨O½<Ş$XøH³8&”Ñøı¥Ì`ÃN×2ÿ\0V-ù‡ÂŞâıêü˜hï	Y’Úãnëú^†m,~ Œæ‰³+®¤’Ã)õÖµŸfI†C‰†]9 Öı Úõà<àÄyaü\'°Ã!Ë#«’N†ê½²\r—i†‘¤0uøªÉS¥ı(æÌŞd™fæEƒÿ\0ú÷½i¶p~ /‡Q*dË•	¯æò}³ËC~:tÒªÂĞñ³†hô‰İ‰’WI&Cb\ZZ÷¸·°«8-îQŠ2€¬ˆ2Ãu\'ˆ iS@JDsE\"XØ—B,5ã}W¦µ\Zî·ñ¸tE5ï©:œ ñZÚ…ı,8ï:N¤`óÚÀm4ñ+G„3e6ˆ\0“~M<Àúò¢»?g@QãXc³œÇÉå`t»nyŞ—¿Ã\'2aä6A¨Ú›•*9Ü\ZXPxö©V+ ‘÷VRHĞ‚H\ZëŞ„ãe?HÊÂ»Í·‹u¥Ã¶hˆxá×¿Ã~—ª;/n>®€ÆüÅízwÙ[qY¹œò-òÄ:å¨¹\0şton´x…3`˜ü:ÄÀëÌdÍªÜ=)us0–]¥øÑç\nˆä€	7àt ‹\"ôéºx¶ğ³GšE¾ªÄ\rşÉ\'Û_qm‘³&–aœºŸˆº•#ÚÖ®¯‡y\Z\\Á‚é’@/å·\n8Ü\ZFfô˜Q¸Ks)öÕw…6ÆĞíÄxLëe³]MÆ¶¾™‡J¯²0øl9«(ƒHs0\r¡±?$rëJ˜üd–1¸pÀØåò•ne—…Ç?KÕYğÃ(a6r¹“+)Õo{q¸ùòî)C!7Øüa‘v3£a±R	W;\Zß]O@*Ö/mxnøI`i&Yœ	,P¡ I·7×)ô¢X×-0WuV¹eÚÜ5ä\rbåj¡ÌCôÚM#“cÕ’àØ0\"÷áÊô²û`²•épOq^ì¬Db2™¼„Ÿò±ÔßÔšUŞ(]5úu¿[— ê>“Ñã@Ä4ß²NĞ­ˆ*^ı8wÖ­íØ`ª[9#CÀöëA·XOÅÄnA»¼ëlvóŸ³Ü€O¨>”½\07´YÍNÍhÀ(3b?zÂÄÇÈÇî‹>Bş”#cbRs&ÄXX›êmÊˆâöâÊ<ºÜiA°xÏ@kñÓÖ½e”Šı¿ì4îj³6üÃ•O\0„ıt¤m—.¹_Ì\rıo® õïNû_&&’@„}’¼G=xƒHØL3,H7\rkU1™ó¿‰?¸Uí÷j¾ó4GF§CL[f¦Qˆ€	øºzzRÎÊ˜,™X¬e<·ãLÛ­XØáŞï¿¿é=ÅXŒii&,öwçî?¹_ ¢0\Z]ŞÜØYn—(OË§±¨0ÌCp w:ş•;s/Q«q­YK«†ÅÕöŸÖ²ƒXóÓ0vÔŞY\\\"ö:ŸÒ—æÄÔ÷?îæ‹ÿ\0‚Á.°âo»(¿Õlñª¸ÛÄ ¸8ë\rôaî1tù‹ ˆ2«Ôé]·Z)0,…Áf-  \r	á©¥İ„øÇ0±QÀA$m/]/lN\r\Zòâ}\0\'ñ«Ä6$Éz‡ÒKÙ›NR?vâÑ’Qy0æ§ĞÑM’øxÛLĞµ¬©!¼Yµ¶WµÀ¿#­B6JèÁfŸ8[ò«çÀ™|\'Q˜NÇ¡ì>¬kË…Òs=m_¨XúÂ»/f1ÖHÃß[èÊ}øÕ©…?‡†¼ytl‡Ë{\\ùxvÒÕS²ác2ÆJ„ÔXèIĞ‡CÇŠÛK»ûÌ’_4EXêÌ€°×RHâº›ô¯(+¬%œmGÁÿ\0oí\\|IaŸ~#‘ÇBWúĞ˜Zh¥\\’2¥”†_/B™»S–şo?»¢¬€f\0¦[–r>!Ø\r8÷¤_ñ\"‘W˜·2Äùµ:ÚüéyÒv”’Ie£ç‹qï,EnÌ’ù¼²\0è[€û\ZÑƒˆA(\n[ÄÈ{µˆà.Ç4²°¬‹|şò¸l¤|®	õö©08“±³@¸7\Z€x2ö ÈŞåjVê§RîXJ n¶\\ÚØúÛ>w¨vîÆ„€²\0àé™€n\ZwïÊ’6‹Dƒ÷Œ;eoµaåî9¶¦-ßŞe’5I]·óX7c¯Ãµj¹\'›&Ôïâ}Éh§Ë‡œŞÄ€ÂçÓ2ñ^\0ŸöH…ÄFQd½ÊØ²‹ 6½î\0:k¨·z“xv„qäVp’8Ì\0¸%\0\r˜êr›^Ãµ/mm»\"FeeórxÆ£![ŞÀjœyV•g\Z”AHV0ÖÖÙ‰¢&ÑBîC\0fcm32Şş¾•A±˜¤ñ+É‘D±© ‡\Z\ZeeáÀßZ7³6”Ó¨Ô\'—0Ï¡Ên €¼¶Ò…C±qd•‚Â¡Ü´d0H²Ø$qÓP*sLjÚ=[MWJ.òâ%ÄJ†-e\Z‚E‡–ÜÈ·½ª‹$Ìí(wcË*ß[–Ğ(Ö›w¡U ˆ†™ì ‡QÃË{X\r¯§*Nÿ\0•OÃgLÙTX‹\\/kiÚµq¨ãö›¨^›©wgâc‘5`4½>ıèxHSXø ê9­)ïÈ1x›ÊIl¤[K›²vç—ˆ¡»7oH–×€ÿ\0|èÇOÉSs€t¾Ó¨>	hp¾M,c$Ù»y¾Ñâl{U<&Ô“Ä´Ë•€C-½9P=½*_)`€IçÏÓP9ÓVÆÛ-á°¹h×á²Ü¦Äe¿N”§ÄÇc‹\"%š¹c¶Ö4¹Q›]:Ò×Á´¥¦N¬¾‚ÂŞÂí-§†w+àL…ˆó¥P‹êş@x›_AÂ‡a%\r7„x©±A<E¢øÎ n[ÓfÆà‚(ÿ\0¸ƒ6N\"D|¥Í $i~ZÓf	…FË*+Ÿ¾xæç§\0·ª8øX°H>!f6\Z[•ùkPœ&FÊ°HM¯åRE½FŸZÇÔÍiüÇ\0Q¿nÑ›hl¶dc 5¼×ı=i3eáÊÌ¡µ\"@	¸:ƒ®¢÷àu­±X<t7Y`–5:A¶_î_­_Ø[5¼Xî-{Ÿ£šf4e4@ş\'Ìş!˜;{M‰Ò„	€\Z\rÌ\Zµ„{_U?u† ÿ\0¾DÑüfÀXØërÚz+[êoŠÙö‘E­uş¤~$UG	™ÌW ‚!-¥ÄáVB5\Z0çÜ{\Z_Ál¢§2îƒ‰âmn	\Zzƒø}j*ñáÚ•Õ&¥\r;[Z‘Ç‡6k(†_O•{Pi•êœuc~ŸZ½„ÚGÁ›ñ@`Ï+{×«…<Ô|éåÁæx%Kx=äfÒTI-Í‡¯[ÛØŠ¹‰ŞÜ<ê\"<\\B°C•­Æ×ãó‚b¡±Qk_ò·ëLØŒ\ZÏ³²Ø^>Ó~}ª¬KjJ’6õT±rM‚ñı™‘ÀÔ…‰éc ×½“b,ÑåqsÇ70Ç˜=ibÉq€•9‰#%·kO{SÔ{\rB]HˆaÍ…şp}4§â.FÔGÊrHÆ|¬NÚ´n0ø‡/9³Àğ\\İ­[àp‚(åš+\\Ú\\\\ëeæhüøYòb”°óYLmÓ©ÛÒ—1Ä£Â¼:‡1J\Zåó/Ë¥n½\'ŞÁ„·é ı\",›Uä”É(uå­ÉƒŞüIı*xCÈs¬fÃí*œ¢ü.h¶Şİeu3CbÇìFÀç$FÄqéÄpÖª66|4K\0KynÊÃƒ^æã¯Ò…Š1°Dêaf¦Ğ~+EËå n\r¯n®•BxÙÈÈ	¿2c÷šL@RĞÄ2u y>oK\Z“…‚f9cğØ‹ÙIÑºe½˜[œô%‚Çhgø\\]‹\"jÆúj=¹ÖØ\r¡cb-n\rÌv¢˜…ËÓ0:i~F-‡,ŠÍl@#§sX0÷LÒÊFÓl~Ğ»f2u\r¨=µªø$ÊDß¡Iü9p^Üıê,VÀX\nN¾Fı=ªî	pUtn¬¬·ÓÛ¥ö\rŒY·ja\nlmåbå]|×fR9A*9…\'[h$Ú™vV,™îÏ™°cšæÜ4Üt<)Wy£b†5\0dR[™.ÇRIª8wV„¶uãs Ï.u+¨È5\r¥¸›Óö4èxXåX]o1Êºğbl ½´¯HíŸ9Y$V”yÖÿ\0Şö:ƒŞœ°[dÆ¾ÜñÎ‡?›…ÙoùQ\\a‹¾b,3,y5ø\\\ZPa`¢y™A-¨vŠ³b\"ÄÀLHYÖßÃ+ÈX0M¾C¨znÜ!sJÂ¨Ïkt<8zğ«pîÄøiHÎ¼ˆ¸as{‘}xij«´0RKHäWËñ¥m{Ü¿}mMPA:x˜J°\Z¿ßÌƒ¹i,bl,Ä‹|2[R9\\|>â…±X_,ˆê­p/rn6ä}ªÄRO‡>]„ê<(¾zP ²ğ|Ú‡ä	½õu:SÃ^Çx§ÅVÈj\nÂãN%•D°î\0ï~´Gü;.!!QÕub@R¤üyÇ—-ïÂäÜÕ˜vr¢4pdøD›Œ­ğõôçÆº^ãîéÂ@Wñ’IÖÃ¢ëÈÄÒÀ[>\"Ÿ3ã£{È7orã…o)ñ‰âş—×Ş™Â•\Z-€è+5F—±qÊx\Z\0Ø×e2L™òd6ÆæÑËqÔUl^Ä‚O6EG!”\0nA\ZÛ\Z½œ0¨•ˆ64jä1\\\\Å+	‚\n†?;o™¡²>yˆû±7µÊÿ\0­Şj® ë¯„4ç|ßïåKÆr«‰—…ÑP{“úSÙÁ$Q¨Or%´Œ¼®Ãè§ó«1ÿ\0<·üÿ\0Jû;\0İÏõ±úø\Z!ÿ\0˜_ÀÒ›|BtúA_(GÂ¬«v«Ê@•k3Ÿ˜z‹~:’,=oM\"v‘n?Z¿†OİõSù\ZR©2¶j6Ş\nÑ‡e…ıÊ~¤\Z¿¹xµlğ?Â÷R=ÖŠM³ƒ£)ÕXzëHØ9Şˆo‰+ãŸ¾†¯é‰QRLÔĞ†#ğL	ø‘ˆ¿R5×ÔŞı©·	·¤òxÑeCmA½‡Z·q0xéÅ@ÄÂQÔ­Ï¨-ÎÔsu¶œrFc`3­íªğu3(ä±âqs!Fšã¶ÄfeU ©ØôQ©\'Ø¥s\rãÚòÈÿ\0	sÃî©Eö_­9íİ‰’S\"Ø+›?d¸$pàt•Kllh¥ïÀëoµÌŸ~‚Ø¶İÄPiÍäÅH‡ÊåHïD¥Úê]K\\’ŠIî@5&ŞØ]×(<@OÊ…¥˜a{/Pƒè)ETò\'K¤ÈÛï´(Óm4¿¥n¸¯â#((E¯”Øühd˜ 5,!PÉ´TA¿[=©cí/õÔra¥¤¬ÁK!cnvÔñ·zeØ®×Ï`#*¨2óKk­Wİ\rÏÄâ/#Mà«’TrAÖärÓ½è†ÙÃœ+]¸{y[›^î+rãePjf6V&¤©¶|ä—àG˜ƒ ³n:üêeÄ,êCF­Õo˜hyh=~t2ÅÔ_•Åƒ†ƒ[\\hmU%Ä,Kepy\0-Û¨¶–©ËJ‰gjî¶k´2H6e¶—:>t®°Ë™²ÚÇF]Q½Oji]¤2†,¤«q7&ü4åc¯×µf\nÍ’0LÌ4[€Âäëp.{SÊŠ<@8õ6ÜÀû?x˜6`ÖÀ+¯?[S&}\"Y\0€ùsy‰±R	à/KI¹\nä)nˆ×®Â¡‡tYBâ¢Ìªs€,m©\"ÖêyS},l-LAÉ\Ze¹ÔÓx0ò/ÆğÔq=wÒmÜlKg…ÄrY‰dÔ…­ßNŞô¡´¶-dhÊ‘™£pÁ‹æ6Ôsµ8nŞôÃ‘b\n:ŞÌî=úÒØ2p”LQÇGŠÃ‚15…†uø	*-§{PÌVÑ…ø}l4ëÃvUÚX|Je%MÅŠ0±±â:|«œo‡ìé‘ƒá™I±‰^WRN«{hu¦!G;óí‘ÿ\0ì“fƒÄ\\êì‰ĞlÄî½tÆÂ;aAÿ\0gÛ¶Ø<,pÈÊÎ31°ĞbÙG[_0–½íÊ‹\"¯yÏw,lÊË±Åµ{ûVĞì¿lŸjØ¹û<z“§Ö½ŠI/ÊÕ:ŒwÄëBTÜüêÒÚK%¬mA½qÚ&Û’\\KÁ!A¬xùA·¦´æ]#h$Ô±´¶©Äâ\ZTøT„ïZæş—¿Ê½Ú\nÎAøšçÛıŠ§±á+[uoËò£˜8H‰Ìı>óÃñµ!Iv¡\0naßÂø8{ÚÙQè.OÖõ˜ÙŠå¸·§0GZ›lí%T\nº*€tıŞµİ¨	ŒÈÜ\\éı£‡çTç]	¦u:b*]ğ&ÿ\0¬íOÒ½«­eGFUcü$ƒ\n={\Z†M—ã\Zü­øUŸıßÃõ­ç˜?OÖ©\0Ií¥S²T|%”ö?­(oÎÃeÿ\0™RZÖi­¸ïnµ©ÜÎzZ©â¥¸ €AÈp­ºš,Ä\rÚÚmŞ÷S£D\Z-‰Ãx³@o	øı3ÇÂn‹{åéÃ¥Û˜†“AxXùOİş“ùUÍ‘·‚İ\n‡Fu<:E—ı´Ø•Æ“Ìi‡lÅ\"•Ù»ÕLfVÑˆáÂßj„í\r›•|h4C6‹³õ_êåÏ­@ÓHà(ã}	:Ü{TÏ•ÓfàÎFLE\rG|fg!3 \\vãÛ¥¾´Á5ï­=Í†.Hæt‰=~”7³Ô›sÔ?>B³RA³5\Z¢báœò6ù}höål)\'œK¬z–6Êìß¯[QXöef\0è5=?Öº.çáÒ<,@Õoï:±=ïøWGA—ÑøÎ£r}“ƒ’%®À\rH¿ç@7—d¾=Çîê¾*œ¤»c7®¹ˆà/]Ùm¡ç¯\Z†ÙÈ³4Ù@vM¸s#…ûÓô©bd«=âvÊÜ|d0ÄD¬4Ó3Cp(ô;¹‹ci¿vqkc¹>£_ÄSÕàì5°)?–Æ{BüÃÎa¿»ã¼i\n—¸`Ñ‹EÆ[ùšü»éÆ‰îÇìûå’yü.¢ŒÍn6c{…ıi§mÂ‰ˆŠf»²>Ê°µÍ»ÜQl.Ò(e\rcÕMşµ¿—JâÄ6Í’ƒ.ÑWû0O0ÄJ­a­”ë{ß€¤úİ9°ì²	 $æç8ûÇS{ëjë³í4C•Í‰Ôf½}ÑÇıô­ôT\n .l€Ûo8.\"ÆÈ€(Ú_LâÅmĞè@¢;;w1¾›ÃXÄg±ÖçMk×dÚ;­†œ%f·Ä<­cÊëcjwj4P‘³ Q¥ÍÇ¿3ó¤¾&\"¶‡ù…&Å‰ÈğxÉT€å×)à.-úštİ<sMˆ‰I*·$‚xÙI]u6:t¢û_cdRÌ« âo×ò®q½”ÃH’ÀË™6†åH?\rÆ‚ü-SúEXClšÔ‹í;ªŠ‚xÏ+r¥½ÓßX±q+ƒ”ğ`x†A£ãiG÷…ÑÚrêl£_†ç¯ıMXA”kC1;r5\ZkJ»{}R;æ{tSò Ô«ñ3#~ÒÚÊŠMôSĞu®sŒØ1,!¸ñŸ½Ø“kòã@ö†üKá<Á@7	:ùîç­”h:š²±›C(DšFcÄæ²¨êm`ÆÙ˜%Kñ:#a•rÚäµ¬·ıó½\n±oæ5³ƒˆ3Î¨ì]I.e…f$“ı)~\n*¦ÑÚì#Œìlª9¯şÍ?5Ä/¼~.œ™/„Ø™„kÏâş•æ{w§˜°áT(\0\0@8P­ÚÙŸ»¥™XÈÚ»\0=\0±½…¤æÀz‚?\ZK¶³fUúvÏµyV.;VPé5™QšÚ*7«SDÔUWòéË­l0nTÆOağ“­¨|ò(µÃ\\‹ØTGãT±~Õ­ÃùP1H#H¬,§ì·§*LÅàÛ\r \"æ;zÈş´áˆÄÆ|¨×=ÿ\0JŒCb¬47Ó—ûåJL…\rÇ60Âi³¶£FÁ‘¿ßçé^ãğfP_\r/…!ã·„çµÿ\0–OA¥šh…Ç1Êı5¬ÃíK5Áæ\rT¬®?äŸ& vam\r¹Œ‰ŠHXs(/ë~Ö¤Øqä•b—)0€\0†¾‚ã‘ı(Î$¤Ë•€#—Qé@ñ»¾ÊCDuØEnœdQQ$~–¿Lêû©K‰ğHÉ™Aæob{ê‹WÅíÏÂ•$ğ±1›Ù´ós±àÊx[½5ìßÚ‘lFƒ«!\\§¸ŞB×,\n3¡Ë*y\ZšÇÜÒöÏı¦,²å1ä\r¢–:_ú€\Z{W¸4ï;ÊqÑYò–#”Ü½Áï}jŒlã1û\"›ojì:dÕ]£„“Ã-ÄÌ5³æQó®q¼³¤3ËBW7„NP·Öä€N”dPU±w:¦†%³^ñ­ÀèÇô£S¸D&Ö…ì™¡5\në”kkv ûÑ¼è¼.@°u$ô¡Üó1T»ĞâO>ÏiÏ”©$ÀcµE6<\0àmcA%Úø©:-‘X6A{°\ZÚÇ²â–Ò£‚Ï¼x’¶Õ{Š+¹C©xodí…e\nÌQ6`E\'bwvŞh%±ûù7ë^G>:=<\"@âAWˆ“¶5&Áæ@ÀƒnõóŞÿ\0ÂN:t‹ùy¯ÛP	ı}ë¯á¡–cw‘UH¶Œ	ÿ\0JFßÍ“…Ãğåy&&ì‚¢ü®\0×°áIÌt‹9-pØi `Ñ3!°Ô>£´c¼¸§$€\0q(5=¬*ßÒ]ZÊlœ4«»\'\0å‹EŠÃ‚¨¸ÍÊíğ¨u®~¶cL7“)\'a+âö¦!‰1ôÌ«ô\ZŠğ‡`¹—^@‚IìÉ£±n3x˜ÜB¥É%# uÕ¸\n5Ä`ğƒ. è_âcşc¨öª\07&£×¿oüâøff1@‚ö?Ìr@¹ËöF‡ºğ£iˆ‹¨ù·v<è.ÒÛ¹¸›öÿ\0zT8Ø›[ÉŞ7±ôXı+}@‹B[‹¦Ò(ËSí7•ÂD3;tü»wáMÛ±±9óLÃÌİ?¤~¼ê®ÆÙk‡@,~#ïÓµÂËÔ\Z™²—1å(m\nÅ\'QS†UªÂÓLãyï‚Ÿu~B²½¬¢‹şeuÅ¡àÃçXÀ\ZÚXãn*¨ªÍ³Óì–_BõXcDŠ| â\r½(v+Ã•êìøiGÃ(=™0E\rÄI‰[Ş%qı/cò`?\ZSÆ¡>eNBëÚÔ;‚v½¯Ä>Ü…“küÈ¥Õ	4¸¨—jÀæË2Ó0¿ÈëI ÊUŒ»4 °¿¿:¥´6b¿Ä.ytÁ*F¨b°5o4‹Š³ìùc7C˜}~\\ëÜ>Õ±³\r™}j†/­ÄS×7˜£¸dl5\nGBAˆÀáØj\Z?ì\'ğáT±7î±µI¢•:‘ØÓÕ÷ˆÉ}ÖäßàÚæŠbÖÍD_iÌ¨Èñ0Ğ¼v*{°µşT÷¢8ÜTñí.FôÂ\rÚ˜…T¿®|L$ç3â;³”^şQÇŞ¶›iàñ@Œ¾‡ïÛR:71ò¡ğbñ·¸¯Y\"<BšbÂÂô5pÒŞÂy!s™Œ|AVòNÔÕ„ß\\,D‘÷˜­şTCì™¯Áæ€û×½GâkcÉ¤.¡öÆıB!@/ áóª;{<$à‡¹ñ\rÅµbAÖÒÆÃÿ\0‘¨Ÿ(Á÷4^¦Cãå3ŞXsïÛø÷P§FªÌæRÜ»ü*vı£¢Ü&vù~W®yûÚ¿*ôm4ôˆdÈ;ı&óôŒx}»9¾@ç1&í§\ZÖ}âù±…^v]N½Ï:]|{gçZ	ØÒÍ“ln•nlÆ¼4?À†SÖBH¿§\n“¾òØ\"eGP\0Ãô¥4†F«0l›üMò¯Š;Æg²Ëx¶\\êK\ZÒÙÎPê=HKÜÕìÎDà¾üM£\"ŸU½Lù…í(Æ„\rä+eÄ¤ó¬4‚™ğÙl5¡0îü?d2cºıµZbÌºÇˆoGUaó?ZI7Ş4Ô9Î¯ÂÃ/Ã)t\");†t?\"U¸±ò	VÜÀWø›ı+TÅ0ŒQ(«-ÀĞ\\&×ŒØxŠ§£)Sò4R\'$hA¿÷OS\'u–óƒçYPe=~•å3T^6d¨Ù++(%•§¿#Tæ‘…ee-£–U“yŠ©ˆÃÃ.\Z·÷(?ee “qÔ*R“aB>ñÿ\0k0öÜ¯Ò©O²\'[äŸ7;H ıE­^ÖQ\\ğ”æ/Å\Z7trÉ…¾´7´cÍ•îĞ‹ÿ\0õ¸¯k(‘Cç‰4&8‡\n©$u••‚K<@5Qğ‹Ò½¬¦«–Q!l-¹Ö†#Ö²²˜	‹¡51µ£!ëYYEf	_½l°VVVê3ÚDİ`­–Ò²²„±„\0’$C¥X:ÊÊY1‚ZŠ:½‡Š²²”Ñª!<4W¬¬¤aö„à†­Çeel,Ä¢­Gee‹ia\"ˆwŸá‘}À=4ü++*ŒrW&æß¸¾ÿ\0÷\Zö²²™ÌÿÙ','ADA'),
(36,'SPRITE',13500,'DRINK','False','ÿØÿà\0JFIF\0\0\0\0\0\0\0ÿÛ\0C\0	( \Z&!1!%)+...383,74-.+ÿÛ\0C\n\n\n\r\Z-% %------/----+--+/-----.-.----------------/---------ÿÀ\0\0á\0á\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0K\0	\0\0\0\0\0!1Qq\"Aa‘±³Á#$2¡Ñ4BRbs‚Âğ%rt’“¢£²áâñ35CcƒÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\05\0	\0\0\0\0\0!1\"2Qq3Aa‘¡±B#4RÁÑáğ$ÿÚ\0\0\0?\0Ü@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ú¡J]QNO¹,°ÄÎ#,ßQá[ŸÍisÙÙ†ı\n/².ÓÉÉ«Šoµ?wŞÂen›†-óq³.+·<ıhvpÖ-ŞˆªŸ»H%v@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\08vãú6£ô6{¶bz4»àŸGçn8şT}q y^Zÿ\0¦^ğ²8úËÖ¹¾ÃYÊ*­×’ıKñcÜ½…¨{èû€\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0>.®2‹ŒÒ”dš’i8É5†š}k\0~t³w•¶YÑVœxæâ’ä£ÆøqèÁ^«›¼äê+›•E¼ÎòíÙ{¢¿N¬¯é©rMrqVÃ>¿&LSsv´Ü¹ÛSÚDõoğŠI$’Ia%É$º’E—¥}\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¾»O¡ÓJ1x²ï›‡jÏÖ—¡{QÊ¹aS[vmÚœu¡VØ\Z5ã¹~şr­¨é­E4â›gJœ:º¾ì37#l¦½DM+&ëíš…Äó:üIö¶º¥é\\ıe›UsR·¦»ÏFıcdÁ\"À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\05ŞoÊuM§šêñ#ØŞyËÒü½˜)İ«š¬8ÚŠû[¿IlÚğ¢-Æ!×«†b×˜Ú­á%Q˜Cì\r¡ò}Râå|Yv\'ø²ô?³&–jå«\n¶nvWwé-]p\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0z¶—CCáx$qÖ¹xÒ]Ë>–ˆîUËJ¾¦ç%u•+C§ÂK´§ç[§Ÿ¢Hš!n˜Ùï.hÌ¶W6î“9óó+×•=E¼ÂÛ¹ÛW§¡)<ÙW‰<õ¿É“ï]oµH»n®jWtw»Kx±´§‰À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0=¾[Üç¬š„T««æã–ùáøò]òû ˆ.SÍ.¯UÍvqÒ6ÿ\0.].òZÚÅpõÏï#äÆêÔë*™ÄBzµ{K¥Oïë´Ş¹1ÒßÂº„¾­?Ş}æ9á¿kwà…Ú{ÅbúÕWèr^ÓŠ”®ë*¦qU0çİ]ëtëa)%\ZíÅvsä“~,º¿óîr%·Œé5<—y§¤í-¥ˆ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!wËi=>ŠûcÊ\\*1}’œ”ôqgĞbz+ê®övªª\Z†YÌLì°lm9\rr“Oo|®›?GÉ\ZDe×·BRZ%ƒi¥?$)ÛÑ¡Âmy\riÚpäëíwr£j£Ì±\nv§fó¸ÛAß¡¦rç(®	v·Â›óµÂı$”Îaé4Wfå˜™ôú\'Í–À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Tğàù¶ğ••gúÄ9*¯jc2£ÄsØN>jzŠ×T—ªOàoN‹Q?§ï?4Õ=)ü;´›zºñÉËë?`ıÛ~}ÑõKnºéı?tÎŸÂ!ÿ\0…¿ÖÇì™~<¾«têîGè¯úuÌÈytïúÏô~î¿ğú·ıºçôG×ı\"ö¦øWrkÃ?œåû$sÃ/ç8ªµëõÜŒrıÕéİ[yãK½Kî3ûøı?xR‹uÓ¶‚©\'¡xiüìú»¢Gê£j£ô2&,oç+‰—D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nËø²ïåSï ZÑÏñ¡WYìe„ÈíeÃ‡ÀË)]ÜØ’ÕİÑ\'Á¸§,g†)¥Éy[m$r¸Ç£‡iûZ£3Ò#ÎÂŞK:‹œ‘ó^5›¢…M¾•5Õ.5Å7äXk‡Ÿqá´¿ıO¿~)\\O»DyõÎŞ®Õş¦µjjœíñRµZeUKOTø«NÅxÖ<¾’´¹¸ÉM¤ÒÂPjÏÑ­×1=éëÿ\0L8w-ÄÄrGN¨Û´–AfuÎ	¼\'(¸åõòÏY4W;J)¢b3-›ÀÏı¾_§³ü9:ïkòu´^Ëæ¾ÖÀ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Sğ¢³³n_W¾cK8»\nšÙÅ™ù~XşïiTµºXÊ*q•õ)E¥(Ê.È©&Ÿ&±“¥v¾äú8šz¹®Sş‹dÕ­r”6|«Š¶D(…/„5‹xÇ(¿Q^nÕoìúÂı4Qw3mçş\\›\'iB‰J;>\Z›\'.sŒ•IÆ)·Âáùuö{J\\K‡[×Ñ~cnq™ød±©›31b\'3è´GAu²©êóÙut8ñ)]›!Æâ’J5ø95™a>I¤×?KÂìéç»·Ú6ùç3>j›·f&ìûñ‡–ôlÍ*²WßRR¶Z•\\a;åĞ.Š2X}yP~HFyYgbİÚâ9b|šŞ¢ŒóUïöP6ŸSıQ±ùårãÏ©~©r‹‘¼¹·j˜Ä|3õk>ÿ\0\0±vj\'îë†®ss?SA9µó^Ê«À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0«xKYÙö¯Î«ŞÄÌWÉºœiçåùdû5tr•ë“©>ÒN.0ô¬¹ÿ\0ó6Fc?§¹Éšü¿3Ñqİİ5ZÍ4÷UÑËEl\'nË¹Á§å}R‹ÏZf\"îù‡_KT_³ËTc–~¿÷½,¶Å]%l«‚¦ë¬ª\n1JˆBŸ“ÆŒW)NRœ’ìËêÁ¬Ü„Ó¨·n©Š¦6Î=#o¼«?hßU:Xªá\\©¶Ûå=Dã\\m²ÈÙÔR’JÎµœ´fnÄ©Ó¨®)§lbfsTãíÕçfªVVé¿iSÑ¹NN«S5ãÉÉ®8Ö¥Ã—œqc«Èf.Ó˜G7ù£–»±IŸº?ztô·§•BüQ]SiJŠ¨ğ)pËšN<?Ñb5C«®ìÑVvÇÑ~ğIhíşq/uQ‰¯ŸwS…U›3ëı¡w0é€\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0±á!ÙüªıäM.xT8Ÿòõ|¿,¢ZJ•jJ‰4ÜdŞSçœÅõ%õz‘^rİè¦\"&:n°Ëoê­²ôĞ²·,M*¡Lœ\\T­®<åÎ\\±Å—„°Ş\r¹¦g.‡íWkª.EQˆóÛ°·]‰JUgŠM¹[$•²m·\'r¯›WŸõ\ZåJ»ø™äëçïÿ\0Nsm¾móo­¿;\nÓ3;Ëù€ÆL-[ÁGàvÿ\08—º¨ßG¤áÂ}gñ¡»ª\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nşıÑÇ¡¶=\\ë÷Ğ#»8¢eS]oÄÓéùbûBJ©p¾}Äw£0óUij¦q—ÅV©u#3NULÒ“Ñl©[Õ(®üüj»ÎØÒÕv3ï–ìMuÙTŒvĞ³<6¨ıP‰Öéz9aµ.ãz+æŒ¨İµÙÕË”|µXic¯ÏşDÜ›3MœÆrÙ<\ZÑÁ£l¥ı˜/½š³KÒpÛ}œ|V²W@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÛŞ¾‡wt_ªÈ²;Ş	A©œZ™a{Ñ?,†ÇG¸ÍYxh_QµN}øZöŸo´£~7YĞU8Nßœ<?!©Vq²´ÛâyëîkÚ]µÑÀ»½ÍĞ29õí-GEš#ºŞ7\rcKúïü15Óx>oA£Œ[XÉÖ€\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0½:=Gš¹?RÏÀÒç†Pê=•^Œ{—yÜ»9’Vçß…§dÙ…é(ŞŒ¶ÑÕˆJjnÌ^<và¯ºıÚû»+\ZÙ7œü~%ú:8ÙÍ[¡`³l{ÑcÜ»ù¸Ïè‘}²—Á|\rtş«¿£œÙ‰X	Ö€\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¼?‚jCo»f*é(¯û*½%o>şıE]?Iqsœ86k%­OP²è\'È«r7Cbqö¾î_îGM;¶»wdV¦]ešUèŞQzeó±ï&Ÿ\nìÎ)o{Š¾ƒWÏŞHXğC½ ş^”ù*à\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0<5°â®ÈöÂK×ŒKZã4Ì??ïmiUKó/aOM=\\”Óè…ĞËŠ•ïFa;¦»5S•i¦^¶]“X§\r*ªj—¦Î_ç“za5ºwpéeó‹¼–z,İömÿ\0r—Ğhî“õÙ&f×‚ıòôz\'	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ç{ÄdüÏØ«¤¿?o\\¾j¥Ø¾-7½çsá…{K2Ìµ¹	(]ßâG…J­åé-J1†‘iË¨¹ù~ãh…š(‡>–Ïw›ÏF÷iîKôâYÅ ÓµÙ5ê²Kàfß†¾?ù¨ôO›®\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ƒnßÑé¯ŸäÕ7éáxûpkTâ™C¨¯’ÕUyD°Mîšj	ySMKƒŞEzˆ´Y–õÌKûuøQF_UXÙ†*¦!ìªÉ„|øsÙãt±1T7ßÚ•=Ÿ~$ì‹ïrãı³4tÃ©Ã§ø8ò™…´Ùx\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ıı›ZÚòğ/]°Oìf—<2£Ä§\Zjÿ\0ï|0½½>)¢+QˆplUœË–r7Ëi¯w-ÚV\"SÑv!Ó¤Ó™Cvâ_M rM¥œÍjİúü0‰ÚTá’Ñ++–¹àNyĞÛæÔIw[ø£z]Í\r8¢~3ı¡¡/\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0|¨ãĞêRçŠÜûø<Ù5®3LÂ¶²ß=Š©ø?<İ¬’\\//ï]«´6pi±UºwKh´üK‘Ua[–j™Ãù=7›´s4Š°B¬±3•ÇahWÉÜ¥o—©}ëÔVªs.¶’ÔvY•7kéüi.ÆË6çg6\'–¹ˆók>	4=Í­µ‡u–ÙŞœøbı1„_¤³£Kµ™•€\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0|Î)¦šÊk\ry\Z}hÎ[ov~I¯·O((EfTÏÌëo0qmã)e?:h‚­œ=uUY‰Œæ;*·ÅÃÖı¾r½ÙÛ.]©æ¯ozOQ³|«å}YêÉ\r7|ÓÜÒ{á¬‡Çib‰ÊœÛ˜«6‡hÇäñƒq\\1ò´»ÊõÄç¾õ3f!\r+ÕêaE/‰Û$¸—5øÒoÌ“~‚Íªg\nVìÍÛø{sÑicUpªµˆ×Â+±Ea}ˆ¸õTÆ#÷€\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0~×Ø´j¢£¨­YÂóÎ2ƒòğÉa¯_3=Q]³EØå®2‰ÿ\0tI>N2ÃÄÕ–qVûcÏïLÒmS1Œ+SÃ¬SáŒ|ånëjù%*&–rÜ­ƒ}‡…ãÉË%9ÑÎv–•iîôŒ%6~åé£ZWÕæùÊRM®è¯\"EÊ-E1„¶´Vèôf}òŒÚ\r4óy¢Ééüßõcèây^¶&Ü ¹ÂíU9§dÖìî\Z,Ê¾)ÎKsiËËQI%“h¦!gO¤·gzzù§Í–€\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÙ','ADA');

/*Table structure for table `tblsales` */

DROP TABLE IF EXISTS `tblsales`;

CREATE TABLE `tblsales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transno` varchar(50) NOT NULL,
  `sdate` date NOT NULL,
  `stime` varchar(20) NOT NULL,
  `kasir` varchar(50) NOT NULL,
  `total` decimal(10,0) NOT NULL,
  `vat` decimal(10,0) NOT NULL,
  `discount` decimal(10,0) NOT NULL,
  `totalbill` decimal(10,0) NOT NULL,
  `cash` decimal(10,0) NOT NULL,
  `schange` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

/*Data for the table `tblsales` */

insert  into `tblsales`(`id`,`transno`,`sdate`,`stime`,`kasir`,`total`,`vat`,`discount`,`totalbill`,`cash`,`schange`) values 
(28,'202108150001','2021-08-15','11:59:24','Sujiatin',56786,0,0,79500,60000,3214),
(29,'202108150002','2021-08-15','12:59:49','Sujiatin',71929,0,0,79500,75000,3071),
(30,'202108150003','2021-08-15','01:04:55','Sujiatin',41571,5196,6929,48500,45000,3429),
(31,'202108150004','2021-08-15','04:13:06','Sujiatin',76286,9536,12714,89000,80000,3714),
(32,'202108150005','2021-08-15','04:15:01','Sujiatin',79500,8518,0,79500,80000,500),
(33,'202108150006','2021-08-15','04:18:37','Sujiatin',79500,8518,0,79500,80000,500),
(34,'202108150007','2021-08-15','04:22:02','Sujiatin',110500,11839,0,110500,115000,4500),
(35,'202108150008','2021-08-15','04:24:34','Sujiatin',48500,5196,0,48500,50000,1500),
(36,'202108150009','2021-08-15','04:57:16','Sujiatin',48500,5196,0,48500,50000,1500),
(37,'202108150010','2021-08-15','04:59:02','Sujiatin',31000,3321,0,31000,35000,4000),
(38,'202108150011','2021-08-15','05:01:54','Sujiatin',48500,5196,0,48500,50000,1500),
(39,'202108150012','2021-08-15','06:05:35','Sujiatin',26571,3321,4429,31000,30000,3429),
(40,'202108150013','2021-08-15','06:08:47','Sujiatin',44286,6643,17714,62000,50000,5714),
(41,'202108150014','2021-08-15','06:10:41','Sujiatin',22143,3321,8857,31000,25000,2857),
(42,'202108150015','2021-08-15','08:07:03','Sujiatin',44286,6643,17714,62000,50000,5714),
(43,'202108150016','2021-08-15','08:16:59','Sujiatin',34643,5196,13857,48500,35000,357);

/*Table structure for table `tblsenior` */

DROP TABLE IF EXISTS `tblsenior`;

CREATE TABLE `tblsenior` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transno` varchar(50) NOT NULL,
  `sid` varchar(50) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `sdate` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `tblsenior` */

insert  into `tblsenior`(`id`,`transno`,`sid`,`nama`,`sdate`) values 
(5,'202108150002','123','okta','2021-08-15'),
(6,'202108150004','1111','okta','2021-08-15'),
(7,'202108150012','1111','xxx','2021-08-15'),
(8,'202108150013','234','yuni','2021-08-15'),
(9,'202108150014','111','ss','2021-08-15'),
(10,'202108150015','111','sudji','2021-08-15'),
(11,'202108150016','1111111','ani','2021-08-15');

/*Table structure for table `tblstart` */

DROP TABLE IF EXISTS `tblstart`;

CREATE TABLE `tblstart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sdate` date NOT NULL,
  `Initialcash` decimal(10,0) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'open',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `tblstart` */

insert  into `tblstart`(`id`,`sdate`,`Initialcash`,`status`) values 
(17,'2021-08-15',1,'open');

/*Table structure for table `tbltable` */

DROP TABLE IF EXISTS `tbltable`;

CREATE TABLE `tbltable` (
  `Tableno` varchar(50) NOT NULL,
  PRIMARY KEY (`Tableno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbltable` */

insert  into `tbltable`(`Tableno`) values 
('TABLE 01'),
('TABLE 02'),
('TABLE 03'),
('TABLE 04'),
('TABLE 05'),
('TABLE 06');

/*Table structure for table `tbltax` */

DROP TABLE IF EXISTS `tbltax`;

CREATE TABLE `tbltax` (
  `taxrate` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbltax` */

insert  into `tbltax`(`taxrate`) values 
('12');

/*Table structure for table `tbluser` */

DROP TABLE IF EXISTS `tbluser`;

CREATE TABLE `tbluser` (
  `username` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  `name` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbluser` */

insert  into `tbluser`(`username`,`password`,`name`,`role`) values 
('admin','58acb7acccce58ffa8b953b12b5a7702bd42dae441c1ad85057fa70b','Administrator','Administrator'),
('sudji','78d8045d684abd2eece923758f3cd781489df3a48e1278982466017f','Sujiatin','Kasir');

/*Table structure for table `vwcart` */

DROP TABLE IF EXISTS `vwcart`;

/*!50001 DROP VIEW IF EXISTS `vwcart` */;
/*!50001 DROP TABLE IF EXISTS `vwcart` */;

/*!50001 CREATE TABLE  `vwcart`(
 `id` int(11) ,
 `status` varchar(50) ,
 `transno` varchar(50) ,
 `description` text ,
 `price` decimal(10,0) ,
 `qty` decimal(10,0) ,
 `total` decimal(10,0) ,
 `tableno` varchar(50) ,
 `user` varchar(50) ,
 `tdate` date 
)*/;

/*Table structure for table `vwtable` */

DROP TABLE IF EXISTS `vwtable`;

/*!50001 DROP VIEW IF EXISTS `vwtable` */;
/*!50001 DROP TABLE IF EXISTS `vwtable` */;

/*!50001 CREATE TABLE  `vwtable`(
 `tableno` varchar(50) ,
 `bill` decimal(32,0) 
)*/;

/*View structure for view vwcart */

/*!50001 DROP TABLE IF EXISTS `vwcart` */;
/*!50001 DROP VIEW IF EXISTS `vwcart` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwcart` AS select `c`.`id` AS `id`,`c`.`status` AS `status`,`c`.`transno` AS `transno`,`p`.`description` AS `description`,`c`.`price` AS `price`,`c`.`qty` AS `qty`,`c`.`total` AS `total`,`c`.`tableno` AS `tableno`,`c`.`user` AS `user`,`c`.`tdate` AS `tdate` from (`tblcart` `c` join `tblproduct` `p` on((`c`.`pid` = `p`.`id`))) */;

/*View structure for view vwtable */

/*!50001 DROP TABLE IF EXISTS `vwtable` */;
/*!50001 DROP VIEW IF EXISTS `vwtable` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwtable` AS select `tbltable`.`Tableno` AS `tableno`,ifnull((select sum(`tblcart`.`total`) from `tblcart` where ((`tblcart`.`tableno` = `tbltable`.`Tableno`) and (`tblcart`.`status` like 'pending')) group by `tblcart`.`tableno`),0) AS `bill` from `tbltable` */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
