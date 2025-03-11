-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 11, 2025 at 05:45 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lylymassageservice`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_history`
--

CREATE TABLE `access_history` (
  `id` bigint UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `visit_count` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `access_history`
--

INSERT INTO `access_history` (`id`, `date`, `visit_count`, `created_at`, `updated_at`) VALUES
(1, '2025-03-11', 333, '2025-03-11 04:05:37', '2025-03-11 05:44:38');

-- --------------------------------------------------------

--
-- Table structure for table `activity_history`
--

CREATE TABLE `activity_history` (
  `id` bigint UNSIGNED NOT NULL,
  `time` timestamp NOT NULL,
  `device` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_history`
--

INSERT INTO `activity_history` (`id`, `time`, `device`, `created_at`, `updated_at`) VALUES
(1, '2025-03-11 04:00:40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36 OPR/117.0.0.0', '2025-03-11 04:00:40', '2025-03-11 04:00:40');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('356a192b7913b04c54574d18c28d46e6395428ab', 'i:2;', 1741671253),
('356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1741671253;', 1741671253);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Thẩm mỹ mặt', 'tham-my-mat', NULL, '2025-03-10 14:09:53', '2025-03-10 14:09:53'),
(2, 'Thẩm mỹ mắt', 'tham-my-mat-tham-my-mat', 1, '2025-03-10 14:18:16', '2025-03-10 14:18:16'),
(3, 'Thẩm mỹ mũi', 'tham-my-mui', 1, '2025-03-10 14:18:30', '2025-03-10 14:18:30'),
(4, 'Thẩm mỹ không phẫu thuật', 'tham-my-khong-phau-thuat', 1, '2025-03-10 14:18:37', '2025-03-10 14:18:37'),
(5, 'Cấy mỡ', 'cay-mo', 1, '2025-03-10 14:18:57', '2025-03-10 14:18:57'),
(6, 'Thẩm mỹ khác', 'tham-my-khac', 1, '2025-03-10 14:19:03', '2025-03-10 14:19:03'),
(7, 'Thẩm mỹ vóc dáng', 'tham-my-voc-dang', NULL, '2025-03-10 14:19:10', '2025-03-10 14:19:10'),
(8, 'Phun xăm thẩm mỹ', 'phun-xam-tham-my', NULL, '2025-03-10 14:19:15', '2025-03-10 14:19:15'),
(9, 'Thẩm mỹ công nghệ cao', 'tham-my-cong-nghe-cao', NULL, '2025-03-10 14:19:20', '2025-03-10 14:19:20'),
(10, 'Dịch vụ khác', 'dich-vu-khac', NULL, '2025-03-10 14:19:24', '2025-03-10 14:19:24');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `phone`, `content`, `created_at`, `updated_at`) VALUES
(1, '123', '123', '123', '2025-03-11 04:10:51', '2025-03-11 04:10:51'),
(2, '123', '123', '123', '2025-03-11 04:13:06', '2025-03-11 04:13:06'),
(3, '1', '1', '1', '2025-03-11 04:13:26', '2025-03-11 04:13:26'),
(4, '123', '123', '123', '2025-03-11 04:13:47', '2025-03-11 04:13:47');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_03_10_135954_create_categories_table', 2),
(5, '2025_03_10_140124_create_posts_table', 3),
(6, '2025_03_11_105636_create_activity_history_table', 4),
(7, '2025_03_11_110152_create_access_history_table', 5),
(8, '2025_03_11_110806_create_contacts_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `short_description`, `long_description`, `banner`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Cắt mí Pro Mini', 'cat-mi-pro-mini', 'Phương pháp cắt mí Pro mini Deep NanoCell 4.0 thế hệ mới tại Hệ thống thẩm mỹ Thu Cúc là bí quyết giúp các tín đồ làm đẹp giữ mãi tuổi thanh xuân với đôi mắt trẻ trung, rạng ngời, đồng thời tôn lên vẻ đẹp cuốn hút với “thần thái” ngút ngàn cho khuôn mặt. Kỹ thuật cắt mí thời đại công nghệ 4.0 được ví như “vị cứu tinh” giúp khắc phục mọi khuyết điểm vùng mắt như: mắt 1 mí, mí lót, mí ẩn, sụp mí, mắt nhiều da trùng, mỡ thừa… tạo cho chị em sự tự tin, ấn tượng trong mắt người đối diện.', 'Phương pháp cắt mí Pro mini Deep NanoCell 4.0 thế hệ mới tại Hệ thống thẩm mỹ Thu Cúc là bí quyết giúp các tín đồ làm đẹp giữ mãi tuổi thanh xuân với đôi mắt trẻ trung, rạng ngời, đồng thời tôn lên vẻ đẹp cuốn hút với “thần thái” ngút ngàn cho khuôn mặt. Kỹ thuật cắt mí thời đại công nghệ 4.0 được ví như “vị cứu tinh” giúp khắc phục mọi khuyết điểm vùng mắt như: mắt 1 mí, mí lót, mí ẩn, sụp mí, mắt nhiều da trùng, mỡ thừa… tạo cho chị em sự tự tin, ấn tượng trong mắt người đối diện.', '01JP1FV8RAD0SVZBBEH6W26K0R.png', 2, '2025-03-11 02:16:55', '2025-03-11 02:16:55'),
(5, 'ĐẠI TIỆC THẨM MỸ – TRI ÂN PHỤ NỮ VIỆT', 'dai-tiec-tham-my-tri-an-phu-nu-viet', 'Vào ngày 18/10/2020, tất cả các khách hàng đến tham dự “Đại tiệc thẩm mỹ – Tri ân phụ nữ Việt” duy nhất tại cơ sở Thu Cúc Long Biên và Lạng Sơn đều được nhận quà ý nghĩa và hấp dẫn. Đây chính là chương trình ưu đãi lớn nhất năm Thu Cúc dành tặng cho phụ nữ Việt Nam nhân ngày 20/10.', 'Vào ngày 18/10/2020, tất cả các khách hàng đến tham dự “Đại tiệc thẩm mỹ – Tri ân phụ nữ Việt” duy nhất tại cơ sở Thu Cúc Long Biên và Lạng Sơn đều được nhận quà ý nghĩa và hấp dẫn. Đây chính là chương trình ưu đãi lớn nhất năm Thu Cúc dành tặng cho phụ nữ Việt Nam nhân ngày 20/10.', '01JP1PXSQWNFBF3JXJVVHABEMG.png', NULL, '2025-03-11 04:16:56', '2025-03-11 04:20:38'),
(6, 'ƯU ĐÃI “VÀNG” 7 NGÀY LÀM ĐẸP CÙNG PHỤ NỮ VIỆT: ĐẸP HƠN – HẠNH PHÚC HƠN', 'uu-dai-vang-7-ngay-lam-dep-cung-phu-nu-viet-dep-hon-hanh-phuc-hon', 'Hân hoan chào mừng 90 năm Ngày thành lập Hội Liên hiệp Phụ nữ Việt Nam 20/10, từ ngày 13-20/10/2020 chị em có cơ hội NHÂN ĐÔI ƯU ĐÃI khi đến “tân trang nhan sắc” tại Hệ thống Thẩm mỹ Thu Cúc. Bởi phụ nữ đẹp luôn có quà nên đừng ngần ngại đến với Thu Cúc dịp này để làm đẹp giá hời – đón ngàn yêu thương nhé!', '<p>&nbsp;</p><p><strong>Hân hoan chào mừng 90 năm Ngày thành lập Hội Liên hiệp Phụ nữ Việt Nam 20/10, từ ngày 13-20/10/2020 chị em có cơ hội NHÂN ĐÔI ƯU ĐÃI khi đến “tân trang nhan sắc” tại Hệ thống Thẩm mỹ Thu Cúc. Bởi phụ nữ đẹp luôn có quà nên đừng ngần ngại đến với Thu Cúc dịp này để làm đẹp giá hời – đón ngàn yêu thương nhé!</strong></p><p><br><em>Tuần vàng tri ân Phụ nữ Việt</em> duy nhất từ 13-20/10</p><p>Ngày 20/10 hằng năm là dịp đặc biệt để tôn vinh và gửi ngàn lời chúc yêu thương đến các bà, các mẹ và những người phụ nữ Việt. Hơn cả lời yêu, Thu Cúc dành tặng một nửa thế giới chương trình khuyến mãi hấp dẫn lên tới 50%++ các dịch vụ thẩm mỹ HOT hiện nay. Cụ thể:</p><p><br><br></p>', '01JP1PYMNX3KD3TSFKEY77RCGR.png', NULL, '2025-03-11 04:21:05', '2025-03-11 04:21:05'),
(7, 'NGÀY VÀNG GIÁ SỐC – ĐÓN SINH NHẬT CÙNG THU CÚC MEGA BEAUTY', 'ngay-vang-gia-soc-don-sinh-nhat-cung-thu-cuc-mega-beauty', 'Cơ hội làm đẹp 0 đồng duy nhất trong ngày 10/10/2020 dành riêng cho khách hàng trực tiếp làm đẹp tại Thu Cúc Mega Beauty Center 70 Cầu Giấy. Cùng Thu Cúc mừng ĐẠI TIỆC SINH NHẬT được mong chờ nhất trong năm với nhiều quà tặng hấp dẫn. Đón ngày vàng – Làm đẹp dễ dàng – Không lo chi phí. Đừng bỏ lỡ!\n', '<p>&nbsp;<strong>Cơ hội làm đẹp 0 đồng duy nhất trong ngày 10/10/2020 dành riêng cho khách hàng trực tiếp làm đẹp tại Thu Cúc Mega Beauty Center 70 Cầu Giấy. Cùng Thu Cúc mừng ĐẠI TIỆC SINH NHẬT được mong chờ nhất trong năm với nhiều quà tặng hấp dẫn. Đón ngày vàng – Làm đẹp dễ dàng – Không lo chi phí. Đừng bỏ lỡ!</strong>&nbsp;</p>', '01JP1PZ4W55232N55MP8X1G9HE.png', NULL, '2025-03-11 04:21:22', '2025-03-11 04:21:22'),
(8, 'ƯU ĐÃI TUẦN VÀNG – LÀM ĐẸP DỄ DÀNG', 'uu-dai-tuan-vang-lam-dep-de-dang', 'Duy nhất từ ngày 9 – 16/9, khách hàng đăng ký làm đẹp trên toàn hệ thống Thẩm mỹ Thu Cúc sẽ được giảm giá sâu tất cả các dịch vụ. Nhanh tay đăng ký ngay hôm nay để tự tin khoe sắc với những dịch vụ làm đẹp đỉnh cao và an toàn tuyệt đối.', '<p>&nbsp;<strong>Duy nhất từ ngày 9 – 16/9, khách hàng đăng ký làm đẹp trên toàn hệ thống Thẩm mỹ Thu Cúc sẽ được giảm giá sâu tất cả các dịch vụ. Nhanh tay đăng ký ngay hôm nay để tự tin khoe sắc với những dịch vụ làm đẹp đỉnh cao và an toàn tuyệt đối.</strong>&nbsp;</p>', '01JP1PZP9GJZPNG4BT7N9AP27J.png', NULL, '2025-03-11 04:21:40', '2025-03-11 04:21:40'),
(9, 'CƠ HỘI CUỐI SĂN ƯU ĐÃI LỚN NHẤT THÁNG 10: OFF 50%', 'co-hoi-cuoi-san-uu-dai-lon-nhat-thang-10-off-50', 'Từ ngày 22 – 31/10, khi đến làm đẹp tại Bệnh viện Thẩm mỹ Thu Cúc quý khách hàng có cơ hội nhận ưu đãi SỐC lên tới 50% các dịch vụ phẫu thuật thẩm mỹ và clinics. Hãy đến tân trang để trải nghiệm dịch vụ làm đẹp đẳng cấp 5 sao được hàng triệu khách hàng và hàng ngàn người nổi tiếng an tâm lựa chọn!', '<p>&nbsp;<strong>Từ ngày 22 – 31/10, khi đến làm đẹp tại Bệnh viện Thẩm mỹ Thu Cúc quý khách hàng có cơ hội nhận ưu đãi SỐC lên tới 50% các dịch vụ phẫu thuật thẩm mỹ và clinics. Hãy đến tân trang để trải nghiệm dịch vụ làm đẹp đẳng cấp 5 sao được hàng triệu khách hàng và hàng ngàn người nổi tiếng an tâm lựa chọn!</strong>&nbsp;</p>', '01JP1Q0DBPM1TY77VGTKT83ST4.png', NULL, '2025-03-11 04:22:03', '2025-03-11 04:22:03'),
(10, 'Cắt mí Nano Plasma', 'cat-mi-nano-plasma', 'Với ưu điểm vượt trội mang đến nếp mí đẹp trọn đời cho khách hàng, cắt mí Pro Mini/Open Deep Nano Plasma đã và đang trở thành dịch vụ được nhiều chị em “săn đón” nhất hiện nay. Kỹ thuật hiện đại top 1 này được xem là “vị cứu tinh” cho mọi khuyết điểm của mắt, mang đến “nhãn thần” tinh anh và cuốn hút.\n\n', '<p>&nbsp;</p><p><strong>Với ưu điểm vượt trội mang đến nếp mí đẹp trọn đời cho khách hàng, cắt mí Pro Mini/Open Deep Nano Plasma đã và đang trở thành dịch vụ được nhiều chị em “săn đón” nhất hiện nay. Kỹ thuật hiện đại top 1 này được xem là “vị cứu tinh” cho mọi khuyết điểm của mắt, mang đến “nhãn thần” tinh anh và cuốn hút.</strong></p><p><br>&nbsp;</p>', '01JP1SVGGYDMKX1CHB6R43Z5VC.png', 2, '2025-03-11 05:10:59', '2025-03-11 05:11:49'),
(11, 'Cấy mỡ hốc mắt', 'cay-mo-hoc-mat', 'Hốc mắt sâu trũng khiến cho ánh nhìn già nua thiếu sức sống. Độn mắt sâu tại Hệ thống thẩm mỹ Thu Cúc chính là giải pháp làm đẹp giúp khắc phục hiệu quả, an toàn tình trạng này. Chắc chắn sau phẫu thuật, chị em sẽ nhanh chóng có được đôi mắt tinh anh với ánh nhìn trẻ trung, rạng rỡ.\n\n', '<p>&nbsp;</p><p><strong>Hốc mắt sâu trũng khiến cho ánh nhìn già nua thiếu sức sống. Độn mắt sâu tại Hệ thống thẩm mỹ Thu Cúc chính là giải pháp làm đẹp giúp khắc phục hiệu quả, an toàn tình trạng này. Chắc chắn sau phẫu thuật, chị em sẽ nhanh chóng có được đôi mắt tinh anh với ánh nhìn trẻ trung, rạng rỡ.</strong></p><p><br>&nbsp;</p>', '01JP1SW8CT7M8KQQZMH80Y8B9K.png', 2, '2025-03-11 05:12:13', '2025-03-11 05:12:13'),
(12, 'Mở rộng góc mắt', 'mo-rong-goc-mat', 'Phương pháp mở rộng góc mắt ra đời giống như một phép màu giúp nàng không may sở hữu đôi mắt nhỏ hẹp, không cân xứng… trở lên to tròn, tự nhiên. Với công nghệ hiện đại, tiên tiến cùng đội ngũ bác sĩ giỏi, giàu kinh nghiệm tại Hệ thống thẩm mỹ Thu Cúc, chắc chắn bạn sẽ có được đôi mắt đẹp như ý.', '<p>&nbsp;Phương pháp <strong>mở rộng góc mắt</strong> ra đời giống như một phép màu giúp nàng không may sở hữu đôi mắt nhỏ hẹp, không cân xứng… trở lên to tròn, tự nhiên. Với công nghệ hiện đại, tiên tiến cùng đội ngũ bác sĩ giỏi, giàu kinh nghiệm tại Hệ thống thẩm mỹ Thu Cúc, chắc chắn bạn sẽ có được đôi mắt đẹp như ý.&nbsp;</p>', '01JP1SX28FAK3G65BF2444YFB6.png', 2, '2025-03-11 05:12:39', '2025-03-11 05:12:39'),
(13, 'Nâng cung mày', 'nang-cung-may', 'Cắt cung mày tại Hệ thống thẩm mỹ Thu Cúc là phương pháp hiện đại giúp tạo dáng mày với đường nét trẻ trung, sinh động, đem đến cho khách hàng khuôn mặt rạng rỡ, ấn tượng. Đây cũng chính là giải pháp trẻ hóa mắt toàn diện cho những ai không may mắn sở hữu đôi mắt với nhiều yếu điểm.\n\n', '<p>&nbsp;</p><p><strong>Cắt cung mày tại Hệ thống thẩm mỹ Thu Cúc là phương pháp hiện đại giúp tạo dáng mày với đường nét trẻ trung, sinh động, đem đến cho khách hàng khuôn mặt rạng rỡ, ấn tượng. Đây cũng chính là giải pháp trẻ hóa mắt toàn diện cho những ai không may mắn sở hữu đôi mắt với nhiều yếu điểm.</strong></p><p><br>&nbsp;</p>', '01JP1SXVKG5ZDDHXPDJ3H9TT0F.png', 2, '2025-03-11 05:13:05', '2025-03-11 05:13:05'),
(14, 'Tạo hình Sụp mí bẩm sinh', 'tao-hinh-sup-mi-bam-sinh', 'Sụp mí bẩm sinh không chỉ gây mất thẩm mỹ mà còn ảnh hưởng nhiều đến sức khỏe mỗi người. Phương pháp tạo hình sụp mí bẩm sinh (nâng mí) được nhiều khách hàng lựa chọn để cải thiện khuyết điểm này.\n\n', '<p>&nbsp;</p><p>Sụp mí bẩm sinh không chỉ gây mất thẩm mỹ mà còn ảnh hưởng nhiều đến sức khỏe mỗi người. Phương pháp tạo hình sụp mí bẩm sinh (nâng mí) được nhiều khách hàng lựa chọn để cải thiện khuyết điểm này.</p><p><br>&nbsp;</p>', '01JP1SYE7WJTFWAABPYX7ZRE2P.png', 2, '2025-03-11 05:13:24', '2025-03-11 05:13:24'),
(15, 'Nâng mũi BisCell', 'nang-mui-biscell', 'Công nghệ nâng mũi BisCell là công nghệ nâng mũi mới nhất, hiện đại nhất và độc quyền tại Thu Cúc. Phương pháp này được đặc biệt ưa chuộng bởi khắc phục tuyệt đối các hạn chế của công nghệ cũ, đồng thời mang lại dáng mũi chuẩn tỉ lệ vàng, hoàn hảo tự nhiên cho khách hàng.\n\n', '<p>&nbsp;</p><p>Công nghệ nâng mũi BisCell là công nghệ nâng mũi mới nhất, hiện đại nhất và độc quyền tại Thu Cúc. Phương pháp này được đặc biệt ưa chuộng bởi khắc phục tuyệt đối các hạn chế của công nghệ cũ, đồng thời mang lại dáng mũi chuẩn tỉ lệ vàng, hoàn hảo tự nhiên cho khách hàng.</p><p><br>&nbsp;</p>', '01JP1T1KP4Y1M26N5ZQGSNCQA1.png', 3, '2025-03-11 05:15:08', '2025-03-11 05:15:08'),
(16, 'Nâng mũi High-line', 'nang-mui-high-line', 'Theo nhân tướng học, chiếc mũi có vị trí quan trọng để nhận biết về tính cách cũng như vận mệnh của mỗi người. Vì thế, nhiều người tìm đến Hệ thống Thẩm mỹ Thu Cúc, thực hiện phẫu thuật nâng mũi High-line không chỉ để sở hữu gương mặt đẹp hoàn hảo hơn mà còn giúp “cải vận”, phù hợp với phong thủy hơn. \n\n', '<p>&nbsp;</p><p>Theo nhân tướng học, chiếc mũi có vị trí quan trọng để nhận biết về tính cách cũng như vận mệnh của mỗi người. Vì thế, nhiều người tìm đến Hệ thống Thẩm mỹ Thu Cúc, thực hiện phẫu thuật nâng mũi High-line không chỉ để sở hữu gương mặt đẹp hoàn hảo hơn mà còn giúp “cải vận”, phù hợp với phong thủy hơn.&nbsp;</p><p><br>&nbsp;</p>', '01JP1T2R404SM0HVK51WRTZFYC.png', 3, '2025-03-11 05:15:46', '2025-03-11 05:15:46'),
(17, 'Nâng mũi NanoCell 4.0', 'nang-mui-nanocell-40', 'Công nghệ nâng mũi High-Line NanoCell 4.0 mới nhất tại Thu Cúc được “đo ni đóng giày” cho từng gương mặt, đảm bảo tôn lên nét đẹp riêng cho từng khách hàng và đáp ứng 3 tiêu chí “vàng”: Đẹp tự nhiên – An toàn tuyệt đối – Bảo hành trọn đời.\n\n', '<p>&nbsp;</p><p><em>Công nghệ nâng mũi High-Line NanoCell 4.0 mới nhất tại Thu Cúc được “đo ni đóng giày” cho từng gương mặt, đảm bảo tôn lên nét đẹp riêng cho từng khách hàng và đáp ứng 3 tiêu chí “vàng”: Đẹp tự nhiên – An toàn tuyệt đối – Bảo hành trọn đời.</em></p><p><br>&nbsp;</p>', '01JP1T3DRAP734555E7H528C2F.png', 3, '2025-03-11 05:16:08', '2025-03-11 05:16:08'),
(18, 'Rút chất liệu mũi là gì', 'rut-chat-lieu-mui-la-gi', 'Nâng mũi là một trong những xu hướng làm đẹp hot nhất hiện nay. Tuy nhiên nếu khách hàng thực hiện tại những địa chỉ thẩm mỹ kém uy tín thì việc phải đối mặt với những rủi ro sau phẫu thuật là điều khó có thể tránh khỏi. Thực tế đã có những trường hợp phải rút chất liệu mũi để đảm bảo an toàn và tránh những hệ lụy sau này.\n\n', '<p>&nbsp;</p><p><strong>Nâng mũi là một trong những xu hướng làm đẹp hot nhất hiện nay. Tuy nhiên nếu khách hàng thực hiện tại những địa chỉ thẩm mỹ kém uy tín thì việc phải đối mặt với những rủi ro sau phẫu thuật là điều khó có thể tránh khỏi. Thực tế đã có những trường hợp phải rút chất liệu mũi để đảm bảo an toàn và tránh những hệ lụy sau này.</strong></p><p><br>&nbsp;</p>', '01JP1T42KCT7XNQS09DY7HD17T.png', 3, '2025-03-11 05:16:29', '2025-03-11 05:16:29'),
(19, 'Thu gọn cánh mũi', 'thu-gon-canh-mui', 'Phương pháp phẫu thuật thu gọn cánh mũi (cắt cánh mũi) tại Hệ thống Thẩm mỹ Thu Cúc là giải pháp tối ưu cho trường hợp cánh mũi quá to không cân đối với khuôn mặt .', '<p>&nbsp;</p><p><strong>Phương pháp phẫu thuật thu gọn cánh mũi (cắt cánh mũi) tại Hệ thống Thẩm mỹ Thu Cúc là giải pháp tối ưu cho trường hợp cánh mũi quá to không cân đối với khuôn mặt .</strong></p><p>Trên gương mặt, chiếc mũi là vị trí có vai trò tạo điểm nhấn. Sống mũi cao nhưng phần cánh to bè, thô sẽ đánh mất sự hoàn hảo của dáng mũi, làm giảm sự cân đối, thanh thoát của khuôn mặt. Nắm bắt được nhu cầu làm đẹp đa dạng của chị em, Hệ thống thẩm mỹ Thu Cúc đã ứng dụng thành công tiểu phẫu thu gọn cánh mũi an toàn. Phương pháp này có thể thực hiện kết hợp với nâng mũi và thu nhỏ đầu mũi để đem lại hiệu quả thẩm mỹ tối ưu.&nbsp;</p>', '01JP1T555SA9N6S7W9BP1DTKC8.png', 3, '2025-03-11 05:17:05', '2025-03-11 05:17:05'),
(20, 'Tiêm Ruvederm', 'tiem-ruvederm', 'Filler Juvederm được xem là một trong những loại filler cao cấp hàng đầu hiện nay. Sản phẩm được sản xuất tại Pháp và phân phối bởi tập đoàn ALLERGAN của Hoa Kỳ. Loại filler này đã được FDA chứng nhận về chất lượng và an toàn, được phép lưu hành ở nhiều nước trên thế giớ', '<p>&nbsp;</p><p>Filler Juvederm được xem là một trong những loại filler cao cấp hàng đầu hiện nay. Sản phẩm được sản xuất tại Pháp và phân phối bởi tập đoàn ALLERGAN của Hoa Kỳ. Loại filler này đã được FDA chứng nhận về chất lượng và an toàn, được phép lưu hành ở nhiều nước trên thế giớ</p><p>&nbsp;</p>', '01JP1T9E1ZPZTBYNJMZ7HE6H2C.png', 4, '2025-03-11 05:19:25', '2025-03-11 05:19:25'),
(21, 'Xóa nhăn', 'xoa-nhan', 'Theo thời gian nếp nhăn trên gương mặt là dấu hiệu đầu tiên báo động làn da bắt đầu bước vào giai đoạn lão hóa. Sự phát triển của ngành thẩm mỹ học đã liên tục cho ra các phương pháp xóa nhăn hiệu quả, trong đó xóa nhăn bằng công nghệ cao được xem là liệu pháp tối ưu cho hiệu quả nhanh, duy trì được trong thời gian dài.', '<p>&nbsp;Theo thời gian <strong>nếp nhăn trên gương mặt</strong> là dấu hiệu đầu tiên báo động <strong>làn da bắt đầu bước vào giai đoạn lão hóa</strong>. Sự phát triển của ngành thẩm mỹ học đã liên tục cho ra các phương pháp xóa nhăn hiệu quả, trong đó <strong>xóa nhăn bằng công nghệ cao</strong> được xem là liệu pháp tối ưu cho hiệu quả nhanh, duy trì được trong thời gian dài.&nbsp;</p>', '01JP1TB3HHSQAKERQ1HRZ0X3MZ.png', 4, '2025-03-11 05:20:20', '2025-03-11 05:20:20'),
(22, 'Thu gọn mặt bằng Beauteam', 'thu-gon-mat-bang-beauteam', 'Tiêm Beautem thon gọn mặt là giải pháp thẩm mỹ hoàn hảo giúp bạn nhanh chóng loại bỏ nhược điểm khuôn mặt to thô, các đường nét không gọn gàng nhằm có được vẻ đẹp, trơn chu, cân đối, hài hòa, tự nhiên. Phương pháp này dần trở thành xu hướng trong giới trẻ, và thậm chí còn thu hút được nhiều nghệ sĩ, ngôi sao nổi tiếng trên toàn thế giới.\n\n', '<p>&nbsp;</p><p>Tiêm Beautem thon gọn mặt là giải pháp thẩm mỹ hoàn hảo giúp bạn nhanh chóng loại bỏ nhược điểm khuôn mặt to thô, các đường nét không gọn gàng nhằm có được vẻ đẹp, trơn chu, cân đối, hài hòa, tự nhiên. Phương pháp này dần trở thành xu hướng trong giới trẻ, và thậm chí còn thu hút được nhiều nghệ sĩ, ngôi sao nổi tiếng trên toàn thế giới.</p><p><br>&nbsp;</p>', '01JP1TCKS4E99KYFMCH7ZEM9ZJ.png', 4, '2025-03-11 05:21:09', '2025-03-11 05:21:09'),
(23, 'Cấy mỡ toàn mặt Ultra Fat', 'cay-mo-toan-mat-ultra-fat', 'Cấy mỡ là phương pháp làm đầy các vùng lõm, các rãnh khuyết trên gương mặt cũng như trên cơ thể. So với các phương pháp lạc hậu, công nghệ Ultra Fat sử dụng mỡ tự thân của khách hàng để cấy vào vùng khuyết điểm như: thái dương lõm, má hóp, gò má cao, da nhăn nheo… Mỡ này sẽ được lấy từ các vùng bụng, đùi hay bắp tay của cơ thể, sau đó đem lọc ly tâm, chiết tách thu được những tế bào mỡ sống chất lượng nhất.\n\n', '<p>&nbsp;</p><p>Cấy mỡ là phương pháp làm đầy các vùng lõm, các rãnh khuyết trên gương mặt cũng như trên cơ thể. So với các phương pháp lạc hậu, công nghệ Ultra Fat sử dụng mỡ tự thân của khách hàng để cấy vào vùng khuyết điểm như: thái dương lõm, má hóp, gò má cao, da nhăn nheo… Mỡ này sẽ được lấy từ các vùng bụng, đùi hay bắp tay của cơ thể, sau đó đem lọc ly tâm, chiết tách thu được những tế bào mỡ sống chất lượng nhất.</p><p><br>&nbsp;</p>', '01JP1TE39Z7KF707CY1M3YKFZ4.png', 5, '2025-03-11 05:21:58', '2025-03-11 05:21:58'),
(24, 'Cấy mỡ má hóp Ultra Fat', 'cay-mo-ma-hop-ultra-fat', 'Má hóp là tình trạng suy giảm mô mỡ ở dưới da, khiến xương gò má lộ rõ, gương mặt từ đó cũng trở nên thô cứng hơn. Hiện tượng này có thể do bẩm sinh, hoặc do giảm cân đột ngột, hoặc niềng răng làm thay đổi khung xương mặt. Dù xuất hiện bởi nguyên nhân gì thì má hóp, lõm cũng ảnh hưởng rất nhiều đến thẩm mỹ và cả tướng số phong thủy.\n\n', '<p>&nbsp;</p><p>Má hóp là tình trạng suy giảm mô mỡ ở dưới da, khiến xương gò má lộ rõ, gương mặt từ đó cũng trở nên thô cứng hơn. Hiện tượng này có thể do bẩm sinh, hoặc do giảm cân đột ngột, hoặc niềng răng làm thay đổi khung xương mặt. Dù xuất hiện bởi nguyên nhân gì thì má hóp, lõm cũng ảnh hưởng rất nhiều đến thẩm mỹ và cả tướng số phong thủy.</p><p><br>&nbsp;</p>', '01JP1TFCF7CC38KXXXK1FJ41PV.png', 5, '2025-03-11 05:22:40', '2025-03-11 05:22:40'),
(25, 'Cấy mỡ trán Ultra Fat', 'cay-mo-tran-ultra-fat', 'Trán nhăn, trán lõm là tình trạng mô mỡ dưới da suy giảm, khiến vùng trán nhăn nheo, hằn vết chân chim và kém đàn hồi. Đây là hệ quả của quá trình lão hóa và những thói quen xấu trong sinh hoạt như biểu cảm cơ mặt thái quá (nhăn trán, nhíu mày), không chăm sóc da chu đáo, dùng nhiều chất kích thích hay sử dụng mỹ phẩm không phù hợp,…\n\n', '<p>&nbsp;</p><p>Trán nhăn, trán lõm là tình trạng mô mỡ dưới da suy giảm, khiến vùng trán nhăn nheo, hằn vết chân chim và kém đàn hồi. Đây là hệ quả của quá trình lão hóa và những thói quen xấu trong sinh hoạt như biểu cảm cơ mặt thái quá (nhăn trán, nhíu mày), không chăm sóc da chu đáo, dùng nhiều chất kích thích hay sử dụng mỹ phẩm không phù hợp,…</p><p>Dù vì lý do gì thì vùng trán lõm, nhăn nheo cũng gây ảnh hưởng đến vẻ đẹp thẩm mỹ và khiến bạn trông già nua, thiếu sức sống. Để khắc phục tình trạng này, nhiều người đã lựa chọn dịch vụ <a href=\"https://benhvienthammythucuc.vn/cay-mo-tran/\"><strong>cấy mỡ trán</strong></a> tự thân Ultra Fat tại Bệnh viện thẩm mỹ Thu Cúc.&nbsp;</p>', '01JP1THK5W29H9JZG4Z8M49R03.png', 5, '2025-03-11 05:23:52', '2025-03-11 05:23:52'),
(26, 'Cấy mỡ Vaser Fat', 'cay-mo-vaser-fat', 'Là một trong những xu hướng làm đẹp an toàn và hiện đại hiện nay. Với công dụng “2 trong 1”, công nghệ Vaser Fat được đánh giá là giải pháp nhanh nhất giúp bạn lấp đầy những khiếm khuyết trên gương mặt và cơ thể, giúp tôn đường nét và trẻ đẹp ngay sau 1 lần thực hiện.\n\n', '<p>&nbsp;</p><p>Là một trong những xu hướng làm đẹp an toàn và hiện đại hiện nay. Với công dụng “2 trong 1”, công nghệ Vaser Fat được đánh giá là giải pháp nhanh nhất giúp bạn lấp đầy những khiếm khuyết trên gương mặt và cơ thể, giúp tôn đường nét và trẻ đẹp ngay sau 1 lần thực hiện.</p><p><br><br></p>', '01JP1TJYNGY4D8R6Q3193NGKAJ.png', 5, '2025-03-11 05:24:37', '2025-03-11 05:24:37'),
(27, 'Cấy mỡ thái dương Ultra Fat', 'cay-mo-thai-duong-ultra-fat', 'Con người khi sinh ra lớn lên và già đi sẽ là một quá trình dài có nhiều biến động. Đến giai đoạn tuổi trung niên hoặc sớm hơn (tùy cơ địa) cơ thể bị lão hóa, vùng thái dương và nhiều vùng khác trên cơ thể lõm xuống khiến mặt hốc hác, già nua, thiếu sức sống. Lúc này tìm đến công nghệ cấy mỡ thái dương với mong ước lấy lại được nét đẹp tuổi thanh xuân là lựa chọn được nhiều người quan tâm. \n\n', '<p>&nbsp;</p><p>Con người khi sinh ra lớn lên và già đi sẽ là một quá trình dài có nhiều biến động. Đến giai đoạn tuổi trung niên hoặc sớm hơn (tùy cơ địa) cơ thể bị lão hóa, vùng thái dương và nhiều vùng khác trên cơ thể lõm xuống khiến mặt hốc hác, già nua, thiếu sức sống. Lúc này tìm đến công nghệ <a href=\"https://benhvienthammythucuc.vn/cay-mo-thai-duong/\"><strong>cấy mỡ thái dương</strong></a> với mong ước lấy lại được nét đẹp tuổi thanh xuân là lựa chọn được nhiều người quan tâm.&nbsp;</p><p>Cấy mỡ thái dương là phương pháp làm đầy vùng lõm thái thương bằng mỡ tự thân dưới sự hỗ trợ của công nghệ cấy mỡ Ultra Fat. Cơ chế hoạt động của phương pháp này là lấy mỡ thừa tại các vùng (bụng, đùi, bắp chân,…) từ chính cơ thể khách hàng. Sau đó lọc mỡ, tách chiết bằng máy li tâm chọn ra các tế bào mỡ sống khỏe rồi cấy trực tiếp vào vùng khuyết, lõm thái dương.&nbsp;</p>', '01JP1TM06V2YQM4H36YJ0W11QZ.png', 5, '2025-03-11 05:25:11', '2025-03-11 05:25:11'),
(28, 'Tạo má lúm đồng tiền', 'tao-ma-lum-dong-tien', 'Không phải ai sinh ra cũng có đặc điểm này trên khuôn mặt. Ở một số người, má lúm đồng tiền xuất hiện một cách tự nhiên do các vết lõm gây ra bởi các cơ mặt sâu. Ở một số nơi, má lúm đồng tiền được coi là dấu hiệu của sắc đẹp, may mắn và thậm chí cả tài lộc. Hãy cùng tìm hiểu về dịch vụ thẩm mỹ tạo má lúm đồng tiền dưới bài viết này nhé!\n\n', '<p>&nbsp;</p><h2>Thẩm mỹ má lúm đồng tiền là gì?</h2><p>Tạo má lúm là phương pháp <strong>tạo má lúm đồng tiền</strong> đơn giản, không cần phẫu thuật, dựa trên cơ chế hình thành má lúm tự nhiên, tạo liên kết giữa da mặt và cơ má để khi cười sẽ tạo vết lõm chính là má lúm đồng tiền.</p><h2>Có nên đi tạo má lúm không?</h2><ul><li>Quan niệm dân gian và nhân tướng học cho rằng má lúm đồng tiền là biểu tượng của sự may mắn, tài lộc.</li><li>Má lúm đồng tiền luôn tạo một vẻ đẹp duyên dáng, hút hồn cho người sở hữu. Không chỉ thế, về mặt phong thủy má lúm đồng tiền còn mang đến rất nhiều may mắn. Do đó, số lượng các ca phẫu thuật tạo má lúm đồng tiền đã tăng lên đáng kể trong những năm gần đây.</li></ul><h3>Ưu điểm của thẩm mỹ má lúm</h3><p>Quá trình phẫu thuật được thực hiện với trang thiết bị, công nghệ tiên tiến trong phòng mổ vô trùng.</p><p>Má lúm đẹp tự nhiên như thật</p><p>Tay nghề của bác sĩ cao sẽ tạo 1 má lúm đồng tiền tự nhiên nhẹ nhàng mà vẫn giữ được nét duyên dáng vốn có trên khuôn mặt bạn.</p><p>Không đau nhức, không để lại sẹo</p><p>Trước khi tạo má lúm, bác sĩ sẽ tiến hành gây mê cục bộ vùng má, hạn chế tối đa cảm giác đau nhức cho khách hàng. Hơn nữa, kỹ thuật tạo má lúm đồng tiền đều được thực hiện ở bên trong khoang miệng nên không hề để lại bất cứ dấu vết hay sẹo xấu nào.</p><p>Thực hiện nhanh không cần nghỉ dưỡng</p><p>Tạo má lúm được thực hiện nhanh chóng, kỹ thuật đơn giản, chính xác chỉ trong 10 phút. Ngay sau khi kết thúc quá trình tạo má lúm, bạn có thể về luôn trong ngày, không cần nghỉ dưỡng kiêng khem phức tạp.&nbsp;</p>', '01JP1TP6ZYE669RNVGPCKQEWMF.png', 6, '2025-03-11 05:26:24', '2025-03-11 05:26:24'),
(29, 'Hút mỡ', 'tham-my-voc-dang', 'KHÔNG cần phải tập luyện hàng ngày, KHÔNG cần chế độ ăn kiêng khắt khe, KHÔNG cần sử dụng các loại thuốc giảm mỡ nguy hại,… chỉ cần đến Bệnh viện thẩm mỹ hút mỡ bằng công nghệ hút mỡ siêu âm…..', '<p>KHÔNG cần phải tập luyện hàng ngày, KHÔNG cần chế độ ăn kiêng khắt khe, KHÔNG cần sử dụng các loại thuốc giảm mỡ nguy hại,… chỉ cần đến Bệnh viện thẩm mỹ hút mỡ bằng công nghệ hút mỡ siêu âm…..</p>', '01JP1TSH84ZKBKK928PH9Y1M8W.png', 7, '2025-03-11 05:28:12', '2025-03-11 05:32:52'),
(30, 'Điêu khắc chân mày 8D', 'dieu-khac-chan-may-8d', 'Công nghệ điêu khắc chân mày 8D hay Phibrows có nguồn gốc từ Châu Âu. Mang lại dáng mày tự nhiên, hài hòa. Các sợi lông mày thật giả được khắc tinh tế, đan xen lẫn nhau sống động như thật.\n\nChuyên viên phun xăm thực hiện phác thảo dáng mày phù hợp với tỉ lệ gương mặt. Sau đó dùng bút khắc siêu mảnh và mỏng sẽ khắc phẩy nhẹ nhàng, kiểm soát độ nông sâu không làm tổn thương bề mặt da. Sau từ 3-5 ngày bong hoàn toàn, không gây kích ứng, rụng lông mày thật.', '<p>&nbsp;</p><p>Công nghệ điêu khắc chân mày 8D hay Phibrows có nguồn gốc từ Châu Âu. Mang lại dáng mày tự nhiên, hài hòa. Các sợi lông mày thật giả được khắc tinh tế, đan xen lẫn nhau sống động như thật.</p><p>Chuyên viên phun xăm thực hiện phác thảo dáng mày phù hợp với tỉ lệ gương mặt. Sau đó dùng bút khắc siêu mảnh và mỏng sẽ khắc phẩy nhẹ nhàng, kiểm soát độ nông sâu không làm tổn thương bề mặt da. Sau từ 3-5 ngày bong hoàn toàn, không gây kích ứng, rụng lông mày thật.&nbsp;</p>', '01JP1V38BM60VZ29CVR0XW4M24.png', 8, '2025-03-11 05:33:31', '2025-03-11 05:33:31'),
(31, 'Thẩm mỹ công nghệ cao', 'tham-my-cong-nghe-cao', 'Thẩm mỹ công nghệ cao', '<p>Thẩm mỹ công nghệ cao</p>', '01JP1V512922XSW2G8H1T15HSS.png', 9, '2025-03-11 05:34:29', '2025-03-11 05:34:29');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('vT0EOXMK5U9UWUsgpRJwEBX9c13FZCdZqaNnncwa', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36 OPR/117.0.0.0', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiNXA4ZzlBRDdYclR2M2kzYjZ3dG9YSlRWMUZGNldscXVIU1V2SjlacyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkbnZMWmJadk1pSGxUYjN3Vy5hUHZhT2dZVzJhUEN3UVVnWXdXMDI0U2p1Ny56ektEbk5UVi4iO3M6ODoiZmlsYW1lbnQiO2E6MDp7fX0=', 1741671878),
('WVnSwSxHawR0qVOV5vNTwNhPavLJVg9WAqy88MYk', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36 OPR/117.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRXdPUXphQVRBS1V1a21VREhwc0ZFNWdCcDhCWDFONk81dWxXekJGZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741665162);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', 'admin@gmail.com', NULL, '$2y$12$nvLZbZvMiHlTb3wW.aPvaOgYW2aPCwQUgYwW024Sju7.zzKDnNTV.', NULL, '2025-03-10 07:05:38', '2025-03-10 07:05:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_history`
--
ALTER TABLE `access_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activity_history`
--
ALTER TABLE `activity_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_history`
--
ALTER TABLE `access_history`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `activity_history`
--
ALTER TABLE `activity_history`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
