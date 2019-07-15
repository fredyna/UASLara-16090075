# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.1.26-MariaDB)
# Database: 2019_asap
# Generation Time: 2019-07-15 04:21:39 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table kategori_soal
# ------------------------------------------------------------

DROP TABLE IF EXISTS `kategori_soal`;

CREATE TABLE `kategori_soal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kategori` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `kategori_soal` WRITE;
/*!40000 ALTER TABLE `kategori_soal` DISABLE KEYS */;

INSERT INTO `kategori_soal` (`id`, `kategori`, `deskripsi`, `deleted_at`, `created_at`, `updated_at`)
VALUES
	(1,'Matematika','Soal Matematika',NULL,'2019-07-14 10:30:46','2019-07-14 10:31:11'),
	(2,'Bahasa Inggris','Soal Bahasa Inggris','2019-07-14 10:31:35','2019-07-14 10:31:30','2019-07-14 10:31:35'),
	(3,'Bahasa Inggris','Kumpulan Soal Bahasa Inggris',NULL,'2019-07-14 18:47:47','2019-07-14 18:47:47'),
	(4,'Bahasa Indonesia','Kumpulan Soal Bahasa Indonesia',NULL,'2019-07-14 18:48:04','2019-07-14 18:48:04'),
	(5,'Komputer Dasar','Kumpulan Soal Komputer Dasar',NULL,'2019-07-14 18:49:00','2019-07-14 18:49:00'),
	(6,'Logika','Kumpulan Soal Logika',NULL,'2019-07-14 18:49:15','2019-07-14 18:49:15');

/*!40000 ALTER TABLE `kategori_soal` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table kategori_ujian
# ------------------------------------------------------------

DROP TABLE IF EXISTS `kategori_ujian`;

CREATE TABLE `kategori_ujian` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `kategori_ujian` WRITE;
/*!40000 ALTER TABLE `kategori_ujian` DISABLE KEYS */;

INSERT INTO `kategori_ujian` (`id`, `nama`, `deskripsi`, `deleted_at`, `created_at`, `updated_at`)
VALUES
	(1,'Tes Masuk','Ujian tes masuk',NULL,'2019-07-14 10:35:03','2019-07-14 19:58:50'),
	(2,'Kuis Tes','Kumpulan tes untuk kuis','2019-07-14 10:35:53','2019-07-14 10:35:36','2019-07-14 10:35:53');

/*!40000 ALTER TABLE `kategori_ujian` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table logs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `logs`;

CREATE TABLE `logs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;

INSERT INTO `logs` (`id`, `user_id`, `name`, `description`, `deleted_at`, `created_at`, `updated_at`)
VALUES
	(1,1,'Login','Masuk ke sistem',NULL,'2019-07-14 09:00:18','2019-07-14 09:00:18'),
	(2,1,'Ganti password','Berhasil mengganti password',NULL,'2019-07-14 09:00:37','2019-07-14 09:00:37'),
	(3,1,'Logout',' Keluar dari sistem',NULL,'2019-07-14 10:17:44','2019-07-14 10:17:44'),
	(4,1,'Login','Masuk ke sistem',NULL,'2019-07-14 10:23:12','2019-07-14 10:23:12'),
	(5,1,'Ganti password','Berhasil mengganti password',NULL,'2019-07-14 10:24:23','2019-07-14 10:24:23'),
	(6,1,'Tambah User','Berhasil menambah data user',NULL,'2019-07-14 10:25:22','2019-07-14 10:25:22'),
	(7,1,'Edit User','Berhasil mengedit data user dengan id 2',NULL,'2019-07-14 10:26:00','2019-07-14 10:26:00'),
	(8,1,'Hapus User','Berhasil menghapus data user dengan id 2',NULL,'2019-07-14 10:26:16','2019-07-14 10:26:16'),
	(9,1,'Edit Tipe Soal','Berhasil mengedit data tipe soal dengan id 1',NULL,'2019-07-14 10:29:35','2019-07-14 10:29:35'),
	(10,1,'Tambah Kategori Soal','Berhasil menambah data kategori soal',NULL,'2019-07-14 10:30:46','2019-07-14 10:30:46'),
	(11,1,'Edit Kategori Soal','Berhasil mengedit data kategori soal dengan id 1',NULL,'2019-07-14 10:31:11','2019-07-14 10:31:11'),
	(12,1,'Tambah Kategori Soal','Berhasil menambah data kategori soal',NULL,'2019-07-14 10:31:30','2019-07-14 10:31:30'),
	(13,1,'Hapus Kategori Soal','Berhasil menghapus data kategori soal dengan id 2',NULL,'2019-07-14 10:31:35','2019-07-14 10:31:35'),
	(14,1,'Tambah Soal','Berhasil menambah data soal',NULL,'2019-07-14 10:32:40','2019-07-14 10:32:40'),
	(15,1,'Tambah Kategori Ujian','Berhasil menambah data kategori ujian',NULL,'2019-07-14 10:35:03','2019-07-14 10:35:03'),
	(16,1,'Tambah Kategori Ujian','Berhasil menambah data kategori ujian',NULL,'2019-07-14 10:35:36','2019-07-14 10:35:36'),
	(17,1,'Edit Kategori Ujian','Berhasil mengedit data kategori ujian dengan id 1',NULL,'2019-07-14 10:35:46','2019-07-14 10:35:46'),
	(18,1,'Hapus Kategori Ujian','Berhasil menghapus data kategori ujian dengan id 2',NULL,'2019-07-14 10:35:53','2019-07-14 10:35:53'),
	(19,1,'Tambah Ujian','Berhasil menambah data ujian',NULL,'2019-07-14 10:37:01','2019-07-14 10:37:01'),
	(20,1,'Login','Masuk ke sistem',NULL,'2019-07-14 18:35:14','2019-07-14 18:35:14'),
	(21,1,'Logout',' Keluar dari sistem',NULL,'2019-07-14 18:35:20','2019-07-14 18:35:20'),
	(22,1,'Login','Masuk ke sistem',NULL,'2019-07-14 18:35:31','2019-07-14 18:35:31'),
	(23,1,'Ganti password','Berhasil mengganti password',NULL,'2019-07-14 18:35:44','2019-07-14 18:35:44'),
	(24,1,'Tambah User','Berhasil menambah data user',NULL,'2019-07-14 18:37:32','2019-07-14 18:37:32'),
	(25,1,'Logout',' Keluar dari sistem',NULL,'2019-07-14 18:43:49','2019-07-14 18:43:49'),
	(26,1,'Login','Masuk ke sistem',NULL,'2019-07-14 18:44:02','2019-07-14 18:44:02'),
	(27,1,'Tambah Kategori Soal','Berhasil menambah data kategori soal',NULL,'2019-07-14 18:47:47','2019-07-14 18:47:47'),
	(28,1,'Tambah Kategori Soal','Berhasil menambah data kategori soal',NULL,'2019-07-14 18:48:04','2019-07-14 18:48:04'),
	(29,1,'Tambah Kategori Soal','Berhasil menambah data kategori soal',NULL,'2019-07-14 18:49:00','2019-07-14 18:49:00'),
	(30,1,'Tambah Kategori Soal','Berhasil menambah data kategori soal',NULL,'2019-07-14 18:49:15','2019-07-14 18:49:15'),
	(31,1,'Hapus Soal','Berhasil menghapus data soal dengan id 1',NULL,'2019-07-14 18:49:23','2019-07-14 18:49:23'),
	(32,1,'Tambah Soal','Berhasil menambah data soal',NULL,'2019-07-14 18:50:27','2019-07-14 18:50:27'),
	(33,1,'Tambah Soal','Berhasil menambah data soal',NULL,'2019-07-14 18:51:01','2019-07-14 18:51:01'),
	(34,1,'Tambah Soal','Berhasil menambah data soal',NULL,'2019-07-14 18:51:36','2019-07-14 18:51:36'),
	(35,1,'Tambah Soal','Berhasil menambah data soal',NULL,'2019-07-14 18:52:51','2019-07-14 18:52:51'),
	(36,1,'Tambah Soal','Berhasil menambah data soal',NULL,'2019-07-14 18:53:27','2019-07-14 18:53:27'),
	(37,1,'Tambah Soal','Berhasil menambah data soal',NULL,'2019-07-14 18:53:56','2019-07-14 18:53:56'),
	(38,1,'Tambah Soal','Berhasil menambah data soal',NULL,'2019-07-14 18:54:32','2019-07-14 18:54:32'),
	(39,1,'Tambah Soal','Berhasil menambah data soal',NULL,'2019-07-14 18:55:29','2019-07-14 18:55:29'),
	(40,1,'Tambah Soal','Berhasil menambah data soal',NULL,'2019-07-14 18:56:05','2019-07-14 18:56:05'),
	(41,1,'Tambah Soal','Berhasil menambah data soal',NULL,'2019-07-14 18:56:34','2019-07-14 18:56:34'),
	(42,1,'Tambah Soal','Berhasil menambah data soal',NULL,'2019-07-14 19:42:43','2019-07-14 19:42:43'),
	(43,1,'Tambah Soal','Berhasil menambah data soal',NULL,'2019-07-14 19:43:57','2019-07-14 19:43:57'),
	(44,1,'Tambah Soal','Berhasil menambah data soal',NULL,'2019-07-14 19:50:04','2019-07-14 19:50:04'),
	(45,1,'Tambah Soal','Berhasil menambah data soal',NULL,'2019-07-14 19:50:57','2019-07-14 19:50:57'),
	(46,1,'Tambah Soal','Berhasil menambah data soal',NULL,'2019-07-14 19:52:27','2019-07-14 19:52:27'),
	(47,1,'Tambah Soal','Berhasil menambah data soal',NULL,'2019-07-14 19:53:53','2019-07-14 19:53:53'),
	(48,1,'Tambah Soal','Berhasil menambah data soal',NULL,'2019-07-14 19:54:33','2019-07-14 19:54:33'),
	(49,1,'Tambah Soal','Berhasil menambah data soal',NULL,'2019-07-14 19:55:16','2019-07-14 19:55:16'),
	(50,1,'Tambah Soal','Berhasil menambah data soal',NULL,'2019-07-14 19:56:08','2019-07-14 19:56:08'),
	(51,1,'Tambah Soal','Berhasil menambah data soal',NULL,'2019-07-14 19:56:57','2019-07-14 19:56:57'),
	(52,1,'Edit Kategori Ujian','Berhasil mengedit data kategori ujian dengan id 1',NULL,'2019-07-14 19:58:50','2019-07-14 19:58:50'),
	(53,1,'Edit Ujian','Berhasil mengedit data ujian dengan id 1',NULL,'2019-07-14 19:59:34','2019-07-14 19:59:34'),
	(54,1,'Edit Ujian','Berhasil mengedit data ujian dengan id 1',NULL,'2019-07-14 20:01:00','2019-07-14 20:01:00'),
	(55,1,'Tambah Ujian','Berhasil menambah data ujian',NULL,'2019-07-14 20:59:48','2019-07-14 20:59:48'),
	(56,4,'Register','Registrasi ke sistem',NULL,'2019-07-15 06:37:07','2019-07-15 06:37:07'),
	(57,4,'Login','Masuk ke sistem',NULL,'2019-07-15 06:37:46','2019-07-15 06:37:46'),
	(58,4,'Ganti password','Berhasil mengganti password',NULL,'2019-07-15 06:38:32','2019-07-15 06:38:32'),
	(59,4,'Edit profil','Berhasil mengedit data profil',NULL,'2019-07-15 06:38:41','2019-07-15 06:38:41'),
	(60,4,'Mulai Ujian','Memulai mengerjakan ujian dengan id 1',NULL,'2019-07-15 06:40:06','2019-07-15 06:40:06'),
	(61,4,'Logout',' Keluar dari sistem',NULL,'2019-07-15 06:54:52','2019-07-15 06:54:52'),
	(62,5,'Register','Registrasi ke sistem',NULL,'2019-07-15 06:56:29','2019-07-15 06:56:29'),
	(63,5,'Login','Masuk ke sistem',NULL,'2019-07-15 06:57:05','2019-07-15 06:57:05'),
	(64,5,'Mulai Ujian','Memulai mengerjakan ujian dengan id 1',NULL,'2019-07-15 06:59:02','2019-07-15 06:59:02'),
	(65,5,'Mulai Ujian','Memulai mengerjakan ujian dengan id 1',NULL,'2019-07-15 07:10:47','2019-07-15 07:10:47'),
	(66,5,'Selesai Ujian','Menyelesaikan ujian dengan id 1',NULL,'2019-07-15 07:12:02','2019-07-15 07:12:02'),
	(67,5,'Mulai Ujian','Memulai mengerjakan ujian dengan id 1',NULL,'2019-07-15 07:14:07','2019-07-15 07:14:07'),
	(68,5,'Selesai Ujian','Menyelesaikan ujian dengan id 1',NULL,'2019-07-15 07:14:08','2019-07-15 07:14:08'),
	(69,5,'Mulai Ujian','Memulai mengerjakan ujian dengan id 1',NULL,'2019-07-15 07:14:36','2019-07-15 07:14:36'),
	(70,5,'Selesai Ujian','Menyelesaikan ujian dengan id 1',NULL,'2019-07-15 07:17:07','2019-07-15 07:17:07'),
	(71,6,'Register','Registrasi ke sistem',NULL,'2019-07-15 07:18:55','2019-07-15 07:18:55'),
	(72,6,'Login','Masuk ke sistem',NULL,'2019-07-15 07:19:33','2019-07-15 07:19:33'),
	(73,6,'Mulai Ujian','Memulai mengerjakan ujian dengan id 1',NULL,'2019-07-15 07:20:43','2019-07-15 07:20:43'),
	(74,6,'Logout',' Keluar dari sistem',NULL,'2019-07-15 07:23:19','2019-07-15 07:23:19'),
	(75,6,'Login','Masuk ke sistem',NULL,'2019-07-15 07:23:28','2019-07-15 07:23:28'),
	(76,6,'Mulai Ujian','Memulai mengerjakan ujian dengan id 1',NULL,'2019-07-15 07:24:18','2019-07-15 07:24:18'),
	(77,6,'Selesai Ujian','Menyelesaikan ujian dengan id 1',NULL,'2019-07-15 07:25:21','2019-07-15 07:25:21'),
	(78,6,'Mulai Ujian','Memulai mengerjakan ujian dengan id 1',NULL,'2019-07-15 07:25:59','2019-07-15 07:25:59'),
	(79,6,'Selesai Ujian','Menyelesaikan ujian dengan id 1',NULL,'2019-07-15 07:31:30','2019-07-15 07:31:30'),
	(80,7,'Register','Registrasi ke sistem',NULL,'2019-07-15 07:33:46','2019-07-15 07:33:46'),
	(81,7,'Login','Masuk ke sistem',NULL,'2019-07-15 07:34:22','2019-07-15 07:34:22'),
	(82,7,'Mulai Ujian','Memulai mengerjakan ujian dengan id 1',NULL,'2019-07-15 07:35:11','2019-07-15 07:35:11'),
	(83,7,'Mulai Ujian','Memulai mengerjakan ujian dengan id 1',NULL,'2019-07-15 07:37:05','2019-07-15 07:37:05'),
	(84,7,'Selesai Ujian','Menyelesaikan ujian dengan id 1',NULL,'2019-07-15 07:37:56','2019-07-15 07:37:56'),
	(85,7,'Mulai Ujian','Memulai mengerjakan ujian dengan id 1',NULL,'2019-07-15 07:38:31','2019-07-15 07:38:31'),
	(86,7,'Selesai Ujian','Menyelesaikan ujian dengan id 1',NULL,'2019-07-15 07:40:00','2019-07-15 07:40:00'),
	(87,1,'Login','Masuk ke sistem',NULL,'2019-07-15 07:42:51','2019-07-15 07:42:51'),
	(88,1,'Logout',' Keluar dari sistem',NULL,'2019-07-15 07:43:53','2019-07-15 07:43:53'),
	(89,8,'Register','Registrasi ke sistem',NULL,'2019-07-15 07:45:03','2019-07-15 07:45:03'),
	(90,9,'Register','Registrasi ke sistem',NULL,'2019-07-15 07:47:09','2019-07-15 07:47:09'),
	(91,9,'Login','Masuk ke sistem',NULL,'2019-07-15 07:47:38','2019-07-15 07:47:38'),
	(92,9,'Mulai Ujian','Memulai mengerjakan ujian dengan id 1',NULL,'2019-07-15 07:48:15','2019-07-15 07:48:15'),
	(93,9,'Selesai Ujian','Menyelesaikan ujian dengan id 1',NULL,'2019-07-15 07:49:39','2019-07-15 07:49:39'),
	(94,9,'Mulai Ujian','Memulai mengerjakan ujian dengan id 1',NULL,'2019-07-15 07:50:26','2019-07-15 07:50:26'),
	(95,9,'Mulai Ujian','Memulai mengerjakan ujian dengan id 1',NULL,'2019-07-15 07:51:02','2019-07-15 07:51:02'),
	(96,9,'Mulai Ujian','Memulai mengerjakan ujian dengan id 1',NULL,'2019-07-15 07:52:00','2019-07-15 07:52:00'),
	(97,9,'Selesai Ujian','Menyelesaikan ujian dengan id 1',NULL,'2019-07-15 07:53:00','2019-07-15 07:53:00');

/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_10_12_000000_create_users_table',1),
	(2,'2014_10_12_100000_create_password_resets_table',1),
	(3,'2019_04_08_033627_create_tipesoals_table',1),
	(4,'2019_04_08_145304_create_kategori_soals_table',1),
	(5,'2019_04_09_111007_create_soals_table',1),
	(6,'2019_04_15_113820_create_kategori_ujians_table',1),
	(7,'2019_04_15_143822_create_ujians_table',1),
	(8,'2019_04_17_133626_create_soal_ujian_table',1),
	(9,'2019_07_08_052202_create_logs_table',1),
	(10,'2019_07_09_035215_create_ujian_users_table',1),
	(11,'2019_07_09_075205_create_ujian_temporaries_table',1),
	(12,'2019_07_11_023750_add_status_to_ujian_users_table',1),
	(13,'2019_07_11_030204_update_table_ujian_temporary',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table soal
# ------------------------------------------------------------

DROP TABLE IF EXISTS `soal`;

CREATE TABLE `soal` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tipe_soal_id` int(10) unsigned NOT NULL,
  `kategori_soal_id` int(10) unsigned NOT NULL,
  `soal` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jawaban_1` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jawaban_2` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jawaban_3` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jawaban_4` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jawaban_benar` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `soal_tipe_soal_id_foreign` (`tipe_soal_id`),
  KEY `soal_kategori_soal_id_foreign` (`kategori_soal_id`),
  CONSTRAINT `soal_kategori_soal_id_foreign` FOREIGN KEY (`kategori_soal_id`) REFERENCES `kategori_soal` (`id`) ON DELETE CASCADE,
  CONSTRAINT `soal_tipe_soal_id_foreign` FOREIGN KEY (`tipe_soal_id`) REFERENCES `tipe_soal` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `soal` WRITE;
/*!40000 ALTER TABLE `soal` DISABLE KEYS */;

INSERT INTO `soal` (`id`, `tipe_soal_id`, `kategori_soal_id`, `soal`, `jawaban_1`, `jawaban_2`, `jawaban_3`, `jawaban_4`, `jawaban_benar`, `file`, `deleted_at`, `created_at`, `updated_at`)
VALUES
	(1,1,1,'1 + 1 = ...','1','2','3','4','2',NULL,'2019-07-14 18:49:23','2019-07-14 10:32:40','2019-07-14 18:49:23'),
	(2,1,1,'Hasil dari 21 : (3 - 10) + 4 x (-2) adalah ....','-11','-5','5','11','-11',NULL,NULL,'2019-07-14 18:50:27','2019-07-14 18:50:27'),
	(3,1,1,'Hasil dari -12 + 20 x 4 - (-6) : 3 = ....','110','70','34','30','70',NULL,NULL,'2019-07-14 18:51:01','2019-07-14 18:51:01'),
	(4,1,1,'Jumlah dua bilangan p dan q adalah 6. Nilai minimum dari 2p2 + q2 = ….','24','12','18','20','24',NULL,NULL,'2019-07-14 18:51:36','2019-07-14 18:51:36'),
	(5,1,1,'Suhu mula-mula suatu ruangan adalah 250° C. Ruangan tersebut akan digunakan untuk menyimpan ikan, sehingga suhunya diturunkan menjadi -30° C. Besar perubahan suhu pada ruangan tersebut adalah...','-280° C','-220° C','220° C','280° C','280° C',NULL,NULL,'2019-07-14 18:52:51','2019-07-14 18:52:51'),
	(6,1,1,'Nilai n yang memenuhi (12 + 8) + (-3n) = -22 adalah …','14','13','-14','-13','14',NULL,NULL,'2019-07-14 18:53:27','2019-07-14 18:53:27'),
	(7,1,1,'Suatu seri 5 - 7 - 10 - 12 - 15 - .... seri selanjutnya adalah...','14','15','16','17','17',NULL,NULL,'2019-07-14 18:53:56','2019-07-14 18:53:56'),
	(8,1,1,'√232 + 696 = …','399','35','1225','325','35',NULL,NULL,'2019-07-14 18:54:32','2019-07-14 18:54:32'),
	(9,1,1,'304,09 : 64,7 = …','0,407','4,07','4,70','0,47','4,70',NULL,NULL,'2019-07-14 18:55:29','2019-07-14 18:55:29'),
	(10,1,1,'Suatu seri 2 - 5 - 7 - 3 - 6 - 8 - 4 - .... - .... seri selanjutnya adalah…','5 – 6','6 – 7','7 – 8','7 – 9','7 – 9',NULL,NULL,'2019-07-14 18:56:05','2019-07-14 18:56:05'),
	(11,1,1,'Hasil dari 14 + (18 : (-3)) - ((-2) x 3) adalah...','-4','2','14','42','14',NULL,NULL,'2019-07-14 18:56:34','2019-07-14 18:56:34'),
	(12,1,6,'Semua buah yang manis berulat. Sebagian buah yang telah masak rasanya manis. Jadi :','Sebagian buah yang telah masak berulat','Sebagian buah yang manis berulat','Semua buah yang telah masak berulat','Sebagian buah yang berulat rasanya manis','Sebagian buah yang telah masak berulat',NULL,NULL,'2019-07-14 19:42:43','2019-07-14 19:42:43'),
	(13,1,6,'Semua siswa diminta mempersiapkan diri untuk ulangan. Sebagian siswa mendapat nilai baik dalam ulangan. Jadi :','Semua siswa mempersiapkan diri dan mendapat nilai baik','Sebagian siswa tidak mempersiapkan diri dan tidak mendapatkan nilai baik','Sebagian siswa tidak mempersiapkan diri tapi mendapat nilai baik','Semua siswa mempersiapkan diri','Sebagian siswa tidak mempersiapkan diri dan tidak mendapatkan nilai baik',NULL,NULL,'2019-07-14 19:43:57','2019-07-14 19:43:57'),
	(14,1,6,'Semua aliran sungai menuju ke laut. Sebagian sungai memiliki aliran deras. Jadi :','Beberapa sungai yang memiliki aliran deras tidak menuju ke laut','Sebagian aliran sungai yang tidak menuju ke laut beraliran deras','Sebagian sungai yang memiliki aliran deras menuju ke laut','Semua aliran sungai yang deras akan menuju ke laut','Semua aliran sungai yang deras akan menuju ke laut',NULL,NULL,'2019-07-14 19:50:04','2019-07-14 19:50:04'),
	(15,1,6,'Semua harimau adalah pemakan daging. Sebagian binatang adalah harimau. Jadi :','Semua pemakan daging adalah harimau','Sebagian harimau adalah pemakan daging','Sebagian binatang pemakan daging','A, b, c bukan jawaban yang benar','Sebagian binatang pemakan daging',NULL,NULL,'2019-07-14 19:50:57','2019-07-14 19:50:57'),
	(16,1,6,'Semua mahasiswa yang belajar pasti lulus ujian. Sebagian mahasiswa yang lulus ujian ternyata tidak belajar. Jadi :','Semua mahasiswa belajar','Semua mahasiswa belajar dan lulus ujian','Sebagian mahasiswa belajar dan lulus ujian','Semua mahasiswa yag tidak belajar tidak lulus ujian','Sebagian mahasiswa belajar dan lulus ujian',NULL,NULL,'2019-07-14 19:52:27','2019-07-14 19:52:27'),
	(17,1,6,'Tidak ada tanaman sayur yang bisa tumbuh di padang pasir. Kaktus bukan tanaman sayur. Jadi :','Kaktus bukan tanaman padang pasir','Kaktus bisa tumbuh di padang pasir','Tidak ada kaktus yang tumbuh di padang pasir','Semua kaktus hanya tumbuh di padang pasir','Kaktus bisa tumbuh di padang pasir',NULL,NULL,'2019-07-14 19:53:53','2019-07-14 19:53:53'),
	(18,1,6,'Semua guru adalah pegawai negeri. Sebagian guru adalah penulis. Manakah yang tak cocok dengan pernyataan tersebut ?','Sebagian penulis adalah pegawai','Sebagian pegawai negeri adalah guru','Sebagian penulis adalah guru','Semua penulis adalah pegawai negeri','Semua penulis adalah pegawai negeri',NULL,NULL,'2019-07-14 19:54:33','2019-07-14 19:54:33'),
	(19,1,6,'Semua musim berlangsung selama tiga bulan. Sebagian musim terasa dingin. Jadi :','Semua musim yang terasa dingin berlangsung selama tiga bulan','Tidak semua musim berlangsung tiga bulan','Semua musim terasa dingin dalam tiga bulan','Sebagian musim tidak berlangsung selama tiga bulan','Semua musim yang terasa dingin berlangsung selama tiga bulan',NULL,NULL,'2019-07-14 19:55:16','2019-07-14 19:55:16'),
	(20,1,6,'Maya selalu member hadiah barang-barang mahal. Dani diberi hadiah dasi oleh Maya. Jadi :','Dasi pemberian Maya mahal','Dasi adalah barang mahal','Dani selalu diberi hadiah barang-barang mahal','Tak ada hadiah yang tidak mahal','Dasi pemberian Maya mahal',NULL,NULL,'2019-07-14 19:56:08','2019-07-14 19:56:08'),
	(21,1,6,'Semua bayi minum ASI. Sebagian bayi diberi makanan tambahan. Jadi :','Semua bayi minum ASI dan diberi makanan tambahan','Bayi yang minum ASI biasanya diberi makanan tambahan','Sebagian bayi minum ASI dan diberi makanan tambahan','Bayi yang diberi makanan tambahan harus minum ASI','Sebagian bayi minum ASI dan diberi makanan tambahan',NULL,NULL,'2019-07-14 19:56:57','2019-07-14 19:56:57');

/*!40000 ALTER TABLE `soal` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table soal_ujian
# ------------------------------------------------------------

DROP TABLE IF EXISTS `soal_ujian`;

CREATE TABLE `soal_ujian` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `soal_id` bigint(20) unsigned NOT NULL,
  `ujian_id` bigint(20) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `soal_ujian_soal_id_foreign` (`soal_id`),
  KEY `soal_ujian_ujian_id_foreign` (`ujian_id`),
  CONSTRAINT `soal_ujian_soal_id_foreign` FOREIGN KEY (`soal_id`) REFERENCES `soal` (`id`) ON DELETE CASCADE,
  CONSTRAINT `soal_ujian_ujian_id_foreign` FOREIGN KEY (`ujian_id`) REFERENCES `ujian` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `soal_ujian` WRITE;
/*!40000 ALTER TABLE `soal_ujian` DISABLE KEYS */;

INSERT INTO `soal_ujian` (`id`, `soal_id`, `ujian_id`, `deleted_at`, `created_at`, `updated_at`)
VALUES
	(1,1,1,NULL,'2019-07-14 10:38:17','2019-07-14 10:38:17'),
	(2,2,1,NULL,'2019-07-14 20:02:51','2019-07-14 20:02:51'),
	(3,3,1,NULL,'2019-07-14 20:02:51','2019-07-14 20:02:51'),
	(4,4,1,NULL,'2019-07-14 20:02:51','2019-07-14 20:02:51'),
	(5,5,1,NULL,'2019-07-14 20:02:51','2019-07-14 20:02:51'),
	(6,6,1,NULL,'2019-07-14 20:02:51','2019-07-14 20:02:51'),
	(7,7,1,NULL,'2019-07-14 20:02:51','2019-07-14 20:02:51'),
	(8,8,1,NULL,'2019-07-14 20:02:51','2019-07-14 20:02:51'),
	(9,9,1,NULL,'2019-07-14 20:02:51','2019-07-14 20:02:51'),
	(10,10,1,NULL,'2019-07-14 20:02:51','2019-07-14 20:02:51'),
	(11,11,1,NULL,'2019-07-14 20:02:51','2019-07-14 20:02:51'),
	(12,12,2,NULL,'2019-07-14 21:00:12','2019-07-14 21:00:12'),
	(13,13,2,NULL,'2019-07-14 21:00:12','2019-07-14 21:00:12'),
	(14,14,2,NULL,'2019-07-14 21:00:12','2019-07-14 21:00:12'),
	(15,15,2,NULL,'2019-07-14 21:00:12','2019-07-14 21:00:12'),
	(16,16,2,NULL,'2019-07-14 21:00:12','2019-07-14 21:00:12'),
	(17,17,2,NULL,'2019-07-14 21:00:12','2019-07-14 21:00:12'),
	(18,18,2,NULL,'2019-07-14 21:00:12','2019-07-14 21:00:12'),
	(19,19,2,NULL,'2019-07-14 21:00:12','2019-07-14 21:00:12'),
	(20,20,2,NULL,'2019-07-14 21:00:12','2019-07-14 21:00:12'),
	(21,21,2,NULL,'2019-07-14 21:00:12','2019-07-14 21:00:12');

/*!40000 ALTER TABLE `soal_ujian` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tipe_soal
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tipe_soal`;

CREATE TABLE `tipe_soal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tipe` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tipe_soal` WRITE;
/*!40000 ALTER TABLE `tipe_soal` DISABLE KEYS */;

INSERT INTO `tipe_soal` (`id`, `tipe`, `deskripsi`, `deleted_at`, `created_at`, `updated_at`)
VALUES
	(1,'teks','Kumpulan Soal Teks',NULL,'2019-07-14 08:58:45','2019-07-14 10:29:35'),
	(2,'suara','Soal Listening',NULL,'2019-07-14 08:58:45','2019-07-14 08:58:45'),
	(3,'gambar','Soal Gambar',NULL,'2019-07-14 08:58:45','2019-07-14 08:58:45');

/*!40000 ALTER TABLE `tipe_soal` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ujian
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ujian`;

CREATE TABLE `ujian` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kategori_ujian_id` int(10) unsigned NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ujian_kategori_ujian_id_foreign` (`kategori_ujian_id`),
  CONSTRAINT `ujian_kategori_ujian_id_foreign` FOREIGN KEY (`kategori_ujian_id`) REFERENCES `kategori_ujian` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `ujian` WRITE;
/*!40000 ALTER TABLE `ujian` DISABLE KEYS */;

INSERT INTO `ujian` (`id`, `kategori_ujian_id`, `nama`, `slug`, `deleted_at`, `created_at`, `updated_at`)
VALUES
	(1,1,'Tes Matematika','tes-matematika',NULL,'2019-07-14 10:37:01','2019-07-14 20:01:00'),
	(2,1,'Tes Logika','tes-logika',NULL,'2019-07-14 20:59:48','2019-07-14 20:59:48');

/*!40000 ALTER TABLE `ujian` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ujian_temporaries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ujian_temporaries`;

CREATE TABLE `ujian_temporaries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ujian_user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `soal_id` bigint(20) unsigned NOT NULL,
  `jawaban` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ujian_temporaries_ujian_user_id_foreign` (`ujian_user_id`),
  CONSTRAINT `ujian_temporaries_ujian_user_id_foreign` FOREIGN KEY (`ujian_user_id`) REFERENCES `ujian_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table ujian_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ujian_users`;

CREATE TABLE `ujian_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ujian_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `jawaban_benar` tinyint(4) NOT NULL DEFAULT '0',
  `jawaban_salah` tinyint(4) NOT NULL DEFAULT '0',
  `jawaban_kosong` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ujian_users_ujian_id_foreign` (`ujian_id`),
  KEY `ujian_users_user_id_foreign` (`user_id`),
  CONSTRAINT `ujian_users_ujian_id_foreign` FOREIGN KEY (`ujian_id`) REFERENCES `ujian` (`id`) ON DELETE CASCADE,
  CONSTRAINT `ujian_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `ujian_users` WRITE;
/*!40000 ALTER TABLE `ujian_users` DISABLE KEYS */;

INSERT INTO `ujian_users` (`id`, `ujian_id`, `user_id`, `jawaban_benar`, `jawaban_salah`, `jawaban_kosong`, `status`, `deleted_at`, `created_at`, `updated_at`)
VALUES
	(9,1,9,3,6,1,1,NULL,'2019-07-15 07:30:15','2019-07-15 07:49:39'),
	(10,1,9,1,0,9,1,NULL,'2019-07-15 07:42:00','2019-07-15 07:52:59');

/*!40000 ALTER TABLE `ujian_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'member',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_deleted_at_unique` (`email`,`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `deleted_at`, `created_at`, `updated_at`)
VALUES
	(1,'Admin','admin@gmail.com','2019-07-14 08:58:44','$2y$10$CaX3uVKQIuf6ps6VZlp7q.TWugfVthtP3TQc2CiM4.ScAFXNUhdfa','admin',NULL,NULL,'2019-07-14 08:58:44','2019-07-14 18:35:44'),
	(3,'Fredy Nur Apriyanto','mail.fredyna@gmail.com','2019-07-14 18:37:32','$2y$10$ddQwaiK2Gt.wLCm8KPsen.KEbOoCrT5LWvBW6LpQ9MnaF2CHwKmNG','member',NULL,NULL,'2019-07-14 18:37:32','2019-07-14 18:37:32'),
	(8,'Fredy Nur Apriyanto','fredy@gmail.com',NULL,'$2y$10$kllr.Jru8ECwgkrIOsQ3qeqn7h8sVTheDcoR3BqVa5ovjEoCUePVu','member',NULL,NULL,'2019-07-15 07:44:59','2019-07-15 07:44:59'),
	(9,'Fredy Nur Apriyanto','fredyna@gmail.com','2019-07-15 07:47:38','$2y$10$H3jpYd9Hx1KaWo0mxEFdL.OufcsyfzrrMtNo/vFLSFP4LlZBR0Aru','member',NULL,NULL,'2019-07-15 07:47:05','2019-07-15 07:47:38');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
