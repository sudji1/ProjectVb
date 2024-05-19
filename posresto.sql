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
(35,'SATE',17500,'MAKANAN','False','����\0JFIF\0\0\0\0\0\0\0��\0C\0\n\Z\Z\Z\Z\Z\Z\Z!\Z\Z\Z !!+\"(#4#(-.111!7<70;+01.��\0C0(\")002203302210100002.9000000000000022020000002000000��\0\0�\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0A\0\0\0\0!1AQa\"q�2��BR���#3br���$S���C�����\0\Z\0\0\0\0\0\0\0\0\0\0\0\0��\0.\0\0\0\0\0\0!1AQ\"a���2q����B#��\0\0\0?\0=,��-�TR�^?8�:��b��KfF���<�s~Q��9�OyB�8�0޻B�<|x��G��v�=E��l�[�\"�ƥ�٘���Wޑq�&{j�Cۧ���;~4�����g�����\'w��-��;��G��E�Sb�As�q����R��/\"�:w�N�M��pD6<��c��m.�ʃ�Y�#�?�G�#�#(;�~V!F�H���>��b�?�U�v=}�օ6�âe�\0^�B�{�E*���>tk�k��:Gn�����!fԞC�PH��Z�am��^����LW�fU%�U\"�\'Mz�!��:<�p։�|��>�gڼ1�d�M+zdq��ئae7�����T�_#�ևnȚ)�LB�u����u�>���J��js&Ʉ��&�1���%\r��r�[�Z0������S-�\0S�����7�yp��>b{)#�k|c���v�?�ŅS�a\\`��f\ZA�g�cg6����\Z�o2����K����a�b���f� �Ӧ��+B��V����\\	3Ȁ�#�=�>�����9	�\'�1�	�Q\"٣q�EI?�E��8����\0t��7BI<�*�K\0Q݋��ĮL�<�y�A�����jާ��q8���[����z�#Np8LV!@[E\n� \0���	�p�U�����Rz�&����h2����K#Q�Ǐ�t:~�6A�\0�o�������W�����\0Z����B����CJ��������?:6-�ݘ��M�m:�\0����<mm�\"��Ɣv�֒cy��T/Yz!�N�\0M�~�{�{�<f��@�\rQ���ubzk��u������x�p��?���(�Ov[q�C�\0�ҙpSE(W��΋ G1��Z[��K�3fg��\0J�ս��US��3̃�?�GJll��㺱�s2#q����l��YU�r/�� ���n�*)\"e�����P5�}�Բ�X�<���X�ݍ���8����>J$�b@�M��W���I��T{�]j	&�]��3��Y\0�-���E��xU�(�5]A�\0��OB��n��B���X��v�\Z���T���!P�g���_�̧�D�Ǭ��7���9qMǭe��`�gĚ8�	_�5�/��s����J\0��\rm���E`�x3�=@#��G�Lj�7���ha�Y&�+|Jz����ƪ��%o�#[w�MK\0q<2��W@�ۇ֔��Β&�,l�с�:��fL��������O��]�-C�F�Z��������L�ܜ�������/j��n ��,��x1���z�h��\0q\Z6�l;Zee���Uo�a��{��b�ZYd\Z*ϑoҨ�]��%�gQ���Q�&��}��D���bG���F�L2�\0��:���qE�S��OS��WH5��#�{A�_u#���m23\n�x�F\'2����o�8hx0�+|V�M+Ā/e�\0O���(�L�K\Z��鿴j\"�^̎���|�hf�ި3�w�lˉ�!\0���7����\Z�B#٫��W��rw��\0��g�=�Ύ���z���0xEI|ֵ��������\\��B�)>T,{�U@Gq�1�\r����p�2�f���G��a0����|��nt��]�;Q��.�����\rg��(oɑ�a3h�9f����3a�z��nH�cF1�o��֑��W.q��9����vD��Cy_�ʒ剳��~�6!�\'>��|evb��z�Mj�W�fF@�\0����ʤ�b�`���h9�\'�x����\'�]-~�>�I�)��ҡ͈\0 �(a��%^��<(6�ٳ�fh:\0�U\0�,f>�GҌ���y��^^�u#B,z\Z��\\�T�5az��߭W�ҳTK���[�i6\\`rF�4?fJ�q&�7�E�Ǆ��>�����c�����*��ʤYG��Ҝř\0_�|T�:��œ����*7��s0�\"�H<�-QűZ֎;r�?;WH|2�\"߅�ҥ	^= �:�;Ne>�89�g=��o^�?�x����U�����A���*����`�=\"��h�\r�\'����FK��T���,o���&���ʻ7���_�h�0*|�X��=�׫�8?Dp�(%Ak����H���G�E���f�\n�o���VU�g���<�б`H�,lk)^�h�S����>p3D�2q���J|C���6� ���B��bl-��\0���+,�.3�\'ٙX\\�2��O��eT���I̎��`ڙvF���\\K4\\8G|�{��˸p9&9��K��`,}�C�����Q��\ZC�ќ�܋��yw���>\np����e�|��jW�;�o�E`>Ҍ��t�ޤ�Y��8�Ǹ�����1x��:0�n�ōr����0�ř�N�c�T�T�L�J������h��f\ZG���ܰ��_+�Q������4��1�E@u�x7��6N�0�A��f�@\Z��;���ޮb7^<J�6t��!�ecϳ[�ױnQ@���ϟ��;��y\0��߶Z0��}�S������b�u1��=�v�Q��O��t��;O�Tч��hv?d���0��r�NM���l�9�j�-6��Q>-��13��[zڧU`rƊ=�2l�+.V��O�����ύ�/������~4�����*��V�V����[)ԀΠ�~\'�I�@�k��U�\"5g<����P�M��2�l����z\rn�I�(�[��<	4���v�Ҳ�.	_������blȰ�0�Om��Vn�����Ћ/��1Ugk4 �J����ߩ�ޖ4[u7�o�\0[�Y���\0n���0�����T�徤ޞ�l>�� s(�ʋ���\"܃�� �W���@��D�D�W�l���I6�:�cyUx��xz���7���p��x�w���\'��,N��t��\\���P;N�1<��2P��>S]\'{�BI�(��R�w��$w��h�\'P�Z�o>ﲨ��I�\\\rW(7��\r(566�N�.3�����y����O�m��.�J��w�іO�Ο1�މM�e�J�(��v6�^l�11b-��w�\"� \'3���eq��Sp�����M���������+b4 ٖ���\\�lL��Q��-\r���h����-�NN?>��:v�u�}їh�\0����Buԣ�����cc�Ф�K������Rv��@�ѿ��V51���xث_�C�F�W�����4���η��q{u�+��%����ua�ap~�kgm����/�����M��Y�V�?n\'J�5�[\'i,ч�`Aq:ըgV��� mO��VW�{ו��VŢ�8�[]�f�������P/j�f*�B�6��*I�؊)���W�0�#k{�\\Slw5:�l.Qx�d�Z�`Wԭ����F�.h���,g��d��ޅ�����J_4�L��_�j�e�=�+��%�.$�N��k^)|��=��Ω�R�}���T��d l<p~�6�A7��^�{	3�����!\'�_+k�U6��ʩ�	�5��VP9�\"�=-a�֢Y��4���[33發$@�1��ý\Z�cF_	��bY$���}�A���南�GM\r��G\"�۵^1D�J1��h��Ea��]GJs�+��I�;U%?	���(4��d�\0)mG��b��1X�Aip�����td��>��}�0�̄-��j�t\0\ZZ������8wH��AV����օm}܏�V�������Ǧ%UЂ\0���gS�Xq��ky6ʦ!Q�e��p���<��Ѭn���)nH�H\'�� �z���(t�.,5Ɗd�8G�t\"�\rkd#���_q�Ǐ�5l�zJ�ĻFoe\'Χ�����\0Z��u�1[��#[-���_Ɩw���⢃��\0���cn�hy�EUw�_R,[zR�=j^%g&ja��{պ�A<�V{�U9�Zn&ї2��L��T�G�u>�\ry��#{�b���N�^��n�ki`�\Z�,8�c��ĤZ�{Y��＇?I��M�!�v����a��m0w��&�M�7��0$*��$��<�z�o��Ew�o�$ndD��\0�M�(�2;Ѓnr�i��OxJ\"��E�ֵ���ص_1����$���E��ַ��5P�8K�e�{fU��\r�1�KrG�\Z�a��HYr�cq�Z,KXn«�m{�x��2�2�P�����em���a3�3I`ҫ@K�K9,o�c��5���H����y<���������rQIn4�L\\����A�-���4\ZJ�g,�-����V�\0��,@,9�]����Qð�gS�&���,,�-V�\'gl��f�рRA-���:,��4q����I��\r��M9�x`���QSBq;ma}nT�0�={�m�d��b����������-��o�NS	�eC�Qcב�4ݼō�R��\r�}�4��}�����!3\'+ipEY� n�ӳ\n1�\r�s5v,s���4�6�(�l;��������&z6r�x�HЛnq�\0�O���^E�][0X�uȷ�ڃǈ�N�Br��>�����y���e	��z��{�_F;���h^r|���G\\�>nzV�7sg\n1�`\\FɖO�ʷ��5�|q.XcX�[kA��ۅE�|ǐ:�nb�(.���!d�/cp�7�$e���.=هʪ�6�1���n@ة�\Z�4������^�>u�j�I�6D�&��A�2\ro��+�4k�����;��&�48��#�j��FÏ�\rL|��B�3��@v�L �<��|� �s�E�*#=�e�)��G��O�<ޝ$X�H�8&������`�Nמ2��\0V-���������h�	Y���n��^�m,~ �扁�+����)�ֵ�fI�C��]9��� ���<��ya��\'��!�#��N�꽲�\r�i���0u���S��(���d��f�E��\0���i�p~ /�Q*d˕	���}��C~:tҪ��h��݉�WI&Cb\ZZ�����8-�Q�2���2Ïu\'� iS@JDsE\"XؗB,5�}W��\Z�tE5�:���Zڅ�,8�:N��`���m4�+G�3e6�\0�~M<���?g@Q�Xc�����`t�nyޗ��\'�2a�6A��ڛ�*9ܞ\ZXPx��V+ ��VRHЂH\Z�ބ�e?H�»ͷ�u�öh�x�ׁ��~��;/n>������zw�[qY���-��:���\0�ton�x�3`��:����dͪ��=)�us0�]�����\n���	7�t �\"��x��G�E���\r��\'�_�qm��&�a������#�֮��y\Z\\���@/�\n8�\ZFf��Q�K�s)��w�6����xL�e�]Mƶ���J��0�l9�(�Hs0\r��?$r�J��d�1�p����ne���?K�Y��(a6r��+)�o{q����)C!7��a�v3�a�R	W;\Z�]O@*�/mxn�I`i&Y�	,P� I�7�)��X�-0WuV�e�܍5�\rb�j��C��M�#�cՒ��0\"������`���pOq^�Db2�������ԚU�(]5�u�[����>���@�4��NЭ�*^�8w֭��`�[9#C���A�XO��nA���lv��܀O�>��\07�Y��N�h�(3b?z�����>B��#cb�Rs�&�XX��mʈ����<��iA�x�@�k��ֽe�����4�j�6��ÕO\0��t�m�.�_�\r�o����N�_&&�@�}��G=x�H�L3,�H7\rkU1��?�U��j��4GF�CL[f�Q��	���zzR�ʘ,�X�e<��Lۭ�X�������=�X�ii&,�w��?�_ �0\Z]���Yn�(O˧��0�Cp w:��;�s/Q�q�YK������ֲ�X��0v��Y\\\"�:�җ����?���\0��.��o�(��l񪸝�Ġ��8�\r�a�1t�� �2��ԁ�]�Z)0�,��f-� \r	ᩥ݄��0�Q��A$m/]/lN\r\Z��}\0\'���6$�z��KٛNR?v�ђQ�y0���M��x�Lе��!�Y��W���#�B6J��f�8[����|\'Q��Nǡ�>�kˎ����s=m_�X�»/f1�H��[��}����?���ytl��{\\�xv��S��c2�J��X�I��CǊ۝K��̒_4EX�̀��RH⺛��(+�%�mG��\0o�\\�|Ia�~#��BW��ИZh�\\�2���_/B��S��o?����f\0�[�r>!�\r8��_�\"��W��2���:���y�v���Ie�狏q�,En̒����\0�[���\Zу�A(\n[��{���.�4����|��l�|�	���08���@�7\Z�x2�����jV�R��XJ��n�\\���ۏ>w�v�Ƅ��\0�陀n\Zw�ʒ6�D���;eo�a��9���-��e�5I]��X7c�õj�\'�&���}�h�ˇ��Ā���2�^\0��H��FQd��ز��6��\0:k��z�xv�q�Vp�8�\0�%\0\r���r�^õ/mm�\"Fee�rxƣ![��j�yV�g\Z�AHV0�����&�B�C\0fcm32����A����+ɑD�� �\Z\Zee���Z7�6�Ө��\'�0ϡ�n����҅C�qd��¡ܴd0H�؎$q�P*sLj�=[MWJ.��%�J�-e\Z�E���ȷ����$��(wc�*�[��(֛w�U�����젇Q��{X�\r��*N�\0�O�gL�TX��\\/kiڵq�����^��wg�c�5`4��>��xHSX� �9��)��1x��Il�[K��v痈��7oH�׀�\0|��O�Ss�t�Ө>	hp�M,c$ٻy���l{U<&ԓĴ˕�C-�9P=��*_)`��I��ӏP9�V��-᰹h��܁���e�N����c�\"%��c��4�Q�]:������N������-��w+�L����P���@x�_Aa%\r7�x��A<E��Πn[�f���(�\0��6N\"D|�͠$i~Z�f	�F�*+��x��\0��8�X�H>!f6\Z[��kP�&FʰHM��RE�F�Z���i�Ǎ\0Q�nћhl�dc�5����=i3e��̡�\"@	�:�����u��X<t7Y`�5:A�_�_�_�[5�X�-{���f4e4@�\'��!�;{M�҄	�\Z\r�\Z��{_U?u���\0�D��f�X��r�z+[�o����E�u��~$UG	��W �!-���VB5\Z0��{\Z_�l���2���mn	\Zz��}j*��ڕ�&�\r;�[Z�Ǉ6k(�_O�{Pi��uc~�Z���G���@`�+{׫�<�|����x%Kx=�f�TI-͇�[�؊����<�\"�<\\B�C�������b��Qk_��L،\Zϳ��^>�~}��KjJ�6��T�rM����������c�׽�b,��qs�70ǘ=ib�q��9�#�%�kO{S�{\rB]H�a͍��p}4��.F�G�rH�|��Nڐ�n0��/9���\\ݭ[�p�(�+\\�\\\\�e�h��Y�b���YLmө�җ1�ģ��:�1J\Z��/˥n�\'����� �\",�U��(u�����I�*xC�s�f��*���.h���eu3Cb��F��$�F�q��p֪66|4K\0Kyn�Ã^��҅�1�D�af���~+E�� �n\r�n��Bx���	��2c��L@R��2u y>oK\Z���f9c�؋�IѺe��[���%��hg�\\]�\"j��j=���\r�cb-n\r�v�����0:i~F-�,��l@#�sX0�L��F��l~лf2u\r�=���$�D��I�9p^���,V��X�\nN�F�=��	pUtn����ۥ�\r�Y�ja\nlm�b�]|�fR9A*9�\'[h$ڙvV,�����c���4�t<)Wy��b�5\0dR[�.�RI�8wV��u�s��.u+��5\r�����4�xX�X]o�1ʺ�bl����H�9Y$V�y��\0��:�ޜ�[d����·?���o�Q\\a����b,3,y5�\\\ZPa`��y�A-�v��b\"��LHY���+�X0M�C��zn�!sJ���kt<8z�p���iH�μ��as{�}xij��0RK�H�W���m{��}mMPA:x�J�\Z��̃�i,bl,ċ|2[R9\\|>��X_,��p/r�n6�}��RO�>]��<(�zP ���|ڇ�	��u:S�^�x��V�j\n��N%�D��\0�~�G�;.!!�Q�ub@R��yǗ-����՘vr�4pd�D�������ƺ^����@W��I�â�����[>\"�3�{�7or�o)������ޙ\Z-��+5F��q�x\Z\0��e2L��d6����q�Ul^ĂO6EG!�\0nA\Zۏ\Z��0���64j�1\\\\�+	�\n�?;o���>y���7���\0��j� 믄4�|���K�r�����P{��S��$Q�Or%�������1�\0<����\0J�;\0������\Z!�\0�_�қ|Bt�A_(G¬�v�ʏ@�k3��z�~:�,=oM\"v�n?Z���O��S�\ZR�2�j�6�\nчe���~�\Z��x�l�?��R=֊M���)�Xz�H�9��o�+㟾���QRL�І#�L	����R5������	���x�eCmA��Z��q0x��@���QԭϨ-��su��rFc`3���u�3(���qs!F���feU ���Q�\'��s\r�����\0	s��E�_�9�݉�S\"�+�?d�$p�t�Kllh����o�̟~��ض��Pi���H���H�D���]K\\��I�@5&�؏]�(<@Oʅ���a{/P��)ET�\'K����(�m4��n���#((E����hd��5,!PɴTA�[=�c�/��ra����K!cnv��zeخ��`#*�2�Kk�W�\r���/#M૒TrA��rӽ��Ü+]��{y[��^�+r�ePjf6V&���|���G����n:��e�,�CF��o�hyh=~t2��_�Ŏ���[\\hmU%�,Kepy\0-ۨ����J�gj�k�2H6e��:�>t�������F]Q���Oji]�2�,��q7&�4�c�׵f\n͒0L�4[�����p.{Sʊ<@8�6���?x�6`��+�?[S&}\"Y\0��sy��R	�/KI�\n�)n�׍�¡�t�YB���s�,m�\"��yS},l-LAɐ\Ze���x0�/���q=�wҁm��lKg��rY�d����N�����-dh����p���6�s�8n����b\n:���=���2p�LQ�G�Â15��u�	*-�{P�Vх�}l4�ÍvU�X|Je%MŊ0���:|��o��鑃��I���^WRN�{hu�!G;���\0�f��\\���l��t��;aA�\0g۶�<,p���31��b�G[_�0���ʋ\"�y�w,l�˱ŵ{�V�쐿l�jع�<z��ֽ�I/��:�w��BT�����K%��mA�q�&ے\\K�!A�x�A����]#h$Ա�����\ZT�T��Z����ʽ�\n΁A���������+[uo��8H���>���!Iv�\0na����8{�َQ�.O���ي����0GZ�l�%T\n�*�t�޵ݨ	���\\�����T�]	�u:b*]�&�\0��Oҽ��eGFUc�$�\n={\Z�M��\Z���U�������?O֩\0I�S�T|%��?�(o��e�\0�RZ�i���n����zZ�⥸ �AȎp���,�\r��m��S�D\Z-��x�@o	��3��n�{��åۘ��AxX�O����U͑���\n�Fu<:E���ؕƓ�i�l�\"��ٍ��LfVш���j��\r��|h4C�6���_��ϭ@�H�(�}	:�{Tϕ�f��FLE\rG|fg!3�\\v�ۥ�����5�=͆.H�t�=~�7�ԛsԐ?>B�RA�5\Z�b��6�}h��l)\'�K�z�6��߯[QX�ef\0�5=?ֺ.���<,@�o�:�=��WGA����Σr}���%��\rH��@7�d�=���*����c7����/]�m��\Z��ȳ4�@vM�s#�����bd�=�v��|d0�D�4�3Cp(�;��ci�vqkc�>�_�S�����5�)?��{B���a���i\n��`ыE�[�����Ɖ�����y�.���n6c{��i�m��f��>ʰ�ͻ�Ql.�(e\rc�M����J��6͒�.�W�0�O0�J�a���{߀����9���	�$��8��S{�j��4C�͉�f��}������T\n�.l��o8.\"���(�_L��m��@�;;w1���X�g���Mk�d�;���%f��<�c��cj�wj4P���Q��ǿ3�&\"����&ŉ��x�T���)�.-��t�<sM��I*�$�x�I]u6:t��_cdR̫ �o��q���H��˙6��H?\rƂ�-S�EXCl�ԋ�;���x�+r����X�q+���`x�A��iG����r�l�_���MXA�kC1;r5\ZkJ�{}R;�{tS�ԫ�3#~��ʊM�S�u�s��1,�!����ؓk��@���K�<�@7	:���答h:����C(D�Fc�沨�m`���%K�:#a�r�䵬����\n�o�5�����3Ψ�]�I.e���f$��)~\n*����#��l�9���?5�/�~.��/�ؙ�k�����{w����T(\0\0@8P��ٟ���X�ڻ\0=\0������z�?\ZK��fU�v��yV.;VP�5�Q��*7�SD�UW��˭l0nT�Oa𓭨|�(��\\��TG�T�~խÍ�P1�H#H�,�췧*L���\r \"�;�z������|��=�\0J�Cb�47ӗ��JL�\r�60�i���F������^��fP_\r/�!�����\0�OA��h��1��5���K5��\rT��?�& vam\r����HXs(/�~֤�q�b�)0�\0�����(�$�˕�#�Q�@��CDu؍En�dQQ$~��L���K��HəA�ob{�ꐋW���$�1�ٴ�s���x[�5��ڑlF��!\\��ލB�,\n3��*y\Z��������,��1�\r��:_��\Z{W�4�;�q�Y��#�ܽ��}j�l��1��\"�oj��:d�]����-��5��Q��q���3�BW7�NP���N�dP�U�w:��%�^������S�D&��왡�5\n�kkv��Ѽ�.@�u$����1T���O>�i�ϔ�$��c�E6<\0�mcA%���:-�X6A{�\Zڎǲ�ң���x���{�+�C�xod�e\n�Q6`E\'bwv�h%����7�^G>:=<\"@�AW���5&���@��n����\0�N:t��y��P	�}�ᡖcw�UH��	�\0JF�͓����y&&�����\0װ�I�t�9-p�i�`�3!��>���c���$�\0q(5=�*��]Z�l�4��\'\0�E�Â������u�~�cL7�)\'a+���!�1�̫�\Z���`��^@�I�ɣ�n3x��B��%# �uո\n5��`��. �_�c�c���\07&���o���ff1@��?�r@���F����i������v<�.�۹����\0zT8؛[��7��X�+}@�B[���(�S�7��D3;t��w�M۱�9�L���?�~����k�@�,~#�ӵ���\Z���1�(m\n�\'QS��U����L�yu~B������euš���X�\Z�X�n*��ͳ��_B�XcD�| �\r�(v+Õ���iG�(=�0E\r�I�[�%q�/c�`?\ZSơ>eN�B���;�v��Ğ>܅�k��ȥ��	4���j���2�0���I �U��4 ���:��6b��.yt�*�F�b�5o4�����c7C�}~\\��>ձ�\r�}j�/��S�7�����dl5\nGBA����j\Z?�\'��T�7��I��:���Ր���}������b��D_į��0мv*{���T��8�T��.F��\rژ�T��|L$�3�;��^�Q�޶�i��@�����R:71��b񷸯Y\"<B�b��5p���y!s��|AV�N�Մ�\\,D�����T�C쏙����׽G�kcɤ.����B!@/���;{<$�����\rŵbA������\0���(��4^�C��3�X�s����P�F���Rܻ�*v����&v�~W�y�ڎ�*�m4��d�;�&��x}�9�@�1&�\Z�}�����^v]N��:]|{�g�Z	��͓ln�nlƼ4?��S�BH��\n����\"e�GP\0���4�F�0l��M��;�g��x��\\�K\Z���P�=HK����D��M���\"�U�L���(Ƅ\r�+eĤ��4����l5�0��?d2c���Z�b̺ǈoGUa�?ZI7�4�9ί�Ý/�)t\");�t?\"U����	V��W���+T�0�Q(�-��\\&׌�x���)S�4R\'$hA��OS\'u���YPe=~��3T^�6d��++(%���#T摅ee-��U�y�����.�\Z��(?�ee �q�*R�aB>��\0k0�ܯҩO�\'[�7;H��E�^�Q\\��/�\Z7trɅ��7�c͕�Ћ�\0���k(�C�4&8�\n�$u����K<@5Q��ҽ����Q!l-�ֆ#ֲ��	��51���!�YYEf	_�l�VVV�3�D�`��Ҳ����\0�$C�X�:��Y1�Z�:������Ѫ!<4W����a������eel,Ģ�Gee�ia\"�w��}�=4�++*�rW&�߸��\0�\Z�������','ADA'),
(36,'SPRITE',13500,'DRINK','False','����\0JFIF\0\0\0\0\0\0\0��\0C\0	( \Z&!1!%)+...383,74-.+��\0C\n\n\n\r\Z-% %------/----+--+/-----.-.----------------/---------��\0\0�\0�\0��\0\0\0\0\0\0\0\0\0\0\0\0��\0K\0	\0\0\0\0\0!1Qq\"Aa�����#$2��4BRbs���%rt��������35Cc���\0\0\0\0\0\0\0\0\0\0\0\0\0��\05\0	\0\0\0\0\0!1\"2Qq3Aa����B#4R����$��\0\0\0?\0�@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ڡJ]QNO�,���#,�Q�[��is�ن�\n/�.��ɫ�o�?wޏen��-�q�.+�<�hv�p֞-ވ���H%v@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\08v��6��6{�bz4���G�n8�T}q y^Z�\0�^�8��ֹ��Y�*�מ��K�cܽ��{���\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0>.�2��Ҕd��i8�5��}k\0~t�w��Y�V�x�����q��^�����+��E�����{��N���rMrqVÍ>�&LSsv�ܹ�S�D�o��I$�Ia%�$��E��}\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��O��J1x�j�֗�{QʹaS[vmڜu��V�\Z5�~�r���E4��gJ�:���37#l��DM+&������:�I�����\\�e�UsR����F�cd�\"�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\05�o�uM����#��y�����)ݫ��8ڊ�[�Il��-�!׫�bטڭ�%Q�C�\r��}R��|Yv\'���?�&�j�\n�nvWw�-]p\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0z��CC�x��$qֹx�]�>���U�J���%u�+C��K���[���H�!n���.h̶W6�9��+��=E��۹�W��)<�W�<��ɓ�]o�H�n�jWtw�Kx������\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0=�[�笚�T��������]�� �.S�.�U�vq�6�\0.].�Z��p���#�����*��Bz��{K�O��޹1��º���?�}�9�kw���{�b��W�r^�����*�qU0��]�t�a)%\Z��vs�~,����r%���5<�y���-��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!w�i=>��c�\\*1}����qg�bz+��v��\Z�Y�L�lm9\rr�Oo|��?G�\ZDe׷BRZ%�i�?$)�ѡ�my\ri�p���wr�j�̱\nv�f��Aߡ�r�(�	v����$��a�4Wf嘙��\'͖�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T�����g��9*�jc2��s�N>jz��T��O�oN�Q?��?4�=)�;��z�����?`��~}��Kn���?tΟ�!�\0����왎~<��t��G華�u��yt����~��������G��\"���Wrk��?���$s�/�8�����܌r����[y�K�K�3���?xR�uӶ��\'�xi�����G�j��2&,o�+��D\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n�����S�Z���WY�e���eÇ��)]�ؒ���\'���,g�)��y[m$r����i�Z�3�#��ޏK:����^5����M��5�.5�7�Xk��qᴿ�O�~)�\\O�Dy��ޮ����jj���R�ZeUKOT��N�x�<������M���P�j�ѭ�1=���\0L8w-��rGN�۴�Afu�	�\'(�����Y4W;J)�b3-�����_���9:�k�u�^����\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0S𢳳n_�W��cK8�\n��ř�~X��iT��X�*q��)E�(�.ȩ&�&���v���8�z��S��dխr�6|�����D(��/�5�x�(�Q^n�o����4Qw3m��\\�\'iB�J;>\Z�\'.s��I�)����u�{J\\K�[��~cn�q��d���31b\'3�GAu�����ut8�)]�!��J5��95�a>I��?K���绍��6��3>�j��f&����l�*�W�RR�Z�\\a;��.�2X}yP~HFyYgb���9b|�ޢ��U��P6���S�Q���r���~�r�����j��|3�k>�\0\0�vj\'����ss?SA9��^ʫ�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�xKY���Ϋ���Wɺ��i���d�5tr�듩>�N.0����\0�6�Fc?��ɚ��3�q��5Z�4�U��El\'�n˹���}R��Zf\"���_KT_��Tc�~���,��]%l���묪\n1J�B����W)NR�������܄Ө�n���6�=#o��?h�U:X��\\����=D�\\m����R�Jε��fnĩӨ�)�lbfsT����f�VV�iSѹNN�S5��ɮ8֥×�qc��f.��G7������I��?zt����B�Q]SiJ���)p˚N<?�b5C�����Vv��~�Ih��q/uQ���wS�U�3���w0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��!�����M.xT8���|�,��ZJ�jJ�4�d�S���%�z�^r��\"&:n��oꭲ�в�,M*�L�\\T��<��\\�ŗ���\r��g.��Wk�.EQ������]�JUg�M�[$��m�\'r��W���\Z�J��������\0Nsm�m�o��;\n�3;����L-[�G�v�\08�����G���}g����\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n���ǡ�=\\���#�8�eS]o�����b�BJ�p�}�w�0�Uij�q��V�u#3NULғ�l�[�(���j�����v3��Mu�T�vг<6��P���z9a�.�z+挨ݵ��˔|�Xic���Dܛ3M��r�<\Z����l���/����K�p�}��|V�W@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�޾�wt_�Ȳ;�	A��Z�a{�?,��G��Yxh_Q�N}�Z��o��~7Y�U8Nߜ<?!�Vq�����y��k�]�������29��-GE�#��7\rcK���15�x>oA��[X�ր\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�:=G��?R����P�=�^�{��y�ܻ9�V�߅�dم�(ތ��ՈJjn�^<v������+\Z�7��~%�:8��[�`�l{�cܻ����}���|\rt�����ىX	ր\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�?�jCo�f*�(��*�%�o>���E]?Iqs�86k%�OP��\'ȫr7Cbq���_�GM;��wdV�]e�U��Qze��&�\n��)o{���W���HX�C���^��*�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0<5�����K��KZ�4�??�miUK�/aOM=\\��������Fa;��5S�i�^�]�X�\r*�j���_�za5�wp�e󋼖z,��m�\0r��h���&fׂ���z\'	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�{�d������?o\\�j�ؾ-7��s�{K2̵�	(]���G�J���-J1��i˨��~�h��(�>��w��F�i�K��YŠӵ�5�K�f߆�?���O��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�n��鯟��7��x�pkT�C����UyD�M�j	ySMK�ޏEz��Y���K�u�QF_UXن*�!�Ʉ|�s���t�1T7�ڕ=�~$��r���4téç�8򙅴�x\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0���Z���/]�O�f�<2�ħ\Zj�\0�|0��>)�+Q�plU�˖r7�i�w-�V\"S�v!Ӥ��Cv�_M�rM���j���0��T��++���Ny����Iw[��z]�\r8�~3���/\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0|����R����<�5�3L¶��=���?<ݬ��\\//�]���6pi�U�wKh��K�Ua[�j���=7��s4��B��3��ahW�ܥ�o��}��V�s.���vY�7k��i.��6�g6\'����k>	4=ͭ��u��ޜ�b�1�_���K����\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0|�)���k\ry\Z}h�[ov~I��O((EfT���o0qm�)e?:h���=uUY���;*������r���.]��ozOQ�|��}Y��\r7|���{����ib�ʜۘ�6�h���q\\1��������3f!\r+��aE/��$��5��o̓~�ͪg\nV�����{s�icUp�����+�Ea}���T�#��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0~�شj����Y���2����a�_3=Q]�E��2��\0�tI>N2��ՖqV�c��L�mS1�+SìS�|�n�j�%*&�rܭ�}������%9��v��i��%6~��ZW����RM��\"E�-E1���V��f}�ڞ\r4�y������c��y^�&� ���U9�d���\Z,ʾ)�Ksi��QI%�h�!gO��gzz��͖�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��','ADA');

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
