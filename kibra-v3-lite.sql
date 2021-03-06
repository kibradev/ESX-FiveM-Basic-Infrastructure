-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 03 Eki 2021, 15:59:13
-- Sunucu sürümü: 10.4.21-MariaDB
-- PHP Sürümü: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `kibra-v3-lite`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `addon_account`
--

CREATE TABLE `addon_account` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `addon_account_data`
--

CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `addon_inventory`
--

CREATE TABLE `addon_inventory` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `addon_inventory_items`
--

CREATE TABLE `addon_inventory_items` (
  `id` int(11) NOT NULL,
  `inventory_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `almez_motels`
--

CREATE TABLE `almez_motels` (
  `key` varchar(50) DEFAULT NULL,
  `owner` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `almez_motels`
--

INSERT INTO `almez_motels` (`key`, `owner`) VALUES
('1', ''),
('2', ''),
('3', ''),
('4', ''),
('5', ''),
('6', ''),
('7', ''),
('8', ''),
('9', ''),
('10', ''),
('11', ''),
('12', ''),
('13', ''),
('14', ''),
('15', ''),
('16', ''),
('17', ''),
('18', ''),
('19', ''),
('20', ''),
('21', ''),
('22', ''),
('23', ''),
('24', ''),
('25', ''),
('26', ''),
('27', ''),
('28', ''),
('29', ''),
('30', ''),
('31', ''),
('32', ''),
('33', ''),
('34', ''),
('35', ''),
('36', ''),
('37', ''),
('38', ''),
('39', ''),
('40', ''),
('41', ''),
('42', ''),
('43', ''),
('44', ''),
('45', ''),
('46', ''),
('47', ''),
('48', ''),
('49', ''),
('50', ''),
('51', ''),
('52', ''),
('53', ''),
('54', ''),
('55', ''),
('56', ''),
('57', ''),
('58', ''),
('59', ''),
('60', ''),
('61', ''),
('62', ''),
('63', ''),
('64', ''),
('65', ''),
('66', ''),
('67', ''),
('68', ''),
('69', ''),
('70', ''),
('71', ''),
('72', ''),
('73', ''),
('74', ''),
('75', ''),
('76', ''),
('77', ''),
('78', ''),
('79', ''),
('80', ''),
('81', ''),
('82', ''),
('83', ''),
('84', ''),
('85', ''),
('86', ''),
('87', ''),
('88', ''),
('89', ''),
('90', ''),
('91', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `almez_motels_pinkcage`
--

CREATE TABLE `almez_motels_pinkcage` (
  `key` varchar(50) DEFAULT NULL,
  `owner` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `almez_motels_pinkcage`
--

INSERT INTO `almez_motels_pinkcage` (`key`, `owner`) VALUES
('92', ''),
('93', ''),
('94', ''),
('95', ''),
('96', ''),
('97', ''),
('98', ''),
('99', ''),
('100', ''),
('101', ''),
('102', ''),
('103', ''),
('104', ''),
('105', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `identifier` varchar(40) NOT NULL,
  `sender` varchar(40) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(40) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `communityservice`
--

CREATE TABLE `communityservice` (
  `identifier` varchar(100) NOT NULL,
  `actions_remaining` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `crew_phone_bank`
--

CREATE TABLE `crew_phone_bank` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 1,
  `identifier` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `crew_phone_news`
--

CREATE TABLE `crew_phone_news` (
  `id` int(11) NOT NULL,
  `data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `datastore`
--

CREATE TABLE `datastore` (
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `datastore_data`
--

CREATE TABLE `datastore_data` (
  `id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `depolar`
--

CREATE TABLE `depolar` (
  `ad` varchar(255) NOT NULL,
  `sifre` varchar(255) NOT NULL,
  `num` varchar(255) NOT NULL,
  `identifier` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `depolar`
--

INSERT INTO `depolar` (`ad`, `sifre`, `num`, `identifier`) VALUES
('Kibraport', '1234', '3992', 'steam:110000119c7e6ba');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `dpkeybinds`
--

CREATE TABLE `dpkeybinds` (
  `id` varchar(50) DEFAULT NULL,
  `keybind1` varchar(50) DEFAULT 'num4',
  `emote1` varchar(255) DEFAULT '',
  `keybind2` varchar(50) DEFAULT 'num5',
  `emote2` varchar(255) DEFAULT '',
  `keybind3` varchar(50) DEFAULT 'num6',
  `emote3` varchar(255) DEFAULT '',
  `keybind4` varchar(50) DEFAULT 'num7',
  `emote4` varchar(255) DEFAULT '',
  `keybind5` varchar(50) DEFAULT 'num8',
  `emote5` varchar(255) DEFAULT '',
  `keybind6` varchar(50) DEFAULT 'num9',
  `emote6` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `fine_types`
--

CREATE TABLE `fine_types` (
  `id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `fine_types`
--

INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Dikkatsiz Sürüş', 1000, 0),
(2, 'Hatali Sollama', 1500, 0),
(3, 'Ters Yonde Arac Kullanma', 2500, 0),
(4, 'Yetkisiz U Donusu', 2500, 0),
(5, 'Arazide Arac Kullanma', 1700, 0),
(6, 'Kazada Suclu Bulunma', 3000, 0),
(7, 'Tehlikeli / Yasak Duruslar', 1500, 0),
(8, 'Uygunsuz / Yasak Park Etme', 700, 0),
(9, 'Kayitsiz Plakali Arac Kullanimi', 700, 0),
(10, 'Oncelikli Araçlara Yol Vermeme', 900, 0),
(11, 'Dur ihtarina Uymama', 1050, 0),
(12, 'Kirmizi isiga Uymama', 1300, 0),
(13, 'Cop Bait Uyarisi', 1000, 0),
(14, 'Devlet Dairesine Ait Olan Arac', 5000, 0),
(15, 'Calinti Arac Kullanimi', 3000, 0),
(16, 'Vur Kac', 800, 0),
(17, 'Hiz Yapma< 60 kmh', 900, 0),
(18, 'Hiz Yapma < 80 kmh', 1200, 0),
(19, 'Hiz Yapma < 120 kmh', 1800, 0),
(20, 'Hiz Yapma < 130 ve ustu kmh', 3000, 0),
(21, 'Trafik Akisini Engelleme', 1100, 1),
(22, 'Trafik Kazasina Sebebiyet', 900, 1),
(23, 'Hasarli Arac ile Seyahat', 900, 1),
(24, 'Polis Operasyonunu Engelleme', 2000, 1),
(25, 'Hakaret Etmek / Siviller', 750, 1),
(26, 'Polis Memuruna Girisimde Bulunma', 1100, 1),
(27, 'Sozlu Tehdit veya Fiziksel Girisim', 900, 1),
(28, 'Bir Polis Memuruna Sozlu Tehdit Veya Fiziksel Girisim', 1500, 1),
(29, 'Yasa Disi Protesto', 2500, 1),
(30, 'Rusvet Teklif Etme', 10000, 1),
(31, 'Silahi Kabzasi Disinda Bulundurma', 1200, 2),
(32, 'Olumcul Silah Bulundurma', 3000, 2),
(33, 'Ruhsatsiz Silah Bulundurma (Bulundurma Lisansı)', 6000, 2),
(34, 'İllegal Silah Bulundurma', 7000, 2),
(35, 'Maymuncuk Tasima', 3000, 2),
(36, 'Arac Hirsizligi', 1800, 2),
(37, 'Uyusturucu Satisi Yapma', 3000, 2),
(38, 'Uyusturucu Trafigi Yapma', 3500, 2),
(39, 'Uyusturucu Uretimi Yapma', 6500, 2),
(40, 'Onaysiz  Sivil inis Gerceklestirme', 1500, 2),
(41, 'Devlet Memurunu Rehin Alma', 1000, 2),
(42, 'Soygun Girisiminde Bulunma', 5000, 2),
(43, 'Magaza / Dukkan Soyma', 10000, 2),
(44, 'Banka Soygunu ', 50000, 2),
(45, 'Sivil Yaralama', 5000, 3),
(46, 'Devlet Memurunu Yaralama', 10000, 3),
(47, 'Sivil Oldurme Tesebbus', 12500, 3),
(48, 'Devlet Memurunu Oldurmeye Tesebbus', 25000, 3),
(49, 'Sivil Oldurme', 25000, 3),
(50, 'Devlet Memuru Oldurme', 50000, 3),
(51, 'Istemsiz Cinayet / Nevsi Mudafa', 1800, 3),
(52, 'Is Hirsizligi / Vergi Kacirma', 2000, 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gloveboxitems`
--

CREATE TABLE `gloveboxitems` (
  `id` int(11) NOT NULL,
  `plate` varchar(255) DEFAULT NULL,
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `gloveboxitems`
--

INSERT INTO `gloveboxitems` (`id`, `plate`, `items`) VALUES
(0, 'UMTC6508', '[]'),
(0, 'UMTC6508', '[]');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `items`
--

CREATE TABLE `items` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `weight` float NOT NULL DEFAULT 1,
  `rare` tinyint(4) NOT NULL DEFAULT 0,
  `can_remove` tinyint(4) NOT NULL DEFAULT 1,
  `type` longtext DEFAULT 'item',
  `unique` longtext DEFAULT 'false',
  `description` longtext DEFAULT 'Bilinmiyor',
  `image` longtext DEFAULT NULL,
  `shouldClose` longtext DEFAULT '0',
  `combinable` varchar(50) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `items`
--

INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`, `type`, `unique`, `description`, `image`, `shouldClose`, `combinable`, `id`) VALUES
('cash', 'Nakit Para', 0, 0, 1, 'item', 'false', 'Nakit Para', 'cash.png', '0', NULL, 1),
('phone', 'Telefon', 1, 0, 1, 'item', 'true', 'Bilinmiyor', 'phone.png', '0', NULL, 3),
('pistol_ammo', 'Tabanca Mermisi', 0.1, 0, 1, 'item', 'false', 'Tabanca mermi kutusu.', 'pistol_ammo.png', '0', NULL, 4),
('pistol_extended', 'Tab. Uzatılmış', 0.3, 0, 1, 'item', 'false', 'Bilinmiyor', 'extendedclip.png', '0', NULL, 5),
('pistol_flashlight', 'Tab. Fener', 0.3, 0, 1, 'item', 'false', 'Bilinmiyor', 'flashlight.png', '0', NULL, 6),
('pistol_scope', 'Tab. Dürbünü', 0.3, 0, 1, 'item', 'false', 'Bilinmiyor', 'scope.png', '0', NULL, 7),
('pistol_suppressor', 'Tab. Susturucu', 0.3, 0, 1, 'item', 'false', 'Bilinmiyor', 'suppressor.png', '0', NULL, 8),
('rifle_ammo', 'Rifle Mermisi', 0.1, 0, 1, 'item', 'false', 'Rifle mermi kutusu.', 'rifle_ammo.png', '0', NULL, 9),
('rifle_extendedclip', 'Rifle Uzatılmış', 0.3, 0, 1, 'item', 'false', 'Bilinmiyor', 'extendedclip.png', '0', NULL, 10),
('rifle_flashlight', 'Rifle Fener', 0.3, 0, 1, 'item', 'false', 'Bilinmiyor', 'flashlight.png', '0', NULL, 11),
('rifle_scope', 'Rifle Dürbün', 0.3, 0, 1, 'item', 'false', 'Bilinmiyor', 'scope.png', '0', NULL, 12),
('rifle_suppressor', 'Rifle Susturucu', 0.3, 0, 1, 'item', 'true', 'Ateş Sesini Muazzam Ölçüde Azaltan Ekipman.', 'suppressor.png', '0', NULL, 13),
('shotgun_ammo', 'Shotgun Mermisi', 0.1, 0, 1, 'item', 'false', 'Shotgun mermi kutusu.', 'shotgun_ammo.png', '0', NULL, 14),
('smg_ammo', 'Smg Mermisi', 0.1, 0, 1, 'item', 'false', 'Smg mermi kutusu', 'smg_ammo.png', '0', NULL, 15),
('smg_extendedclip', 'SMG Uzatılmış', 0.3, 0, 1, 'item', 'false', 'Bilinmiyor', 'extendedclip.png', '0', NULL, 16),
('smg_flashlight', 'SMG Feneri', 0.3, 0, 1, 'item', 'false', 'Bilinmiyor', 'flashlight.png', '0', NULL, 17),
('smg_scope', 'SMG Dürbünü', 0.3, 0, 1, 'item', 'false', 'Bilinmiyor', 'scope.png', '0', NULL, 18),
('smg_suppressor', 'SMG Susturucu', 0.3, 0, 1, 'item', 'true', 'Bilinmiyor', 'suppressor.png', '0', NULL, 19),
('water', 'Su', 0.01, 0, 1, 'item', 'false', 'Bilinmiyor', 'water.png', '0', NULL, 20),
('weapon_advancedrifle', 'Geliştirilmiş Tüfek', 1, 0, 1, 'weapon', 'true', 'Bilinmiyor', 'WEAPON_ADVANCEDRIFLE.png', '0', NULL, 21),
('weapon_appistol', 'Ap Pistol', 1, 0, 1, 'weapon', 'true', 'Bilinmiyor', 'weapon_appistol.png', '0', NULL, 22),
('weapon_assaultrifle', 'Ak-47', 1, 0, 1, 'weapon', 'true', 'Bilinmiyor', 'WEAPON_ASSAULTRIFLE.png', '0', NULL, 23),
('weapon_assaultsmg', 'PD F40', 1, 0, 1, 'weapon', 'true', 'Bilinmiyor', 'weapon_assaultsmg.png', '0', NULL, 24),
('weapon_bat', 'Beyzbol Sopasi', 1, 0, 1, 'weapon', 'true', 'Bilinmiyor', 'WEAPON_BAT.png', '0', NULL, 25),
('weapon_battleaxe', 'Balta', 1, 0, 1, 'weapon', 'true', 'Bilinmiyor', 'WEAPON_BATTLEAXE.png', '0', NULL, 26),
('weapon_carbinerifle_mk2', 'PD 762', 1, 0, 1, 'weapon', 'true', 'Bilinmiyor', 'WEAPON_CARBINERIFLE_MK2.png', '0', NULL, 27),
('weapon_combatpdw', 'SAUER MPX', 1, 0, 1, 'weapon', 'true', 'Bilinmiyor', 'weapon_combatpdw.png', '0', NULL, 28),
('weapon_combatpistol', 'GLOCK 17', 1, 0, 1, 'weapon', 'true', 'Bilinmiyor', 'weapon_combatpistol.png', '0', NULL, 29),
('weapon_compactrifle', 'DRACO', 1, 0, 1, 'weapon', 'true', 'Bilinmiyor', 'weapon_compactrifle.png', '0', NULL, 30),
('weapon_crowbar', 'Levye', 1, 0, 1, 'weapon', 'true', 'Bilinmiyor', 'WEAPON_CROWBAR.png', '0', NULL, 31),
('weapon_flashlight', 'El Feneri', 1, 0, 1, 'weapon', 'true', 'Bilinmiyor', 'flashlight.png', '0', NULL, 32),
('weapon_garbagebag', 'Bin bag', 1, 0, 1, 'weapon', 'true', 'Bilinmiyor', NULL, '0', NULL, 33),
('weapon_gusenberg', 'TOMMY', 1, 0, 1, 'weapon', 'true', 'Bilinmiyor', 'WEAPON_GUSENBERG.PNG', '0', NULL, 34),
('weapon_heavypistol', 'Desert Eagle', 1, 0, 1, 'weapon', 'true', 'Bilinmiyor', 'weapon_heavypistol.png', '0', NULL, 35),
('weapon_knife', 'Bicak', 1, 0, 1, 'weapon', 'true', 'Bilinmiyor', 'weapon_knife.png', '0', NULL, 36),
('weapon_knuckle', 'Musta', 1, 0, 1, 'weapon', 'true', 'Bilinmiyor', 'WEAPON_KNUCKLE.png', '0', NULL, 37),
('weapon_machinepistol', 'Tec-9', 1, 0, 1, 'weapon', 'true', 'Bilinmiyor', 'weapon_machinepistol.png', '0', NULL, 38),
('weapon_microsmg', 'Micro SMG', 1, 0, 1, 'weapon', 'true', 'Bilinmiyor', 'weapon_microsmg.png', '0', NULL, 39),
('weapon_minismg', 'Mini SMG', 1.5, 0, 1, 'weapon', 'false', 'Bilinmiyor', 'weapon_minismg.png', '0', NULL, 40),
('weapon_nightstick', 'Jop', 1, 0, 1, 'weapon', 'true', 'Bilinmiyor', 'weapon_nightstick.png', '0', NULL, 41),
('weapon_pistol', 'Colt 1911', 1, 0, 1, 'weapon', 'true', 'Bilinmiyor', 'WEAPON_PISTOL.png', '0', NULL, 42),
('weapon_pistol50', 'Desert Eagle', 1, 0, 1, 'weapon', 'true', 'Bilinmiyor', 'WEAPON_PISTOL50.png', '0', NULL, 43),
('weapon_pistol_mk2', 'PD 9MM', 1, 0, 1, 'weapon', 'true', 'Bilinmiyor', 'WEAPON_PISTOL_MK2.png', '0', NULL, 44),
('weapon_poolcue', 'Sopa', 1, 0, 1, 'weapon', 'true', 'Bilinmiyor', 'weapon_poolcue.png', '0', NULL, 45),
('weapon_revolver', 'Revolver', 1, 0, 1, 'weapon', 'true', 'Bilinmiyor', 'WEAPON_REVOLVER_MK2.png', '0', NULL, 46),
('weapon_sawnoffshotgun', 'SAWED OFF', 1, 0, 1, 'weapon', 'true', 'Bilinmiyor', 'WEAPON_SAWNOFFSHOTGUN.png', '0', NULL, 47),
('weapon_smg', 'MP-5 SMG', 1, 0, 1, 'weapon', 'true', 'Bilinmiyor', 'weapon_smg.png', '0', NULL, 48),
('weapon_smg_mk2', 'MP5-K', 1, 0, 1, 'weapon', 'true', 'Bilinmiyor', 'WEAPON_SMG_MK2.png', '0', NULL, 49),
('weapon_snspistol', 'BU9 Nano', 1, 0, 1, 'weapon', 'true', 'Bilinmiyor', 'weapon_snspistol.png', '0', NULL, 50),
('weapon_stungun', 'Teaser', 1, 0, 1, 'weapon', 'true', 'Bilinmiyor', 'weapon_stungun.png', '0', NULL, 51),
('weapon_switchblade', 'Kelebek', 1, 0, 1, 'weapon', 'true', 'Bilinmiyor', 'weapon_switchblade.png', '0', NULL, 52),
('weapon_vintagepistol', 'Vintage', 1, 0, 1, 'weapon', 'true', 'Bilinmiyor', 'weapon_vintagepistol.png', '0', NULL, 53),
('marul', 'Marul', 0.5, 0, 1, 'item', 'false', 'Marul', 'marul.png', '0', NULL, 54),
('motelkeys', 'Motel Anahtarı', 0.2, 0, 1, 'item', 'true', 'Oda anahtarına benziyor...', 'motelkeys.png', '0', NULL, 55),
('motel_key', 'Motel Anahtarı', 1, 0, 1, 'item', 'true', 'Bilinmiyor', 'anahtar.png', '0', NULL, 56),
('bandage', 'Bandaj', 2, 0, 1, 'item', 'false', 'Bilinmiyor', 'bandage.png', '0', NULL, 58),
('medikit', 'Medikit', 2, 0, 1, 'item', 'false', 'Bilinmiyor', 'medikit.png', '0', NULL, 59),
('carkey', 'Araç Anahtarı', 1, 0, 1, 'item', 'true', 'Bilinmiyor', 'vehiclekey.png', '0', NULL, 60),
('sparekeys', 'Yedek Anahtar', 0.5, 0, 1, 'item', 'true', 'Bilinmiyor', 'yedekanahtar.png', '0', NULL, 61),
('battery', 'Batarya', 1, 0, 1, 'item', 'false', 'Bilinmiyor', 'battery.png', '0', NULL, 62),
('airbag', 'Hava Yastığı', 0.5, 0, 1, 'item', 'false', 'Bilinmiyor', 'airbag.png', '0', NULL, 63),
('lowradio', 'Eski Radyo', 1, 0, 1, 'item', 'false', 'Bilinmiyor', 'carradio.png', '0', NULL, 64),
('stockrim', 'Jant', 0.5, 0, 1, 'item', 'false', 'Bilinmiyor', 'stockrim.png', '0', NULL, 65),
('highradio', 'Kaliteli Radyo', 0.5, 0, 1, 'item', 'false', 'Bilinmiyor', 'kaliteliradyo.png', '0', NULL, 66),
('highrim', 'Kaliteli Jant', 1, 0, 1, 'item', 'false', 'Bilinmiyor', 'jantkaliteli.png', '0', NULL, 67),
('kapi', 'Araç Kapısı', 1, 0, 1, 'item', 'false', 'Bilinmiyor', 'cardoor.png', '0', NULL, 68),
('speaker', 'Hoparlör', 1, 0, 1, 'item', 'false', 'Bilinmiyor', 'speakers.png', '0', NULL, 69),
('jewels', 'Mücevherler', 1, 0, 1, 'item', 'false', 'Bilinmiyor', 'jewels.png', '0', NULL, 70),
('laptop_h', 'Hacker Bilgisiyarı', 1, 0, 1, 'item', 'false', 'Bilinmiyor', 'laptop_h.png', '0', NULL, 71),
('gas_bomb', 'Gaz Bombasi', 0.5, 0, 1, 'item', 'false', 'Bilinmiyor', 'gas_bomb.png', '0', NULL, 72),
('kelepce', 'Kelepçe', 1, 0, 1, 'item', 'true', 'Bilinmiyor', 'kelepce.png', '0', NULL, 73),
('kelepce_key', 'Kelepçe Anahtarı', 1, 0, 1, 'item', 'true', 'Bilinmiyor', 'kelepcekey.png', '0', NULL, 74),
('bankcard', 'Banka Kartı', 1, 0, 1, 'item', 'true', 'Bilinmiyor', 'bankcard.png', '0', NULL, 75),
('telsiz', 'Telsiz', 1, 0, 1, 'item', 'false', 'Bilinmiyor', 'radio.png', '0', NULL, 76),
('gps', 'GPS', 1, 0, 1, 'item', 'false', 'Bilinmiyor', 'gps.png', '0', NULL, 77),
('MedArmor', 'Orta Seviye Zırh', 0.5, 0, 1, 'item', 'false', 'Bilinmiyor', 'medarmor.png', '0', NULL, 78),
('HeavyArmor', 'Güçlü Zırh', 1, 0, 1, 'item', 'false', 'Bilinmiyor', 'celikyelek.png', '0', NULL, 79),
('mdt', 'Polis Tableti', 1, 0, 1, 'item', 'false', 'Bilinmiyor', 'tablet.png', '0', NULL, 80),
('emsmdt', 'EMS Tablet', 1, 0, 1, 'item', 'false', 'Bilinmiyor', 'emstablet.png', '0', NULL, 81),
('portakal', 'Portakal', 0.2, 0, 1, 'item', 'false', 'Bilinmiyor', 'portakal.png', '0', NULL, 82),
('kirliuzum', 'Kirli Üzüm', 0.3, 0, 1, 'item', 'false', 'Bilinmiyor', 'kirliuzum.png', '0', NULL, 83),
('yikanmisuzum', 'Yıkanmış Üzüm', 0.5, 0, 1, 'item', 'false', 'Bilinmiyor', 'yikanmisuzum.png', '0', NULL, 84),
('solucan', 'Solucan', 0.2, 0, 1, 'item', 'false', 'Bilinmiyor', 'solucan.png', '0', NULL, 85),
('powerade', 'Enerji İçeceği', 0.3, 0, 1, 'item', 'false', 'Bilinmiyor', 'powerade.png', '0', NULL, 86),
('protein_shake', 'Protein Tozu', 0.5, 0, 1, 'item', 'false', 'Bilinmiyor', 'proteintoz.png', '0', NULL, 87),
('ticket', 'Hapishane Bileti', 1, -1, 1, 'item', 'false', 'Bilinmiyor', 'ticket.png', '0', NULL, 88),
('carparts', 'Vücut Kısımları', 1, -1, 1, 'item', 'false', 'Bilinmiyor', NULL, '0', NULL, 89),
('zar', 'Zar', 1, 0, 1, 'item', 'false', 'Bilinmiyor', 'zar.png', '0', NULL, 90),
('bodycam', 'Bodycam', 1, 0, 1, 'item', 'false', 'Bilinmiyor', 'bodycam.png', '0', NULL, 91),
('kimlik', 'Kimlik', 1, 0, 1, 'item', 'false', 'Bilinmiyor', 'id_card.png', '0', NULL, 92),
('fixkit', 'Kit réparation', 3, 0, 1, 'item', 'false', 'Bilinmiyor', NULL, '0', NULL, 93),
('tamirkiti', 'Tamir Kiti', 1, 0, 1, 'item', 'false', 'Bilinmiyor', 'fixkit.png', '0', NULL, 94),
('bulletsample', 'Mermi Örneği', 1, 0, 1, 'item', 'false', 'Bilinmiyor', 'ammoexample.png', '0', NULL, 95),
('bloodsample', 'Kan Örneği', 1, 0, 1, 'item', 'false', 'Bilinmiyor', 'kanornek.png', '0', NULL, 96),
('dnaanalyzer', 'DNA Analizörü', 1, 0, 1, 'item', 'false', 'Bilinmiyor', NULL, '0', NULL, 97),
('ammoanalyzer', 'Mermi Analizörü', 1, 0, 1, 'item', 'false', 'Bilinmiyor', 'mermianaliz.png', '0', NULL, 98),
('das', 'Taş', 1, 10, 1, 'item', 'false', 'Bilinmiyor', 'tas.png', '0', NULL, 99),
('dastoken', 'Madenci Tokeni', 0, 10, 1, 'item', 'false', 'Bilinmiyor', 'token.png', '0', NULL, 100),
('kazma', 'Kazma', 1, 10, 1, 'item', 'false', 'Bilinmiyor', 'kazma.png', '0', NULL, 101),
('blowtorch', 'Kaynak Makinesi', 1, 0, 1, 'item', 'false', 'Bilinmiyor', 'kaynakmakine.png', '0', NULL, 102),
('c4', 'C4', 1, 0, 1, 'item', 'false', 'Bilinmiyor', 'c4.png', '0', NULL, 103),
('ammonia', 'Amonyak', 1, 0, 1, 'item', 'false', 'Bilinmiyor', 'amonyak.png', '0', NULL, 104),
('labcard', 'Lab Kart', 1, 0, 1, 'item', 'false', 'Bilinmiyor', 'id_card.png', '0', NULL, 105),
('sacid', 'Sodyum', 1, 0, 1, 'item', 'false', 'Bilinmiyor', 'sodyum.png', '0', NULL, 106),
('weed', 'Paketlenmemiş Esrar', 1, 0, 1, 'item', 'false', 'Bilinmiyor', 'weed4z.png', '0', NULL, 107),
('packagedweed', 'Paketlenmiş Esrar', 1, 0, 1, 'item', 'false', 'Bilinmiyor', 'paketlenmis_esrar.png', '0', NULL, 108),
('packagedmeth', 'Paketlenmiş Meth', 1, 0, 1, 'item', 'false', 'Bilinmiyor', 'meth.png', '0', NULL, 109),
('meth', 'Paketlenmemiş Meth', 1, 0, 1, 'item', 'false', 'Bilinmiyor', 'np_meth-baggy.png', '0', NULL, 110),
('coca', 'Paketlenmemiş Kokain', 1, 0, 1, 'item', 'false', 'Bilinmiyor', 'np_cocaine-baggy.png', '0', NULL, 111),
('packagedcoca', 'Paketlenmiş Kokain', 1, 0, 1, 'item', 'false', 'Bilinmiyor', 'cocaine-baggy.png', '0', NULL, 112),
('sorted_money', 'Yıkanmış Para', 1, 0, 1, 'item', 'false', 'Bilinmiyor', 'black_money.png', '0', NULL, 113),
('thermite', 'Termit', 0.31, 0, 1, 'item', 'false', 'Bilinmiyor', 'thermite.png', '0', NULL, 114),
('drone1', 'Basit Drone', 0.5, 0, 1, 'item', 'false', 'Bilinmiyor', 'drone1.png', '0', NULL, 115),
('drone3', 'Drone 3', 1, 0, 1, 'item', 'false', 'Bilinmiyor', 'drone3.png', '0', NULL, 116),
('drone5', 'Gelişmiş Drone', 1, 0, 1, 'item', 'false', 'Bilinmiyor', 'drone5.png', '0', NULL, 117),
('drone7', 'Gelişmiş Polis Drone', 1, 0, 1, 'item', 'false', 'Bilinmiyor', 'drone7.png', '0', NULL, 118),
('housekeys', 'Ev Anahtarı', 0.5, 0, 1, 'item', 'true', 'Bilinmiyor', 'evkey.png', '0', NULL, 119),
('hackerDevice', 'Hackleme Cihazı', 1, 0, 1, 'item', 'false', 'Bilinmiyor', 'hackertablet.png', '0', NULL, 120),
('basketboltop', 'Basketbol Topu', 1, 0, 1, 'item', 'false', 'Bilinmiyor', 'basketboltop.png', '0', NULL, 121),
('housekeys', 'Ev Anahtarı', 0.5, 0, 1, 'item', 'true', 'Bilinmiyor', 'evanahtar.png', '0', NULL, 122),
('cola', 'Kola', 0.4, 0, 1, 'item', 'false', 'Bilinmiyor', 'cola.png', '0', NULL, 123),
('redbull', 'Redbull', 0.3, 0, 1, 'item', 'false', 'Bilinmiyor', 'redbull.png', '0', NULL, 124),
('bread', 'Ekmek', 0.5, 0, 1, 'item', 'false', 'Bilinmiyor', 'bread.png', '0', NULL, 125),
('hamburger', 'Hamburger', 0.3, 0, 1, 'item', 'false', 'Bilinmiyor', 'hamburger.png', '0', NULL, 126),
('notdefter', 'Not Defteri', 1, 0, 1, 'item', 'false', 'Bilinmiyor', 'notdefter.png', '0', NULL, 127),
('emlak_key', 'Emlakçı Depo Anahtar', 0.01, 0, 1, 'item', 'false', 'Emlakçı Depo Anahtarı', 'motel_key.png', '0', NULL, 128),
('motelkeys', 'Motel Anahtarı', 0.2, 0, 1, 'item', 'true', 'Oda anahtarına benziyor...', 'motelkeys.png', '0', NULL, 129),
('kirliuzum', 'Kirli Üzüm', 0.01, 0, 1, 'item', 'false', 'Kirli Üzüm', 'kirliuzum.png', '0', NULL, 255),
('yikanmisuzum', 'Yıkanmış Üzüm', 0.01, 0, 1, 'item', 'false', 'Yıkanmış Üzüm', 'yikanmisuzum.png', '0', NULL, 256),
('cantax', 'Çanta', 1, 0, 1, 'item', 'true', 'Bilinmiyor', 'canta.png', '0', NULL, 257);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `jobs`
--

CREATE TABLE `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `jobs`
--

INSERT INTO `jobs` (`name`, `label`) VALUES
('ambulance', 'EMS'),
('police', 'LSPD'),
('unemployed', 'Sivil'),
('emlak', 'Emlak');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `job_grades`
--

CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL,
  `job_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'unemployed', 0, 'unemployed', 'Sivil', 200, '{}', '{}'),
(2, 'ambulance', 0, 'ambulance', 'Ambulans Şöförü', 20, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(3, 'ambulance', 1, 'doctor', 'Doktor', 40, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(4, 'ambulance', 2, 'chief_doctor', 'Başhekim', 60, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(5, 'ambulance', 3, 'boss', 'Hastane Sahibi', 80, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(6, 'police', 0, 'recruit', 'Stajyer Polis', 20, '{}', '{}'),
(7, 'police', 1, 'officer', 'Polis Memuru', 40, '{}', '{}'),
(8, 'police', 2, 'sergeant', 'Kıdemli Polis Memuru', 60, '{}', '{}'),
(9, 'police', 3, 'lieutenant', 'Baş Polis Memuru', 85, '{}', '{}'),
(10, 'police', 4, 'boss', 'Komiser Yardımcısı', 100, '{}', '{}'),
(11, 'police', 5, 'boss1', 'Komiser', 100, '{}', '{}'),
(12, 'police', 6, 'boss2', 'Başkomiser', 100, '{}', '{}'),
(13, 'police', 7, 'boss3', 'Şef', 100, '{}', '{}'),
(0, 'emlak', 1, 'Emlak', 'Emlakçı', 12, '{}', '{}');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kibra_emlak`
--

CREATE TABLE `kibra_emlak` (
  `id` int(1) NOT NULL,
  `sifre` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `kibra_emlak`
--

INSERT INTO `kibra_emlak` (`id`, `sifre`) VALUES
(1, 11);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `m3_banlist`
--

CREATE TABLE `m3_banlist` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `admin` varchar(255) DEFAULT NULL,
  `steam` varchar(30) DEFAULT NULL,
  `rockstar` varchar(50) DEFAULT NULL,
  `xbox` varchar(21) DEFAULT NULL,
  `live` varchar(21) DEFAULT NULL,
  `discord` varchar(30) DEFAULT NULL,
  `ip` varchar(25) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `time` int(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `owned_vehicles`
--

CREATE TABLE `owned_vehicles` (
  `owner` varchar(40) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `model` varchar(25) NOT NULL,
  `vehicle` longtext DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'car',
  `job` varchar(20) NOT NULL DEFAULT 'civ',
  `stored` tinyint(1) NOT NULL DEFAULT 0,
  `state` int(11) NOT NULL,
  `garage` varchar(22) NOT NULL DEFAULT 'A',
  `ikinciel` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `owned_vehicles`
--

INSERT INTO `owned_vehicles` (`owner`, `plate`, `model`, `vehicle`, `type`, `job`, `stored`, `state`, `garage`, `ikinciel`) VALUES
('steam:110000119c7e6ba', 'UMTC6508', '', '{\"modArmor\":-1,\"modDial\":-1,\"pearlescentColor\":5,\"color2\":12,\"modHydrolic\":-1,\"modExhaust\":-1,\"engineHealth\":1000.0,\"modSpoilers\":-1,\"xenonColor\":255,\"neonEnabled\":[false,false,false,false],\"modRoof\":-1,\"tankHealth\":1000.0,\"modGrille\":-1,\"modFrontWheels\":-1,\"modArchCover\":-1,\"plate\":\"UMTC6508\",\"modEngine\":-1,\"modLivery\":-1,\"tyreSmokeColor\":[255,255,255],\"modTrimB\":-1,\"modTrimA\":-1,\"neonColor\":[255,0,255],\"modWindows\":-1,\"modVanityPlate\":-1,\"modSeats\":-1,\"modTrunk\":-1,\"modSteeringWheel\":-1,\"modRightFender\":-1,\"modDashboard\":-1,\"modFender\":-1,\"modPlateHolder\":-1,\"dirtLevel\":4.0,\"modBrakes\":-1,\"wheelColor\":111,\"modEngineBlock\":-1,\"modAirFilter\":-1,\"wheels\":7,\"modStruts\":-1,\"modFrontBumper\":-1,\"modHood\":-1,\"modTurbo\":false,\"windowTint\":-1,\"model\":482197771,\"modAPlate\":-1,\"modTransmission\":-1,\"plateIndex\":0,\"modAerials\":-1,\"modFrame\":-1,\"modSmokeEnabled\":false,\"modTank\":-1,\"modSuspension\":-1,\"modSideSkirt\":-1,\"modShifterLeavers\":-1,\"bodyHealth\":1000.0,\"modBackWheels\":-1,\"modHorns\":-1,\"extras\":[],\"color1\":5,\"modXenon\":false,\"modOrnaments\":-1,\"fuelLevel\":60.0,\"modDoorSpeaker\":-1,\"modSpeakers\":-1,\"modRearBumper\":-1}', 'car', 'civ', 1, 0, 'A', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `phone_app_chat`
--

CREATE TABLE `phone_app_chat` (
  `id` int(11) NOT NULL,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `phone_calls`
--

CREATE TABLE `phone_calls` (
  `id` int(11) NOT NULL,
  `owner` varchar(10) NOT NULL,
  `num` varchar(10) NOT NULL,
  `incoming` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `accepts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `phone_messages`
--

CREATE TABLE `phone_messages` (
  `id` int(11) NOT NULL,
  `transmitter` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `phone_users_contacts`
--

CREATE TABLE `phone_users_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `playerskins`
--

CREATE TABLE `playerskins` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `skin` text NOT NULL,
  `active` tinyint(2) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `playerskins`
--

INSERT INTO `playerskins` (`id`, `citizenid`, `model`, `skin`, `active`) VALUES
(1, 'steam:110000119c7e6ba', '1885233650', '{\"eyebrown_high\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"ageing\":{\"texture\":0,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0},\"cheek_3\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"face\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"chimp_bone_lowering\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"eyebrows\":{\"texture\":1,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1},\"ear\":{\"texture\":0,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0},\"accessory\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"decals\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"jaw_bone_back_lenght\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"arms\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"watch\":{\"texture\":0,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0},\"hat\":{\"texture\":0,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0},\"pants\":{\"texture\":0,\"defaultItem\":0,\"item\":1,\"defaultTexture\":0},\"neck_thikness\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"mask\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"bracelet\":{\"texture\":0,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0},\"jaw_bone_width\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"nose_5\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"nose_4\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"chimp_hole\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"t-shirt\":{\"texture\":0,\"defaultItem\":1,\"item\":1,\"defaultTexture\":0},\"eye_opening\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"nose_3\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"chimp_bone_lenght\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"eyebrown_forward\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"beard\":{\"texture\":1,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1},\"cheek_1\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"lips_thickness\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"vest\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"torso2\":{\"texture\":0,\"defaultItem\":0,\"item\":4,\"defaultTexture\":0},\"chimp_bone_width\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"nose_2\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"makeup\":{\"texture\":1,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1},\"blush\":{\"texture\":1,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1},\"cheek_2\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"nose_1\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"nose_0\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"moles\":{\"texture\":0,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0},\"eye_color\":{\"texture\":0,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0},\"lipstick\":{\"texture\":1,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1},\"bag\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"shoes\":{\"texture\":0,\"defaultItem\":1,\"item\":2,\"defaultTexture\":0},\"glass\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"hair\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0}}', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `player_outfits`
--

CREATE TABLE `player_outfits` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `outfitname` varchar(50) NOT NULL,
  `model` varchar(50) DEFAULT NULL,
  `skin` text DEFAULT NULL,
  `outfitId` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `society_moneywash`
--

CREATE TABLE `society_moneywash` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) NOT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `stashitems`
--

CREATE TABLE `stashitems` (
  `id` int(11) NOT NULL,
  `stash` varchar(255) NOT NULL,
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `stashitems`
--

INSERT INTO `stashitems` (`id`, `stash`, `items`) VALUES
(0, 'Ev_92_1', '[]'),
(0, 'Depo_Kibraport(3992)', '[]'),
(0, 'Depo_Kibraport(3992)', '[]');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `trunkitems`
--

CREATE TABLE `trunkitems` (
  `id` int(11) NOT NULL,
  `plate` varchar(255) NOT NULL,
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `twitter_accounts`
--

CREATE TABLE `twitter_accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Tablo döküm verisi `twitter_accounts`
--

INSERT INTO `twitter_accounts` (`id`, `username`, `password`, `avatar_url`, `identifier`) VALUES
(1624, 'Emir Kibar', '0', NULL, 'steam:110000119c7e6ba');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `twitter_likes`
--

CREATE TABLE `twitter_likes` (
  `id` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `twitter_tweets`
--

CREATE TABLE `twitter_tweets` (
  `id` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `identifier` varchar(40) NOT NULL,
  `steam` longtext DEFAULT NULL,
  `accounts` longtext DEFAULT NULL,
  `group` varchar(50) DEFAULT 'user',
  `inventory` longtext DEFAULT NULL,
  `job` varchar(20) DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `position` varchar(255) DEFAULT '{"x":-269.4,"y":-955.3,"z":31.2,"heading":205.8}',
  `is_dead` tinyint(1) DEFAULT 0,
  `firstname` varchar(50) DEFAULT '',
  `lastname` varchar(50) DEFAULT '',
  `dateofbirth` varchar(25) DEFAULT '',
  `sex` varchar(10) DEFAULT '0',
  `height` varchar(5) DEFAULT '',
  `status` longtext DEFAULT NULL,
  `tattoos` longtext DEFAULT NULL,
  `loadout` varchar(25) NOT NULL DEFAULT '[]',
  `mugshot` varchar(255) DEFAULT 'https://i.imgur.com/HAF61R9.png',
  `aranma` mediumtext DEFAULT '[]',
  `photo` mediumtext DEFAULT NULL,
  `jail` int(11) NOT NULL DEFAULT 0,
  `phone_number` varchar(10) DEFAULT NULL,
  `avatar` longtext DEFAULT NULL,
  `armor` varchar(255) NOT NULL,
  `crypto` longtext NOT NULL DEFAULT '{"bitcoin": 0, "ethereum": 0, "bitcoin-cash": 0, "bitcoin-sv": 0, "litecoin": 0, "binance-coin": 0, "monero": 0, "dash": 0, "zcash": 0, "maker": 0}'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `identifier`, `steam`, `accounts`, `group`, `inventory`, `job`, `job_grade`, `position`, `is_dead`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `status`, `tattoos`, `loadout`, `mugshot`, `aranma`, `photo`, `jail`, `phone_number`, `avatar`, `armor`, `crypto`) VALUES
(1, 'steam:110000119c7e6ba', NULL, '{\"money\":0,\"black_money\":0,\"bank\":34961700}', 'user', '[{\"type\":\"weapon\",\"name\":\"weapon_pistol\",\"count\":1,\"info\":{\"serie\":\"70jxy9rx240eayv\",\"ammo\":23},\"slot\":1},{\"type\":\"item\",\"name\":\"cash\",\"count\":9845000,\"info\":\"\",\"slot\":2},{\"type\":\"item\",\"name\":\"motelkeys\",\"count\":1,\"info\":{\"motel\":92},\"slot\":3},{\"type\":\"item\",\"name\":\"carkey\",\"count\":1,\"info\":{\"plaka\":\"UMTC6508\",\"model\":\"lynx\"},\"slot\":4},{\"type\":\"item\",\"name\":\"phone\",\"count\":1,\"info\":\"\",\"slot\":5}]', 'unemployed', 0, '{\"heading\":282.6,\"x\":295.6,\"y\":-365.6,\"z\":45.1}', 0, 'Emir', 'Kibar', '0996-05-01', 'm', '184', '[{\"percent\":78.85,\"name\":\"hunger\",\"val\":788500},{\"percent\":84.1375,\"name\":\"thirst\",\"val\":841375}]', NULL, '[]', 'https://i.imgur.com/HAF61R9.png', '[]', NULL, 0, '7098236', NULL, '', '{\"bitcoin\": 0, \"ethereum\": 0, \"bitcoin-cash\": 0, \"bitcoin-sv\": 0, \"litecoin\": 0, \"binance-coin\": 0, \"monero\": 0, \"dash\": 0, \"zcash\": 0, \"maker\": 0}');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `vehicles`
--

CREATE TABLE `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  `stock` float NOT NULL DEFAULT 200
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `vehicles`
--

INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `stock`) VALUES
('Adder', 'adder', 900000, 'super', 199),
('Akuma', 'AKUMA', 7500, 'motorcycles', 200),
('Alpha', 'alpha', 60000, 'sports', 200),
('Ardent', 'ardent', 1150000, 'sportsclassics', 200),
('Asea', 'asea', 5500, 'sedans', 199),
('Autarch', 'autarch', 1955000, 'super', 200),
('Avarus', 'avarus', 18000, 'motorcycles', 200),
('Bagger', 'bagger', 13500, 'motorcycles', 200),
('Baller', 'baller2', 40000, 'suvs', 199),
('Baller Sport', 'baller3', 60000, 'suvs', 200),
('Banshee', 'banshee', 70000, 'sports', 200),
('Banshee 900R', 'banshee2', 255000, 'super', 198),
('Bati 801', 'bati', 12000, 'motorcycles', 199),
('Bati 801RR', 'bati2', 19000, 'motorcycles', 200),
('Bestia GTS', 'bestiagts', 55000, 'sports', 200),
('BF400', 'bf400', 6500, 'motorcycles', 200),
('Bf Injection', 'bfinjection', 16000, 'offroad', 200),
('Bifta', 'bifta', 12000, 'offroad', 200),
('Bison', 'bison', 45000, 'vans', 200),
('Blade', 'blade', 15000, 'muscle', 200),
('Blazer', 'blazer', 6500, 'offroad', 200),
('Blazer Sport', 'blazer4', 8500, 'offroad', 200),
('blazer5', 'blazer5', 1755600, 'offroad', 200),
('Blista', 'blista', 8000, 'compacts', 200),
('BMX (velo)', 'bmx', 160, 'motorcycles', 200),
('Bobcat XL', 'bobcatxl', 32000, 'vans', 200),
('Brawler', 'brawler', 45000, 'offroad', 199),
('Brioso R/A', 'brioso', 18000, 'compacts', 200),
('Btype', 'btype', 62000, 'sportsclassics', 200),
('Btype Hotroad', 'btype2', 155000, 'sportsclassics', 200),
('Btype Luxe', 'btype3', 85000, 'sportsclassics', 200),
('Buccaneer', 'buccaneer', 18000, 'muscle', 199),
('Buccaneer Rider', 'buccaneer2', 24000, 'muscle', 200),
('Buffalo', 'buffalo', 12000, 'sports', 200),
('Buffalo S', 'buffalo2', 20000, 'sports', 200),
('Bullet', 'bullet', 90000, 'super', 200),
('Burrito', 'burrito3', 19000, 'vans', 198),
('Camper', 'camper', 42000, 'vans', 200),
('Carbonizzare', 'carbonizzare', 75000, 'sports', 200),
('Carbon RS', 'carbonrs', 18000, 'motorcycles', 200),
('Casco', 'casco', 30000, 'sportsclassics', 199),
('Cavalcade', 'cavalcade2', 55000, 'suvs', 199),
('Cheetah', 'cheetah', 375000, 'super', 200),
('Chimera', 'chimera', 38000, 'motorcycles', 200),
('Chino', 'chino', 15000, 'muscle', 200),
('Chino Luxe', 'chino2', 19000, 'muscle', 200),
('Cliffhanger', 'cliffhanger', 9500, 'motorcycles', 200),
('Cognoscenti Cabrio', 'cogcabrio', 55000, 'coupes', 200),
('Cognoscenti', 'cognoscenti', 55000, 'sedans', 200),
('Comet', 'comet2', 65000, 'sports', 200),
('Comet 5', 'comet5', 1145000, 'sports', 200),
('Contender', 'contender', 70000, 'suvs', 196),
('Coquette', 'coquette', 65000, 'sports', 200),
('Coquette Classic', 'coquette2', 40000, 'sportsclassics', 200),
('Coquette BlackFin', 'coquette3', 55000, 'muscle', 200),
('Cruiser (velo)', 'cruiser', 510, 'motorcycles', 200),
('Cyclone', 'cyclone', 1890000, 'super', 200),
('Daemon', 'daemon', 11500, 'motorcycles', 200),
('Daemon High', 'daemon2', 13500, 'motorcycles', 200),
('Defiler', 'defiler', 9800, 'motorcycles', 200),
('Deluxo', 'deluxo', 4721500, 'sportsclassics', 200),
('Dominator', 'dominator', 35000, 'muscle', 200),
('Double T', 'double', 28000, 'motorcycles', 200),
('Dubsta', 'dubsta', 45000, 'suvs', 199),
('Dubsta Luxuary', 'dubsta2', 60000, 'suvs', 198),
('Bubsta 6x6', 'dubsta3', 120000, 'offroad', 200),
('Dukes', 'dukes', 28000, 'muscle', 200),
('Dune Buggy', 'dune', 8000, 'offroad', 200),
('Elegy', 'elegy2', 38500, 'sports', 200),
('Emperor', 'emperor', 8500, 'sedans', 200),
('Enduro', 'enduro', 5500, 'motorcycles', 200),
('Entity XF', 'entityxf', 425000, 'super', 200),
('Esskey', 'esskey', 4200, 'motorcycles', 200),
('Exemplar', 'exemplar', 32000, 'coupes', 200),
('F620', 'f620', 40000, 'coupes', 200),
('Faction', 'faction', 20000, 'muscle', 200),
('Faction Rider', 'faction2', 30000, 'muscle', 200),
('Faction XL', 'faction3', 40000, 'muscle', 200),
('Faggio', 'faggio', 1900, 'motorcycles', 200),
('Vespa', 'faggio2', 2800, 'motorcycles', 200),
('Felon', 'felon', 42000, 'coupes', 200),
('Felon GT', 'felon2', 55000, 'coupes', 200),
('Feltzer', 'feltzer2', 55000, 'sports', 200),
('Stirling GT', 'feltzer3', 65000, 'sportsclassics', 198),
('Fixter (velo)', 'fixter', 225, 'motorcycles', 200),
('FMJ', 'fmj', 185000, 'super', 200),
('Fhantom', 'fq2', 17000, 'suvs', 199),
('Fugitive', 'fugitive', 12000, 'sedans', 200),
('Furore GT', 'furoregt', 45000, 'sports', 199),
('Fusilade', 'fusilade', 40000, 'sports', 200),
('Gargoyle', 'gargoyle', 16500, 'motorcycles', 200),
('Gauntlet', 'gauntlet', 30000, 'muscle', 200),
('Gang Burrito', 'gburrito', 45000, 'vans', 199),
('Burrito', 'gburrito2', 29000, 'vans', 199),
('Glendale', 'glendale', 6500, 'sedans', 200),
('Grabger', 'granger', 50000, 'suvs', 200),
('Gresley', 'gresley', 47500, 'suvs', 200),
('GT 500', 'gt500', 785000, 'sportsclassics', 200),
('Guardian', 'guardian', 45000, 'offroad', 200),
('Hakuchou', 'hakuchou', 31000, 'motorcycles', 200),
('Hakuchou Sport', 'hakuchou2', 55000, 'motorcycles', 200),
('Hermes', 'hermes', 535000, 'muscle', 200),
('Hexer', 'hexer', 12000, 'motorcycles', 200),
('Hotknife', 'hotknife', 125000, 'muscle', 200),
('Huntley S', 'huntley', 40000, 'suvs', 200),
('Hustler', 'hustler', 625000, 'muscle', 200),
('Infernus', 'infernus', 180000, 'super', 200),
('Innovation', 'innovation', 23500, 'motorcycles', 200),
('Intruder', 'intruder', 7500, 'sedans', 200),
('Issi', 'issi2', 10000, 'compacts', 200),
('Jackal', 'jackal', 38000, 'coupes', 200),
('Jester', 'jester', 65000, 'sports', 200),
('Jester(Racecar)', 'jester2', 135000, 'sports', 200),
('Journey', 'journey', 6500, 'vans', 200),
('Kamacho', 'kamacho', 345000, 'offroad', 200),
('Khamelion', 'khamelion', 38000, 'sports', 200),
('Kuruma', 'kuruma', 30000, 'sports', 200),
('Landstalker', 'landstalker', 35000, 'suvs', 200),
('RE-7B', 'le7b', 325000, 'super', 200),
('Lynx', 'lynx', 40000, 'sports', 199),
('Mamba', 'mamba', 70000, 'sports', 200),
('Manana', 'manana', 12800, 'sportsclassics', 200),
('Manchez', 'manchez', 5300, 'motorcycles', 200),
('Massacro', 'massacro', 65000, 'sports', 200),
('Massacro(Racecar)', 'massacro2', 130000, 'sports', 200),
('Mesa', 'mesa', 16000, 'suvs', 200),
('Mesa Trail', 'mesa3', 40000, 'suvs', 200),
('Minivan', 'minivan', 13000, 'vans', 200),
('Monroe', 'monroe', 55000, 'sportsclassics', 200),
('The Liberator', 'monster', 210000, 'offroad', 200),
('Moonbeam', 'moonbeam', 18000, 'vans', 200),
('Moonbeam Rider', 'moonbeam2', 35000, 'vans', 199),
('Nemesis', 'nemesis', 5800, 'motorcycles', 200),
('Neon', 'neon', 1500000, 'sports', 200),
('Nightblade', 'nightblade', 35000, 'motorcycles', 200),
('Nightshade', 'nightshade', 65000, 'muscle', 200),
('9F', 'ninef', 65000, 'sports', 200),
('9F Cabrio', 'ninef2', 80000, 'sports', 200),
('Omnis', 'omnis', 35000, 'sports', 200),
('Oppressor', 'oppressor', 3524500, 'super', 200),
('Oracle XS', 'oracle2', 35000, 'coupes', 200),
('Osiris', 'osiris', 160000, 'super', 200),
('Panto', 'panto', 10000, 'compacts', 200),
('Paradise', 'paradise', 19000, 'vans', 200),
('Pariah', 'pariah', 1420000, 'sports', 200),
('Patriot', 'patriot', 55000, 'suvs', 199),
('PCJ-600', 'pcj', 6200, 'motorcycles', 200),
('Penumbra', 'penumbra', 28000, 'sports', 200),
('Pfister', 'pfister811', 85000, 'super', 200),
('Phoenix', 'phoenix', 12500, 'muscle', 200),
('Picador', 'picador', 18000, 'muscle', 200),
('Pigalle', 'pigalle', 20000, 'sportsclassics', 200),
('Prairie', 'prairie', 12000, 'compacts', 200),
('Premier', 'premier', 8000, 'sedans', 200),
('Primo Custom', 'primo2', 14000, 'sedans', 200),
('X80 Proto', 'prototipo', 2500000, 'super', 200),
('Radius', 'radi', 29000, 'suvs', 200),
('raiden', 'raiden', 1375000, 'sports', 199),
('Rapid GT', 'rapidgt', 35000, 'sports', 200),
('Rapid GT Convertible', 'rapidgt2', 45000, 'sports', 200),
('Rapid GT3', 'rapidgt3', 885000, 'sportsclassics', 200),
('Reaper', 'reaper', 150000, 'super', 200),
('Rebel', 'rebel2', 35000, 'offroad', 200),
('Regina', 'regina', 5000, 'sedans', 200),
('Retinue', 'retinue', 615000, 'sportsclassics', 200),
('Revolter', 'revolter', 1610000, 'sports', 199),
('riata', 'riata', 380000, 'offroad', 200),
('Rocoto', 'rocoto', 45000, 'suvs', 200),
('Ruffian', 'ruffian', 6800, 'motorcycles', 200),
('Ruiner 2', 'ruiner2', 5745600, 'muscle', 200),
('Rumpo', 'rumpo', 15000, 'vans', 199),
('Rumpo Trail', 'rumpo3', 19500, 'vans', 200),
('Sabre Turbo', 'sabregt', 20000, 'muscle', 200),
('Sabre GT', 'sabregt2', 25000, 'muscle', 200),
('Sanchez', 'sanchez', 5300, 'motorcycles', 200),
('Sanchez Sport', 'sanchez2', 5300, 'motorcycles', 200),
('Sanctus', 'sanctus', 25000, 'motorcycles', 200),
('Sandking', 'sandking', 55000, 'offroad', 200),
('Savestra', 'savestra', 990000, 'sportsclassics', 200),
('SC 1', 'sc1', 1603000, 'super', 200),
('Schafter', 'schafter2', 25000, 'sedans', 200),
('Schafter V12', 'schafter3', 50000, 'sports', 200),
('Scorcher (velo)', 'scorcher', 280, 'motorcycles', 199),
('Seminole', 'seminole', 25000, 'suvs', 200),
('Sentinel', 'sentinel', 32000, 'coupes', 200),
('Sentinel XS', 'sentinel2', 40000, 'coupes', 200),
('Sentinel3', 'sentinel3', 650000, 'sports', 200),
('Seven 70', 'seven70', 39500, 'sports', 200),
('ETR1', 'sheava', 220000, 'super', 199),
('Shotaro Concept', 'shotaro', 320000, 'motorcycles', 200),
('Slam Van', 'slamvan3', 11500, 'muscle', 200),
('Sovereign', 'sovereign', 22000, 'motorcycles', 200),
('Stinger', 'stinger', 80000, 'sportsclassics', 200),
('Stinger GT', 'stingergt', 75000, 'sportsclassics', 200),
('Streiter', 'streiter', 500000, 'sports', 200),
('Stretch', 'stretch', 90000, 'sedans', 200),
('Stromberg', 'stromberg', 3185350, 'sports', 200),
('Sultan', 'sultan', 15000, 'sports', 200),
('Sultan RS', 'sultanrs', 65000, 'super', 200),
('Super Diamond', 'superd', 130000, 'sedans', 200),
('Surano', 'surano', 50000, 'sports', 200),
('Surfer', 'surfer', 12000, 'vans', 200),
('T20', 't20', 300000, 'super', 200),
('Tailgater', 'tailgater', 30000, 'sedans', 200),
('Tampa', 'tampa', 16000, 'muscle', 200),
('Drift Tampa', 'tampa2', 80000, 'sports', 200),
('Thrust', 'thrust', 24000, 'motorcycles', 200),
('Tri bike (velo)', 'tribike3', 520, 'motorcycles', 200),
('Trophy Truck', 'trophytruck', 60000, 'offroad', 199),
('Trophy Truck Limited', 'trophytruck2', 80000, 'offroad', 200),
('Tropos', 'tropos', 40000, 'sports', 200),
('Turismo R', 'turismor', 350000, 'super', 200),
('Tyrus', 'tyrus', 600000, 'super', 200),
('Vacca', 'vacca', 120000, 'super', 200),
('Vader', 'vader', 7200, 'motorcycles', 200),
('Verlierer', 'verlierer2', 70000, 'sports', 200),
('Vigero', 'vigero', 12500, 'muscle', 200),
('Virgo', 'virgo', 14000, 'muscle', 200),
('Viseris', 'viseris', 875000, 'sportsclassics', 200),
('Visione', 'visione', 2250000, 'super', 200),
('Voltic', 'voltic', 90000, 'super', 200),
('Voltic 2', 'voltic2', 3830400, 'super', 199),
('Voodoo', 'voodoo', 7200, 'muscle', 200),
('Vortex', 'vortex', 9800, 'motorcycles', 200),
('Warrener', 'warrener', 4000, 'sedans', 200),
('Washington', 'washington', 9000, 'sedans', 200),
('Windsor', 'windsor', 95000, 'coupes', 200),
('Windsor Drop', 'windsor2', 125000, 'coupes', 200),
('Woflsbane', 'wolfsbane', 9000, 'motorcycles', 200),
('XLS', 'xls', 32000, 'suvs', 199),
('Yosemite', 'yosemite', 485000, 'muscle', 200),
('Youga', 'youga', 10800, 'vans', 200),
('Youga Luxuary', 'youga2', 14500, 'vans', 200),
('Z190', 'z190', 900000, 'sportsclassics', 200),
('Zentorno', 'zentorno', 1500000, 'super', 200),
('Zion', 'zion', 36000, 'coupes', 200),
('Zion Cabrio', 'zion2', 45000, 'coupes', 200),
('Zombie', 'zombiea', 9500, 'motorcycles', 200),
('Zombie Luxuary', 'zombieb', 12000, 'motorcycles', 200),
('Z-Type', 'ztype', 220000, 'sportsclassics', 200);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `vehicle_categories`
--

CREATE TABLE `vehicle_categories` (
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `vehicle_categories`
--

INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
('compacts', 'Compacts'),
('coupes', 'Coupés'),
('motorcycles', 'Motorsikletler'),
('muscle', 'Muscle Araçlar'),
('offroad', 'Arazi Araçları'),
('sedans', 'Sedan Araçlar'),
('sports', 'Spor Araçlar'),
('sportsclassics', 'Spor Klasik Araçlar'),
('super', 'Süper Araçlar'),
('suvs', 'SUVs Araçlar'),
('vans', 'Minibüs Araçlar');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yellowpages_posts`
--

CREATE TABLE `yellowpages_posts` (
  `id` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `addon_account`
--
ALTER TABLE `addon_account`
  ADD PRIMARY KEY (`name`);

--
-- Tablo için indeksler `addon_account_data`
--
ALTER TABLE `addon_account_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  ADD KEY `index_addon_account_data_account_name` (`account_name`);

--
-- Tablo için indeksler `addon_inventory`
--
ALTER TABLE `addon_inventory`
  ADD PRIMARY KEY (`name`);

--
-- Tablo için indeksler `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_addon_inventory_items_inventory_name_name` (`inventory_name`,`name`),
  ADD KEY `index_addon_inventory_items_inventory_name_name_owner` (`inventory_name`,`name`,`owner`),
  ADD KEY `index_addon_inventory_inventory_name` (`inventory_name`);

--
-- Tablo için indeksler `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `crew_phone_bank`
--
ALTER TABLE `crew_phone_bank`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `crew_phone_news`
--
ALTER TABLE `crew_phone_news`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `m3_banlist`
--
ALTER TABLE `m3_banlist`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `phone_calls`
--
ALTER TABLE `phone_calls`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `phone_messages`
--
ALTER TABLE `phone_messages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `playerskins`
--
ALTER TABLE `playerskins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citizenid` (`citizenid`),
  ADD KEY `active` (`active`);

--
-- Tablo için indeksler `player_outfits`
--
ALTER TABLE `player_outfits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citizenid` (`citizenid`),
  ADD KEY `outfitId` (`outfitId`);

--
-- Tablo için indeksler `society_moneywash`
--
ALTER TABLE `society_moneywash`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `twitter_accounts`
--
ALTER TABLE `twitter_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Tablo için indeksler `twitter_likes`
--
ALTER TABLE `twitter_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_twitter_likes_twitter_accounts` (`authorId`),
  ADD KEY `FK_twitter_likes_twitter_tweets` (`tweetId`);

--
-- Tablo için indeksler `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_twitter_tweets_twitter_accounts` (`authorId`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `yellowpages_posts`
--
ALTER TABLE `yellowpages_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_yellowpages_posts_twitter_accounts` (`authorId`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `addon_account_data`
--
ALTER TABLE `addon_account_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `crew_phone_bank`
--
ALTER TABLE `crew_phone_bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Tablo için AUTO_INCREMENT değeri `crew_phone_news`
--
ALTER TABLE `crew_phone_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- Tablo için AUTO_INCREMENT değeri `m3_banlist`
--
ALTER TABLE `m3_banlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=268;

--
-- Tablo için AUTO_INCREMENT değeri `phone_calls`
--
ALTER TABLE `phone_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16291;

--
-- Tablo için AUTO_INCREMENT değeri `phone_messages`
--
ALTER TABLE `phone_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45219;

--
-- Tablo için AUTO_INCREMENT değeri `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=992;

--
-- Tablo için AUTO_INCREMENT değeri `playerskins`
--
ALTER TABLE `playerskins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `player_outfits`
--
ALTER TABLE `player_outfits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8970;

--
-- Tablo için AUTO_INCREMENT değeri `society_moneywash`
--
ALTER TABLE `society_moneywash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `twitter_accounts`
--
ALTER TABLE `twitter_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1625;

--
-- Tablo için AUTO_INCREMENT değeri `twitter_likes`
--
ALTER TABLE `twitter_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=605;

--
-- Tablo için AUTO_INCREMENT değeri `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10712;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `yellowpages_posts`
--
ALTER TABLE `yellowpages_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `twitter_likes`
--
ALTER TABLE `twitter_likes`
  ADD CONSTRAINT `FK_twitter_likes_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`),
  ADD CONSTRAINT `FK_twitter_likes_twitter_tweets` FOREIGN KEY (`tweetId`) REFERENCES `twitter_tweets` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD CONSTRAINT `FK_twitter_tweets_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`);

--
-- Tablo kısıtlamaları `yellowpages_posts`
--
ALTER TABLE `yellowpages_posts`
  ADD CONSTRAINT `FK_yellowpages_posts_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
