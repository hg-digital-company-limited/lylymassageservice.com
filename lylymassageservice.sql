-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 11, 2025 at 04:26 AM
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
(1, '2025-03-11', 34, '2025-03-11 04:05:37', '2025-03-11 04:23:59');

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
('356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1741666976),
('356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1741666976;', 1741666976);

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
(10, 'Dịch vụ khác', 'dich-vu-khac', NULL, '2025-03-10 14:19:24', '2025-03-10 14:19:24'),
(11, 'Cắt mí Nano Plasma', 'cat-mi-nano-plasma', 2, '2025-03-11 04:23:24', '2025-03-11 04:23:24'),
(12, 'Cấy mỡ hốc mắt', 'cay-mo-hoc-mat', 2, '2025-03-11 04:23:31', '2025-03-11 04:23:31'),
(13, 'Mở rộng góc mắt', 'mo-rong-goc-mat', 2, '2025-03-11 04:23:37', '2025-03-11 04:23:37'),
(14, 'Nâng cung mày', 'nang-cung-may', 2, '2025-03-11 04:23:44', '2025-03-11 04:23:44'),
(15, 'Tạo hình Sụp mí bẩm sinh', 'tao-hinh-sup-mi-bam-sinh', 2, '2025-03-11 04:23:50', '2025-03-11 04:23:50'),
(16, 'Nâng mũi BisCell', 'nang-mui-biscell', 3, '2025-03-11 04:24:21', '2025-03-11 04:24:21'),
(17, 'Nâng mũi High-line', 'nang-mui-high-line', 3, '2025-03-11 04:24:27', '2025-03-11 04:24:27'),
(18, 'Nâng mũi NanoCell 4.0', 'nang-mui-nanocell-40', 3, '2025-03-11 04:24:31', '2025-03-11 04:24:31'),
(19, 'Rút chất liệu mũi là gì', 'rut-chat-lieu-mui-la-gi', 3, '2025-03-11 04:24:38', '2025-03-11 04:24:38'),
(20, 'Thu gọn cánh mũi', 'thu-gon-canh-mui', 3, '2025-03-11 04:24:45', '2025-03-11 04:24:45'),
(21, 'Tiêm Ruvederm', 'tiem-ruvederm', 4, '2025-03-11 04:24:53', '2025-03-11 04:24:53'),
(22, 'Xóa nhăn', 'xoa-nhan', 4, '2025-03-11 04:24:58', '2025-03-11 04:24:58'),
(23, 'Thu gọn mặt bằng Beauteam', 'thu-gon-mat-bang-beauteam', 4, '2025-03-11 04:26:03', '2025-03-11 04:26:03');

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
(9, 'CƠ HỘI CUỐI SĂN ƯU ĐÃI LỚN NHẤT THÁNG 10: OFF 50%', 'co-hoi-cuoi-san-uu-dai-lon-nhat-thang-10-off-50', 'Từ ngày 22 – 31/10, khi đến làm đẹp tại Bệnh viện Thẩm mỹ Thu Cúc quý khách hàng có cơ hội nhận ưu đãi SỐC lên tới 50% các dịch vụ phẫu thuật thẩm mỹ và clinics. Hãy đến tân trang để trải nghiệm dịch vụ làm đẹp đẳng cấp 5 sao được hàng triệu khách hàng và hàng ngàn người nổi tiếng an tâm lựa chọn!', '<p>&nbsp;<strong>Từ ngày 22 – 31/10, khi đến làm đẹp tại Bệnh viện Thẩm mỹ Thu Cúc quý khách hàng có cơ hội nhận ưu đãi SỐC lên tới 50% các dịch vụ phẫu thuật thẩm mỹ và clinics. Hãy đến tân trang để trải nghiệm dịch vụ làm đẹp đẳng cấp 5 sao được hàng triệu khách hàng và hàng ngàn người nổi tiếng an tâm lựa chọn!</strong>&nbsp;</p>', '01JP1Q0DBPM1TY77VGTKT83ST4.png', NULL, '2025-03-11 04:22:03', '2025-03-11 04:22:03');

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
('vT0EOXMK5U9UWUsgpRJwEBX9c13FZCdZqaNnncwa', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36 OPR/117.0.0.0', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiNXA4ZzlBRDdYclR2M2kzYjZ3dG9YSlRWMUZGNldscXVIU1V2SjlacyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9jYXRlZ29yaWVzL2NyZWF0ZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkbnZMWmJadk1pSGxUYjN3Vy5hUHZhT2dZVzJhUEN3UVVnWXdXMDI0U2p1Ny56ektEbk5UVi4iO3M6ODoiZmlsYW1lbnQiO2E6MDp7fX0=', 1741667169),
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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
