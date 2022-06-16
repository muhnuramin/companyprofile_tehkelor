/*
Navicat MySQL Data Transfer

Source Server         : SERVER_LARAGON
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : pengacara

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2021-06-30 11:43:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id_admin` int(5) NOT NULL,
  `admin_username` varchar(128) NOT NULL,
  `admin_password` varchar(128) NOT NULL,
  `admin_view_password` varchar(128) NOT NULL,
  `admin_level` int(11) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', '1');

-- ----------------------------
-- Table structure for language
-- ----------------------------
DROP TABLE IF EXISTS `language`;
CREATE TABLE `language` (
  `phrase_id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase` longtext COLLATE utf8_unicode_ci NOT NULL,
  `english` longtext COLLATE utf8_unicode_ci NOT NULL,
  `indonesian` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`phrase_id`)
) ENGINE=MyISAM AUTO_INCREMENT=254 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of language
-- ----------------------------
INSERT INTO `language` VALUES ('1', 'Beranda', 'Home', 'Beranda');
INSERT INTO `language` VALUES ('2', 'Tentang Kami', 'About Us', 'Tentang Kami');
INSERT INTO `language` VALUES ('3', 'Produk Kita', 'Our Products', 'Produk Kita');
INSERT INTO `language` VALUES ('4', 'Galeri Foto', 'Photo Gallery', 'Galeri Foto');
INSERT INTO `language` VALUES ('5', 'Hubungi Kami', 'Contact Us', 'Hubungi Kami');
INSERT INTO `language` VALUES ('247', 'Pilih Bahasa', 'Select Language', 'Pilih Bahasa');
INSERT INTO `language` VALUES ('248', 'Galeri Foto', 'Photo Gallery', 'Galeri Foto');
INSERT INTO `language` VALUES ('249', 'Komitmen Kita', 'Our Commitment', 'Komitmen Kita');
INSERT INTO `language` VALUES ('250', 'Visi & Misi', 'Vision & Mission', 'Visi & Misi');
INSERT INTO `language` VALUES ('251', 'Pasar Utama', 'Main Market', 'Pasar Utama');
INSERT INTO `language` VALUES ('252', 'Lihat Selengkapnya', 'See More', 'Lihat Selengkapnya');
INSERT INTO `language` VALUES ('253', 'Produk Detail', 'Product Details', 'Produk Detail');

-- ----------------------------
-- Table structure for mainmenu
-- ----------------------------
DROP TABLE IF EXISTS `mainmenu`;
CREATE TABLE `mainmenu` (
  `seq` int(11) NOT NULL,
  `idmenu` int(11) NOT NULL,
  `nama_menu` varchar(50) NOT NULL,
  `active_menu` varchar(50) NOT NULL,
  `icon_class` varchar(50) NOT NULL,
  `link_menu` varchar(50) NOT NULL,
  `menu_akses` varchar(12) NOT NULL,
  `entry_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `entry_user` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`seq`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mainmenu
-- ----------------------------
INSERT INTO `mainmenu` VALUES ('9', '9', 'Beranda', '', 'fas fa-home fa-2x', 'Admin', '', '2020-04-18 13:02:37', null);
INSERT INTO `mainmenu` VALUES ('19', '19', 'Kontak', '', 'fa fa-phone fa-2x', 'Kontak', '', '2020-04-22 00:04:45', null);
INSERT INTO `mainmenu` VALUES ('27', '27', 'Setting Ukuran', '', 'fas fa-cogs fa-2x', 'Setting_ukuran', '', '2020-03-14 03:53:59', null);
INSERT INTO `mainmenu` VALUES ('21', '21', 'Setting Title', '', 'fas fa-wrench fa-2x', 'Setting_title', '', '2020-03-14 03:51:06', null);
INSERT INTO `mainmenu` VALUES ('22', '22', 'Setting User', '', 'fas fa-user fa-2x', 'setting_user', '', '2020-03-14 03:51:10', null);
INSERT INTO `mainmenu` VALUES ('10', '10', 'Slider', '', 'fas fa-sliders-h fa-2x', 'C_slider', '', '2020-04-24 04:07:49', null);
INSERT INTO `mainmenu` VALUES ('11', '11', 'Tentang', '', 'fas fa-info fa-2x', 'C_tentang', '', '2020-04-24 18:39:14', null);
INSERT INTO `mainmenu` VALUES ('12', '12', 'Layanan', '', 'fas fa-th fa-2x', 'C_layanan', '', '2020-08-07 11:01:14', null);
INSERT INTO `mainmenu` VALUES ('13', '13', 'Galeri', '', 'fas fa-images fa-2x', 'C_galeri', '', '2020-04-24 21:25:02', null);

-- ----------------------------
-- Table structure for meta_beranda
-- ----------------------------
DROP TABLE IF EXISTS `meta_beranda`;
CREATE TABLE `meta_beranda` (
  `id_meta_beranda` int(11) NOT NULL,
  `title` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `link_canonical` text NOT NULL,
  PRIMARY KEY (`id_meta_beranda`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of meta_beranda
-- ----------------------------
INSERT INTO `meta_beranda` VALUES ('1', 'Berandae', 'keyworde', 'desce', '11');

-- ----------------------------
-- Table structure for meta_kontak
-- ----------------------------
DROP TABLE IF EXISTS `meta_kontak`;
CREATE TABLE `meta_kontak` (
  `id_meta_kontak` int(11) NOT NULL,
  `title` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `link_canonical` text NOT NULL,
  PRIMARY KEY (`id_meta_kontak`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of meta_kontak
-- ----------------------------
INSERT INTO `meta_kontak` VALUES ('1', 'Kontake', 'keyworde', 'yryee', '11');

-- ----------------------------
-- Table structure for meta_produk
-- ----------------------------
DROP TABLE IF EXISTS `meta_produk`;
CREATE TABLE `meta_produk` (
  `id_meta_produk` int(11) NOT NULL,
  `title` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `link_canonical` text NOT NULL,
  PRIMARY KEY (`id_meta_produk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of meta_produk
-- ----------------------------
INSERT INTO `meta_produk` VALUES ('1', 'Produke', 'keyworde', 'oooooe', '11');

-- ----------------------------
-- Table structure for meta_struktur
-- ----------------------------
DROP TABLE IF EXISTS `meta_struktur`;
CREATE TABLE `meta_struktur` (
  `id_meta_struktur` int(11) NOT NULL,
  `title` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `link_canonical` text NOT NULL,
  PRIMARY KEY (`id_meta_struktur`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of meta_struktur
-- ----------------------------
INSERT INTO `meta_struktur` VALUES ('1', 'Strukture', 'keyworde', 'alale', '11');

-- ----------------------------
-- Table structure for setting_ukuran
-- ----------------------------
DROP TABLE IF EXISTS `setting_ukuran`;
CREATE TABLE `setting_ukuran` (
  `id_setting_ukuran` int(11) NOT NULL,
  `ukuran_foto_slider` char(15) NOT NULL,
  `ukuran_foto_tentang` char(15) NOT NULL,
  `ukuran_foto_produk` char(15) NOT NULL,
  `ukuran_foto_galeri` char(15) NOT NULL,
  `footer` char(15) NOT NULL,
  PRIMARY KEY (`id_setting_ukuran`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of setting_ukuran
-- ----------------------------
INSERT INTO `setting_ukuran` VALUES ('1', '1000x500', '1000x1000', '2000x2000', '400x500', '200x200');

-- ----------------------------
-- Table structure for submenu
-- ----------------------------
DROP TABLE IF EXISTS `submenu`;
CREATE TABLE `submenu` (
  `id_sub` int(11) NOT NULL,
  `nama_sub` varchar(50) NOT NULL,
  `mainmenu_idmenu` int(11) NOT NULL,
  `active_sub` varchar(20) NOT NULL,
  `icon_class` varchar(100) NOT NULL,
  `link_sub` varchar(50) NOT NULL,
  `sub_akses` varchar(12) NOT NULL,
  `entry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `entry_user` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_sub`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of submenu
-- ----------------------------
INSERT INTO `submenu` VALUES ('1', 'Entry User', '8', '', '', 'User', '', '2017-10-19 04:28:25', null);
INSERT INTO `submenu` VALUES ('2', 'Kategori Produk', '4', '', '', 'Produk', '', '2017-10-19 04:34:17', null);
INSERT INTO `submenu` VALUES ('3', 'Produk', '4', '', '', 'Produk/detail', '', '2017-10-19 04:34:26', null);
INSERT INTO `submenu` VALUES ('4', 'Album', '5', '', '', 'Gallery', '', '2017-10-19 04:34:34', null);
INSERT INTO `submenu` VALUES ('5', 'Foto', '5', '', '', 'Gallery/foto', '', '2017-10-19 04:34:40', null);

-- ----------------------------
-- Table structure for tab_akses_mainmenu
-- ----------------------------
DROP TABLE IF EXISTS `tab_akses_mainmenu`;
CREATE TABLE `tab_akses_mainmenu` (
  `id` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `id_level` int(11) NOT NULL,
  `c` int(11) DEFAULT '0',
  `r` int(11) DEFAULT '0',
  `u` int(11) DEFAULT '0',
  `d` int(11) DEFAULT '0',
  `entry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `entry_user` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tab_akses_mainmenu
-- ----------------------------
INSERT INTO `tab_akses_mainmenu` VALUES ('1', '1', '1', null, '1', null, null, '2017-09-27 03:49:01', 'direktur');
INSERT INTO `tab_akses_mainmenu` VALUES ('8', '7', '1', '0', '1', '0', '0', '2017-10-28 07:52:10', '');
INSERT INTO `tab_akses_mainmenu` VALUES ('9', '9', '1', '0', '1', '0', '0', '2018-01-21 09:05:57', '');
INSERT INTO `tab_akses_mainmenu` VALUES ('10', '10', '1', '0', '1', '0', '0', '2018-12-28 15:29:38', '');
INSERT INTO `tab_akses_mainmenu` VALUES ('11', '11', '1', '0', '1', '0', '0', '2018-12-28 15:29:38', '');
INSERT INTO `tab_akses_mainmenu` VALUES ('12', '12', '1', '0', '1', '0', '0', '2018-12-28 15:29:38', '');
INSERT INTO `tab_akses_mainmenu` VALUES ('13', '13', '1', '0', '1', '0', '0', '2019-01-09 16:27:14', '');
INSERT INTO `tab_akses_mainmenu` VALUES ('14', '14', '1', '0', '1', '0', '0', '2019-01-10 15:43:47', '');
INSERT INTO `tab_akses_mainmenu` VALUES ('15', '15', '1', '0', '1', '0', '0', '2019-01-10 19:59:44', '');
INSERT INTO `tab_akses_mainmenu` VALUES ('23', '16', '1', '0', '1', '0', '0', '2019-02-08 15:00:02', '');
INSERT INTO `tab_akses_mainmenu` VALUES ('24', '17', '1', '0', '1', '0', '0', '2020-01-24 06:30:13', '');
INSERT INTO `tab_akses_mainmenu` VALUES ('25', '18', '1', '0', '1', '0', '0', '2020-01-24 06:30:13', '');
INSERT INTO `tab_akses_mainmenu` VALUES ('26', '19', '1', '0', '1', '0', '0', '2020-03-14 03:46:38', '');
INSERT INTO `tab_akses_mainmenu` VALUES ('27', '25', '1', '0', '1', '0', '0', '2020-02-24 17:49:48', '');

-- ----------------------------
-- Table structure for tab_akses_submenu
-- ----------------------------
DROP TABLE IF EXISTS `tab_akses_submenu`;
CREATE TABLE `tab_akses_submenu` (
  `id` int(11) NOT NULL,
  `id_sub_menu` int(11) NOT NULL,
  `id_level` int(11) NOT NULL,
  `c` int(11) DEFAULT '0',
  `r` int(11) DEFAULT '0',
  `u` int(11) DEFAULT '0',
  `d` int(11) DEFAULT '0',
  `entry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `entry_user` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tab_akses_submenu
-- ----------------------------
INSERT INTO `tab_akses_submenu` VALUES ('1', '1', '1', '0', '1', '0', '0', '2017-10-15 04:45:40', '');
INSERT INTO `tab_akses_submenu` VALUES ('2', '2', '1', '0', '1', '0', '0', '2017-10-17 09:59:02', '');
INSERT INTO `tab_akses_submenu` VALUES ('3', '3', '1', '0', '0', '0', '0', '2017-10-19 15:12:32', '');
INSERT INTO `tab_akses_submenu` VALUES ('4', '4', '1', '0', '1', '0', '0', '2017-10-17 09:59:16', '');
INSERT INTO `tab_akses_submenu` VALUES ('5', '5', '1', '0', '0', '0', '0', '2017-10-19 15:12:33', '');

-- ----------------------------
-- Table structure for tb_album
-- ----------------------------
DROP TABLE IF EXISTS `tb_album`;
CREATE TABLE `tb_album` (
  `id_album` int(11) NOT NULL AUTO_INCREMENT,
  `nama_album` varchar(100) NOT NULL,
  `nama_album_en` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_album`),
  CONSTRAINT `tb_album_ibfk_1` FOREIGN KEY (`id_album`) REFERENCES `tb_galeri` (`id_galeri`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_album
-- ----------------------------
INSERT INTO `tb_album` VALUES ('1', 'Pabrik produksi', 'Production factory');
INSERT INTO `tb_album` VALUES ('2', 'Pengepakan', 'Packing');
INSERT INTO `tb_album` VALUES ('3', 'Pameran', 'Exhibition');

-- ----------------------------
-- Table structure for tb_beranda
-- ----------------------------
DROP TABLE IF EXISTS `tb_beranda`;
CREATE TABLE `tb_beranda` (
  `id_beranda` int(11) NOT NULL,
  `file_slider1` text NOT NULL,
  `file_slider2` text NOT NULL,
  `file_slider3` text NOT NULL,
  `file_slider4` text NOT NULL,
  `keyword` text NOT NULL,
  `keyword_en` text,
  `jumlah_produk` int(11) NOT NULL,
  `judul_tentang` text NOT NULL,
  `judul_tentang_en` text,
  `deskripsi_tentang` text NOT NULL,
  `deskripsi_tentang_en` text,
  PRIMARY KEY (`id_beranda`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_beranda
-- ----------------------------
INSERT INTO `tb_beranda` VALUES ('1', 'spada.jpg', 'bergabung.jpg', 'materi.jpg', '1.jpg', 'Aptisi', null, '0', 'Selamat Datang Di SPADA APTISI JATIM', null, '<p>Official Site APTISI Pusat merupakan website utama dari Asosiasi Perguruan Tinggi Swasta Indonesia. Tidak berbeda dengan official site lainnya untuk menyajikan informasi berupa sebuah berita maupun artikel, official site APTISI Pusat memiliki sebuah artikel, dan saat ini sudah tercatat bahwa terdapat 360 postingan dengan total view mencapai 147238 views dalam official site APTISI Pusat. User yang sering aktif posting berita yaitu Resti Rahmawati dengan total posting sebanyak 117 Post. Terbukti pula bahwa official site APTISI sudah dikenal oleh seluruh anggota, mahasiswa maupun masyarakat luas. Mengapa tidak, subscriber official site APTISI saat ini tercatat sebanyak 288 subscriber. Dalam official site ini tidak hanya untuk melihat berita atau artikel tetapi bisa berkomunkasi dengan sesama pengguna lain dan terbukti dengan adanya 310 comment. Mari kita tingkatkan kualitas official site APTISI Pusat dengan menjadi subscriber dan memberikan feedback berupa comment pada setiap artikel yang ada</p>', null);

-- ----------------------------
-- Table structure for tb_galeri
-- ----------------------------
DROP TABLE IF EXISTS `tb_galeri`;
CREATE TABLE `tb_galeri` (
  `id_galeri` int(11) NOT NULL AUTO_INCREMENT,
  `nama_album` varchar(255) NOT NULL,
  `foto_galeri` text NOT NULL,
  `cover_album` text NOT NULL,
  PRIMARY KEY (`id_galeri`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_galeri
-- ----------------------------
INSERT INTO `tb_galeri` VALUES ('1', '1', 'gale1.jpg', '');
INSERT INTO `tb_galeri` VALUES ('2', '1', 'gale2.jpg', '');
INSERT INTO `tb_galeri` VALUES ('3', '2', 'gale3.jpg', '');
INSERT INTO `tb_galeri` VALUES ('4', '2', 'gale4.jpg', '');
INSERT INTO `tb_galeri` VALUES ('5', '1', 'gale5.jpg', '');
INSERT INTO `tb_galeri` VALUES ('6', '3', 'gale6.jpg', '');

-- ----------------------------
-- Table structure for tb_kategori
-- ----------------------------
DROP TABLE IF EXISTS `tb_kategori`;
CREATE TABLE `tb_kategori` (
  `id_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(255) NOT NULL,
  `nama_kategori_en` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tb_kategori
-- ----------------------------
INSERT INTO `tb_kategori` VALUES ('1', 'Keripik Buah', 'Fruit Chips');
INSERT INTO `tb_kategori` VALUES ('2', 'Keripik Sayuran', 'Vegetable Chips');

-- ----------------------------
-- Table structure for tb_kontak
-- ----------------------------
DROP TABLE IF EXISTS `tb_kontak`;
CREATE TABLE `tb_kontak` (
  `id_kontak` int(11) NOT NULL,
  `deskripsi_kontak` text NOT NULL,
  `script_embed_code` text NOT NULL,
  `email_kontak` varchar(128) NOT NULL,
  `nomor_kontak` varchar(128) NOT NULL,
  PRIMARY KEY (`id_kontak`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_kontak
-- ----------------------------
INSERT INTO `tb_kontak` VALUES ('1', 'Alamat : Jl. Kamal Raya Outer Ring Road Komplek Rukan Malibu Blok I No.75, Cengkareng, Jakarta Barat, DKI Jakarta, RT.7/RW.14, Cengkareng Tim., Cengkareng, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11730Hari : Senin &ndash; Jumat Jam Kerja : 09:00 &ndash; 16:00', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d44704.912996884916!2d112.95773565647879!3d-7.9582352167973385!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd636fe48e2b08b%3A0x19b75487127bd0c6!2sGn.%20Bromo!5e0!3m2!1sid!2sid!4v1587159508186!5m2!1sid!2sid\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', 'robert.partners.lo@gmail.com', '0811 2233 4455');

-- ----------------------------
-- Table structure for tb_layanan
-- ----------------------------
DROP TABLE IF EXISTS `tb_layanan`;
CREATE TABLE `tb_layanan` (
  `id_layanan` int(11) NOT NULL AUTO_INCREMENT,
  `kategori` text NOT NULL,
  `foto_layanan` text NOT NULL,
  `nama_layanan` text NOT NULL,
  `nama_layanan_en` text,
  `deskripsi_layanan` text NOT NULL,
  `deskripsi_layanan_en` text,
  PRIMARY KEY (`id_layanan`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_layanan
-- ----------------------------
INSERT INTO `tb_layanan` VALUES ('1', '1', 'Banana-chips.jpg', 'Keripik pisang', 'Banana Chips', 'Banana Chips adalah Keripik pisang...', 'Banana Chips are Banana Chips ...');
INSERT INTO `tb_layanan` VALUES ('2', '1', 'apel.jpg', 'Keripik Apel', 'Apple Chips', 'Apple Chips adalah keripik apel', 'Apple Chips are apple chips');
INSERT INTO `tb_layanan` VALUES ('3', '1', 'jackfruit-chips.jpeg', 'Keripik Nangka', 'Jackfruit Chips', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat.');
INSERT INTO `tb_layanan` VALUES ('4', '1', 'Mango-chips.jpg', 'Keripik Mangga', 'Mango Chips', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat.');
INSERT INTO `tb_layanan` VALUES ('5', '2', 'Onion-chips.jpg', 'Keripik Bawang', 'Onion Chips', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat.');
INSERT INTO `tb_layanan` VALUES ('6', '2', 'Chili-chips.jpg', 'Keripik Cabai', 'Chili Chips', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat.');
INSERT INTO `tb_layanan` VALUES ('7', '2', 'paprika-chips.jpg', 'Keripik Paprika', 'Paprika Chips', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat.');

-- ----------------------------
-- Table structure for tb_slider
-- ----------------------------
DROP TABLE IF EXISTS `tb_slider`;
CREATE TABLE `tb_slider` (
  `id_slider` int(11) NOT NULL AUTO_INCREMENT,
  `foto_slider` text NOT NULL,
  PRIMARY KEY (`id_slider`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_slider
-- ----------------------------
INSERT INTO `tb_slider` VALUES ('1', 'apple-chips-slider.jpg');
INSERT INTO `tb_slider` VALUES ('2', 'slider.jpg');
INSERT INTO `tb_slider` VALUES ('3', 'banana-chips-slider.jpg');

-- ----------------------------
-- Table structure for tb_tentang
-- ----------------------------
DROP TABLE IF EXISTS `tb_tentang`;
CREATE TABLE `tb_tentang` (
  `id_tentang` int(11) NOT NULL AUTO_INCREMENT,
  `foto_tentang` text NOT NULL,
  `nama_tentang` varchar(255) NOT NULL,
  `deskripsi_tentang` text NOT NULL,
  `deskripsi_tentang_en` text,
  `our_commitment` text NOT NULL,
  `our_commitment_en` text,
  `vision_mission` text NOT NULL,
  `vision_mission_en` text,
  `main_market` text NOT NULL,
  `main_market_en` text,
  PRIMARY KEY (`id_tentang`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_tentang
-- ----------------------------
INSERT INTO `tb_tentang` VALUES ('1', 'logo_sk.png', 'Chips So KressH', '(Tentang Kami)Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat.', '(About Us)Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat.', '(Main Market)Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat.', '(Main Market)Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat.');
