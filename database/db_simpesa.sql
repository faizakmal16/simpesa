/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.4.14-MariaDB : Database - db_simpesa
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_simpesa` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `db_simpesa`;

/*Table structure for table `badan_usaha` */

DROP TABLE IF EXISTS `badan_usaha`;

CREATE TABLE `badan_usaha` (
  `id` int(11) NOT NULL,
  `nama_usaha` text NOT NULL,
  `pemilik_usaha` varchar(54) NOT NULL,
  `alamat` text NOT NULL,
  `provinsi` varchar(125) NOT NULL,
  `kota` varchar(125) NOT NULL,
  `kecamatan` varchar(125) NOT NULL,
  `komoditas` varchar(55) NOT NULL,
  `kategori_usaha` varchar(125) NOT NULL,
  `bentuk_usaha` varchar(125) NOT NULL,
  `status_tanah_usaha` varchar(125) NOT NULL,
  `status` varchar(56) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `badan_usaha` */

insert  into `badan_usaha`(`id`,`nama_usaha`,`pemilik_usaha`,`alamat`,`provinsi`,`kota`,`kecamatan`,`komoditas`,`kategori_usaha`,`bentuk_usaha`,`status_tanah_usaha`,`status`) values 
(51,'PT.RANGKAI UTAMA BERJAYA','MUHAMMAD FAIZ AKMAL','KOMPLEK RORINATA RESIDENCE TAHAP 7 BLOK.Y NO.10','Nusa Tengara Barat','SUMBAWA','SUMBAWA','Peternakan','Menengah','Perseroan Terbatas (PT)','Hak Milik','Telah diverifikasi');

/*Table structure for table `komoditas` */

DROP TABLE IF EXISTS `komoditas`;

CREATE TABLE `komoditas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `komoditas` varchar(80) NOT NULL,
  `deskripsi` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

/*Data for the table `komoditas` */

insert  into `komoditas`(`id`,`komoditas`,`deskripsi`) values 
(2,'Logam','Mencakup produk-produk hasil pertambangan, yang dibedakan menjadi dua yaitu, logam berharga dan logam industri.'),
(3,' Energi','Berupa produk-produk tambang dan eksplorasi yang berfungsi sebagai bahan bakar. Ragam produk dari jenis komoditas ini meliputi batu bara dan minyak bumi yang dapat berupa bensin, bensin tanpa timbal, diesel, light sweet crude oil, dan brent crude oil.'),
(4,'Pertanian','Berupa produk-produk hasil pertanian. Jenis komoditas ini terdiri atas dua kelompok, yaitu hasil pertanian dan hasil perhutanan. Produk pertanian mencakup beras, gandum, kedelai, jagung, kopi, gula, dan yang lainnya. Sedangkan produk perhutanan meliputi karet, rotan, sawit, kapas, dan lainnya.'),
(5,'Peternakan','Yakni produk-produk hasil peternakan yang mencakup ternak hidup termasuk daging, susu, dan juga pakannya. Contohnya sapi, babi, ayam, daging sapi, daging ayam, daging babi, susu sapi, dan pakan ternak. Pada perdagangan internasional, jenis komoditas peternakan ini dijual dalam satuan pon.'),
(6,'Jasa - Software Developer','JASA PEMBUATAN APLIKASI WEB,DESKTOP DAN MOBILE');

/*Table structure for table `pengguna` */

DROP TABLE IF EXISTS `pengguna`;

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(64) NOT NULL,
  `no_hp` text NOT NULL,
  `email` text NOT NULL,
  `password` varchar(64) NOT NULL,
  `hak_pengguna` varchar(35) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4;

/*Data for the table `pengguna` */

insert  into `pengguna`(`id`,`nama`,`no_hp`,`email`,`password`,`hak_pengguna`) values 
(37,'admin','08121212131','admin@admin.com','admin','admin'),
(51,'user','08272613182','user@user.com','user','user'),
(52,'icome','081289374683','icome@icome.com','icome','user');

/*Table structure for table `produk` */

DROP TABLE IF EXISTS `produk`;

CREATE TABLE `produk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `produk` text NOT NULL,
  `satuan` varchar(64) NOT NULL,
  `harga_satuan` int(11) NOT NULL,
  `id_pengguna` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

/*Data for the table `produk` */

insert  into `produk`(`id`,`produk`,`satuan`,`harga_satuan`,`id_pengguna`) values 
(8,'Aplikasi Rekam Medis RS Berbasis Web','Modul',25000000,51);

/*Table structure for table `rencana_usaha` */

DROP TABLE IF EXISTS `rencana_usaha`;

CREATE TABLE `rencana_usaha` (
  `id` int(11) NOT NULL,
  `modal` int(11) NOT NULL,
  `saham` int(11) NOT NULL,
  `jumlah_tenaga_kerja` int(11) NOT NULL,
  `nilai_produksi` int(11) NOT NULL,
  `nilai_investasi` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `rencana_usaha` */

insert  into `rencana_usaha`(`id`,`modal`,`saham`,`jumlah_tenaga_kerja`,`nilai_produksi`,`nilai_investasi`) values 
(51,2000,200,200,200,200);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
