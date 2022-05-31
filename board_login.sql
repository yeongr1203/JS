-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.6.7-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- board_login 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `board_login` /*!40100 DEFAULT CHARACTER SET utf8mb3 */;
USE `board_login`;

-- 테이블 board_login.count_db 구조 내보내기
CREATE TABLE IF NOT EXISTS `count_db` (
  `count` int(11) DEFAULT NULL,
  `redate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 board_login.count_db:~1 rows (대략적) 내보내기
/*!40000 ALTER TABLE `count_db` DISABLE KEYS */;
INSERT IGNORE INTO `count_db` (`count`, `redate`) VALUES
	(4, '2022-05-04');
/*!40000 ALTER TABLE `count_db` ENABLE KEYS */;

-- 테이블 board_login.t_board 구조 내보내기
CREATE TABLE IF NOT EXISTS `t_board` (
  `i_board` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `ctnt` varchar(2000) NOT NULL,
  `i_user` int(10) unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`i_board`),
  KEY `i_user` (`i_user`),
  CONSTRAINT `t_board_ibfk_1` FOREIGN KEY (`i_user`) REFERENCES `t_user` (`i_user`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 board_login.t_board:~41 rows (대략적) 내보내기
/*!40000 ALTER TABLE `t_board` DISABLE KEYS */;
INSERT IGNORE INTO `t_board` (`i_board`, `title`, `ctnt`, `i_user`, `created_at`, `updated_at`) VALUES
	(1, 'bbbbb', 'bbbbb', 4, '2022-04-25 18:25:20', '2022-04-25 18:25:20'),
	(4, '안녕하세요', '안녕하세요!!', 4, '2022-04-26 10:40:47', '2022-04-26 10:40:47'),
	(5, '가나다', '가나다', 10, '2022-04-26 13:11:58', '2022-04-26 13:11:58'),
	(7, '121354', '1452345', 4, '2022-04-27 12:49:54', '2022-04-27 16:15:09'),
	(8, 'aaaaaaa', 'aaaaaaa', 4, '2022-04-27 12:50:00', '2022-04-27 12:50:00'),
	(10, '나나나', '난나 나', 4, '2022-04-27 12:50:14', '2022-04-27 16:16:51'),
	(11, '닌텐도', '동숲', 8, '2022-05-04 12:17:51', '2022-05-04 12:17:51'),
	(12, '다우', '다우', 4, '2022-05-23 12:32:54', '2022-05-23 12:32:54'),
	(13, '레오', '레오', 4, '2022-05-23 12:33:01', '2022-05-23 12:33:01'),
	(14, '바비', '브라운', 4, '2022-05-23 12:33:08', '2022-05-23 12:33:08'),
	(15, '로우', '로우', 4, '2022-05-23 12:33:14', '2022-05-23 12:33:14'),
	(16, '컬럼', '컬럼', 4, '2022-05-23 12:33:20', '2022-05-23 12:33:20'),
	(17, '라일락', '꽃잎', 8, '2022-05-23 13:09:21', '2022-05-23 13:09:21'),
	(18, 'down', 'down', 9, '2022-05-23 13:09:56', '2022-05-23 13:09:56'),
	(19, '바보', '내용', 9, '2022-05-23 13:10:07', '2022-05-23 13:10:07'),
	(20, '다다다', '내용', 9, '2022-05-23 13:10:13', '2022-05-23 13:10:13'),
	(21, '라임', '라라라', 9, '2022-05-23 13:10:19', '2022-05-23 13:10:19'),
	(22, ' 아름다운', '밤이에요', 8, '2022-05-23 14:26:12', '2022-05-23 14:26:12'),
	(23, '별이', '별이 빛나는 밤이야아아', 8, '2022-05-23 14:26:23', '2022-05-23 14:26:23'),
	(24, '파운드', '파운드마켓', 8, '2022-05-23 14:26:33', '2022-05-23 14:26:33'),
	(25, '다이어트', '해야하는데', 8, '2022-05-23 14:26:41', '2022-05-23 14:26:41'),
	(26, '오늘은 ', '냉면데이', 10, '2022-05-23 14:27:16', '2022-05-23 14:27:16'),
	(27, '냉면먹고', '다이어트한다면서', 10, '2022-05-23 14:27:24', '2022-05-23 14:27:24'),
	(28, '고기도', '먹었네', 10, '2022-05-23 14:27:32', '2022-05-23 14:27:32'),
	(29, '아유', '미쳤나봐', 4, '2022-05-23 14:27:50', '2022-05-23 14:27:50'),
	(30, '시원하고', '배불러서', 4, '2022-05-23 14:27:58', '2022-05-23 14:27:58'),
	(31, '가나다', '가나다라마', 4, '2022-05-23 14:28:07', '2022-05-23 14:28:07'),
	(32, 'a', 'aaa', 4, '2022-05-23 14:28:15', '2022-05-23 14:28:15'),
	(33, '파운드', '마켓', 9, '2022-05-23 14:28:46', '2022-05-23 14:28:46'),
	(34, '파운드케이크', '맛집', 9, '2022-05-23 14:28:56', '2022-05-23 14:28:56'),
	(35, '라라라', '가나다라', 9, '2022-05-23 14:29:21', '2022-05-23 14:29:21'),
	(36, '아저씨', '영화이름', 9, '2022-05-23 14:29:31', '2022-05-23 14:29:31'),
	(37, '라', '라라', 9, '2022-05-23 15:43:59', '2022-05-23 15:43:59'),
	(38, '라라라', '라라', 9, '2022-05-23 15:44:04', '2022-05-23 15:44:04'),
	(39, '라라', '라랄라라', 9, '2022-05-23 15:44:09', '2022-05-23 15:44:09'),
	(40, '라라', '라라', 8, '2022-05-23 15:44:22', '2022-05-23 15:44:22'),
	(41, '라일락', '라일락', 8, '2022-05-23 15:44:32', '2022-05-23 15:44:32'),
	(42, '라라라', '라라라', 8, '2022-05-23 15:44:37', '2022-05-23 15:44:37'),
	(43, '라랄라', '라랄라', 8, '2022-05-23 15:44:46', '2022-05-23 15:44:46'),
	(44, '라라', '라라', 10, '2022-05-23 15:45:03', '2022-05-23 15:45:03'),
	(45, '안녕', '안녕하세요', 10, '2022-05-23 15:48:12', '2022-05-23 15:48:12');
/*!40000 ALTER TABLE `t_board` ENABLE KEYS */;

-- 테이블 board_login.t_user 구조 내보내기
CREATE TABLE IF NOT EXISTS `t_user` (
  `i_user` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(20) NOT NULL,
  `upw` varchar(30) NOT NULL,
  `nm` varchar(5) NOT NULL,
  `gender` int(10) unsigned NOT NULL CHECK (`gender` in (0,1)),
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  `profile_img` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`i_user`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 board_login.t_user:~6 rows (대략적) 내보내기
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT IGNORE INTO `t_user` (`i_user`, `uid`, `upw`, `nm`, `gender`, `created_at`, `updated_at`, `profile_img`) VALUES
	(1, 'aaaa', 'aaaa', 'aaaa', 0, '2022-04-22 18:00:29', '2022-04-22 18:00:29', NULL),
	(2, 'aaa', 'aaa', 'aaa', 0, '2022-04-22 19:29:15', '2022-04-22 19:29:15', 'd85506e8-5eec-4f2a-9b9e-cc47eda6bb42.png'),
	(4, 'aa', 'aa', 'aa', 0, '2022-04-22 20:18:37', '2022-04-22 20:18:37', NULL),
	(8, 'vv', 'vv', 'vv', 1, '2022-04-22 20:20:32', '2022-04-22 20:20:32', '63d4fa8c-0928-4498-8bb8-73f96ceb535f.png'),
	(9, 'bbb', 'bbb', 'bbb', 1, '2022-04-25 17:27:10', '2022-04-25 17:27:10', NULL),
	(10, '가나다', '123', '가나다', 0, '2022-04-26 13:11:44', '2022-04-26 13:11:44', NULL);
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
