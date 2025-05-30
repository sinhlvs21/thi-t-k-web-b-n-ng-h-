-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 08, 2024 lúc 04:30 AM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `watch_store`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int(5) NOT NULL DEFAULT 1,
  `log_login` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone`, `level`, `log_login`, `class`, `address`, `avatar`, `created_at`, `updated_at`) VALUES
(5, 'sinh', 'sinhlvs21@gmail.com', '$2y$10$UE5Wjjq5KBkMCti3GV.xYe9PB4M9RLYUJobsBxVl4Bp/CxTz568J6', '0944672401', 2, NULL, 'K64HTTT', 'gia lâm', '2023-12-12__304858587-2927582590877666-3339656267389105710-n.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `a_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_hot` tinyint(4) NOT NULL DEFAULT 0,
  `a_active` tinyint(4) NOT NULL DEFAULT 1,
  `a_menu_id` int(11) NOT NULL DEFAULT 0,
  `a_view` int(11) NOT NULL DEFAULT 0,
  `a_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `a_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `a_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `articles`
--

INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_hot`, `a_active`, `a_menu_id`, `a_view`, `a_description`, `a_avatar`, `a_content`, `created_at`, `a_position_2`, `a_position_1`, `updated_at`) VALUES
(1, 'Tìm hiểu về công nghệ mạ PVD cao cấp trong chế tác đồng hồ', 'tim-hieu-ve-cong-nghe-ma-pvd-cao-cap-trong-che-tac-dong-ho', 1, 1, 2, 0, 'Đồng hồ mạ vàng PVD luôn nằm trong top những mẫu đồng hồ được ưa chuộng nhất mọi thời đại. Tuy được biết đến và sử dụng rộng rãi nhưng vẫn có không ít người còn nhiều thắc mắc về đồng hồ mạ vàng PVD.', '2020-05-04__66722269-dong-ho-nam-2.jpg', '<h1>T&igrave;m hiểu về c&ocirc;ng nghệ mạ PVD cao cấp trong chế t&aacute;c đồng hồ</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Đồng hồ mạ v&agrave;ng PVD lu&ocirc;n nằm trong top những mẫu đồng hồ được ưa chuộng nhất mọi thời đại. Tuy được biết đến v&agrave; sử dụng rộng r&atilde;i nhưng vẫn c&oacute; kh&ocirc;ng &iacute;t người c&ograve;n nhiều thắc mắc về đồng hồ mạ v&agrave;ng PVD.</h2>\r\n\r\n<p>Liệu đồng hồ mạ v&agrave;ng PVD c&oacute; bị phai m&agrave;u trong d&ograve;ng chảy v&ocirc; tận của thời gian? Ch&uacute;ng ta c&ugrave;ng t&igrave;m hiểu điều đ&oacute; để c&oacute; c&acirc;u trả lời x&aacute;c thực nhất.</p>\r\n\r\n<h2>1. Mạ v&agrave;ng PVD cho đồng hồ &ndash; Những đặc trưng v&agrave; ưu điểm nổi bật</h2>\r\n\r\n<p>To&aacute;t l&ecirc;n kh&iacute; chất vương giả thời thượng, những chiếc đồng hồ m&agrave;u v&agrave;ng lu&ocirc;n khiến người ta phải trầm trồ ngưỡng mộ về vẻ quyền uy, sang trọng. Ch&uacute;ng c&oacute; thể được mạ v&agrave;ng r&ograve;ng cao cấp ở những chiếc đồng hồ nổi tiếng m&agrave; ta vẫn quen gọi l&agrave; những si&ecirc;u phẩm của thời gian. Dĩ nhi&ecirc;n, ch&uacute;ng đắt đỏ, thậm ch&iacute; đ&oacute; l&agrave; những phi&ecirc;n bản giới hạn chỉ d&agrave;nh cho số &iacute;t người gi&agrave;u c&oacute;, nổi tiếng v&agrave; c&oacute; địa vị. B&ecirc;n cạnh những ng&ocirc;i sao &ldquo;đắt gi&aacute;&rdquo; đ&oacute; l&agrave; sự xuất hiện v&agrave; chiếm hữu của đồng hồ mạ v&agrave;ng PVD ti&ecirc;n tiến, m&ecirc; hoặc người d&ugrave;ng bởi chất lượng v&agrave; sự bền bỉ đ&aacute;ng ngưỡng mộ.</p>\r\n\r\n<p><a href=\"https://www.dangquangwatch.vn//lib/ckfinder/images/dong%20ho%20thuy%20sy%20atlantic%20(6)(1).jpg\"><img alt=\"\" src=\"https://www.dangquangwatch.vn//lib/ckfinder/images/dong%20ho%20thuy%20sy%20atlantic%20(6)(1).jpg\" /></a></p>\r\n\r\n<p>Trước đ&acirc;y, chỉ c&oacute; những chiếc đồng hồ đắt tiền mới được mạ v&agrave;ng, thậm ch&iacute; đồng hồ nam mạ v&agrave;ng ở thời kỳ đ&oacute; c&ograve;n trở th&agrave;nh h&agrave;ng &ldquo;hiếm&rdquo;. Người ta sử dụng những kim loại qu&yacute; gi&aacute; phủ l&ecirc;n bề mặt để l&agrave;m tăng sự sang trọng đẳng cấp v&agrave; t&iacute;nh thẩm mỹ cho những chiếc đồng hồ đeo tay. Thay v&igrave; sử dụng v&agrave;ng thật, c&ocirc;ng nghệ mạ v&agrave;ng PVD được ứng dụng cao v&agrave; ng&agrave;y c&agrave;ng trở n&ecirc;n phổ biến.</p>\r\n\r\n<p><a href=\"https://www.dangquangwatch.vn//lib/ckfinder/images/dong%20ho%20thuy%20sy%20nu%20(4)(1).jpg\"><img alt=\"\" src=\"https://www.dangquangwatch.vn//lib/ckfinder/images/dong%20ho%20thuy%20sy%20nu%20(4)(1).jpg\" /></a></p>\r\n\r\n<p>Bắt nhịp c&ugrave;ng xu thế ph&aacute;t triển, những chiếc đồng hồ mạ v&agrave;ng PVD trở n&ecirc;n được ưa chuộng hơn cả bởi ch&uacute;ng sở hữu những ưu điểm vượt trội kh&ocirc;ng thể b&agrave;n c&atilde;i. Đ&oacute; l&agrave;:</p>\r\n\r\n<p><strong><em>Thứ nhất</em></strong><em>,&nbsp;</em>đồng hồ mạ v&agrave;ng PVD bền hơn. Đơn giản v&igrave; cấu tr&uacute;c kim loại nhiều tầng gi&uacute;p đồng hồ chịu ma s&aacute;t tốt, đồng hồ mạ v&agrave;ng bị xước &iacute;t hay kh&oacute; ăn m&ograve;n khi tiếp x&uacute;c với mồ h&ocirc;i, bụi bẩn&hellip;</p>\r\n\r\n<p><strong><em>Thứ hai</em></strong><em>,&nbsp;</em>mạ v&agrave;ng&nbsp;PVD c&oacute; độ b&aacute;m d&iacute;nh tuyệt vời, lớp phủ thống nhất n&ecirc;n đồng hồ c&oacute; nước mạ b&oacute;ng đẹp, mịn hơn, t&iacute;nh thẩm mĩ cao hơn.</p>\r\n\r\n<p><strong><em>Thứ ba</em></strong><em>,&nbsp;</em>mạ PVD c&oacute; quy tr&igrave;nh phủ đơn giản, th&acirc;n thiện với m&ocirc;i trường hơn so với kỹ thuật mạ v&agrave;ng trước kia. Đ&acirc;y hiện cũng l&agrave; c&ocirc;ng nghệ mạ ti&ecirc;n tiến nhất tr&ecirc;n thế giới.</p>\r\n\r\n<p>Với những ưu điểm vượt trội của m&igrave;nh, mỗi chiếc đồng hồ được mạ v&agrave;ng PVD trở th&agrave;nh những nh&acirc;n chứng vượt thời gian, bất chấp sự m&agrave;i m&ograve;n, l&atilde;ng qu&ecirc;n, ch&uacute;ng vẫn toả s&aacute;ng một c&aacute;ch trọn vẹn như thuở ban đầu. Trong khoảng thời gian từ 5 đến 7 năm, chắc chắn bạn sẽ kh&ocirc;ng một lần phải lo lắng liệu đồng hồ mạ v&agrave;ng bị phai m&agrave;u.</p>\r\n\r\n<p><a href=\"https://www.dangquangwatch.vn//lib/ckfinder/images/dong%20ho%20thuy%20sy%20epos%20(1).jpg\"><img alt=\"\" src=\"https://www.dangquangwatch.vn//lib/ckfinder/images/dong%20ho%20thuy%20sy%20epos%20(1).jpg\" /></a></p>\r\n\r\n<p>Vậy bản chất của c&ocirc;ng nghệ mạ v&agrave;ng PVD l&agrave; g&igrave;? Ch&uacute;ng ẩn chứa năng lực b&iacute; ẩn n&agrave;o m&agrave; c&oacute; thể tạo n&ecirc;n những điều kỳ diệu đến vậy?</p>\r\n\r\n<h2>2. C&ocirc;ng nghệ mạ PVD l&agrave; g&igrave; ?</h2>\r\n\r\n<p>Mạ PVD l&agrave; c&ocirc;ng nghệ mạ ch&acirc;n kh&ocirc;ng ti&ecirc;n tiến nhất tr&ecirc;n thế giới hiện nay. Được ứng dụng tr&ecirc;n hầu hết tất cả c&aacute;c lĩnh vực từ phụ t&ugrave;ng xe &ocirc; t&ocirc;, xe m&aacute;y, thiết bị điện tử, đồ mỹ nghệ đến những sản phẩm nhỏ b&eacute; như đồng hồ đeo tay ta vẫn thấy. Với ưu điểm nổi trội về độ bền đẹp v&agrave; th&acirc;n thiện với m&ocirc;i trường, những sản phẩm được xi mạ bằng c&ocirc;ng nghệ mạ PVD ti&ecirc;n tiến được ứng dụng v&agrave; ưa chuộng hơn cả.</p>\r\n\r\n<p>Ta từng nghe tới c&ocirc;ng nghệ mạ v&agrave;ng PVD, mạ bạc PVD,..ở nhiều thiết bị quen thuộc. Vậy bản chất của ch&uacute;ng l&agrave; g&igrave;?</p>\r\n\r\n<p>PVD (Physical Vapour Deposition) thực chất l&agrave; thuật ngữ để chỉ một qu&aacute; tr&igrave;nh. Trong c&ocirc;ng nghệ n&agrave;y, người ta l&agrave;m bay hơi kim loại v&agrave; ngưng tụ ở nhiệt độ cao tạo n&ecirc;n một lớp phủ tr&ecirc;n bề mặt cần mạ.</p>\r\n\r\n<p><a href=\"https://www.dangquangwatch.vn//lib/ckfinder/images/dong%20ho%20nu%20(4)(7).jpg\"><img alt=\"\" src=\"https://www.dangquangwatch.vn//lib/ckfinder/images/dong%20ho%20nu%20(4)(7).jpg\" /></a></p>\r\n\r\n<p>Khi kim loại inox được đ&aacute;nh b&oacute;ng, hợp kim Nh&ocirc;m, Kẽm, Đồng sẽ được mạ một lớp Niken b&oacute;ng. Với c&ocirc;ng nghệ mạ PVD, khi đ&oacute; lớp mạ TiN được phủ l&ecirc;n bề mặt sản phẩm sẽ cho ra m&agrave;u v&agrave;ng (Gold 14 đến 24K), lớp mạ ZrN cho m&agrave;u v&agrave;ng s&aacute;ng (Light Gold &ndash; m&agrave;u v&agrave;ng &Yacute;), lớp mạ CrC cho m&agrave;u x&aacute;m, m&agrave;u hồng v&agrave;ng v&agrave; m&agrave;u xanh nước biển,&hellip; v&agrave; c&aacute;c m&agrave;u kh&aacute;c theo cầu phụ thuộc v&agrave;o tỉ lệ pha trộn.</p>\r\n\r\n<p>Lớp mạ PVD kh&ocirc;ng chỉ bao phủ to&agrave;n bộ bề mặt của đồng hồ m&agrave; c&ograve;n bao gồm cả d&acirc;y, kho&aacute;, với lớp kim loại qu&yacute; gi&aacute; c&ugrave;ng một lượng Titanium mỏng, lớp mạ n&agrave;y l&agrave; thước đo bảo đảm cho sự bền bỉ v&agrave; khả năng chống xước vượt trội. Khi n&oacute;i về mạ PVD, giới mộ điệu thường v&iacute; ch&uacute;ng ở vị tr&iacute; ngang h&agrave;ng với Sapphire bởi ch&uacute;ng bởi độ cứng chỉ đứng sau kim cương.</p>\r\n\r\n<p><a href=\"https://www.dangquangwatch.vn//lib/ckfinder/images/dong%20ho%20nu%20(5)(4).jpg\"><img alt=\"\" src=\"https://www.dangquangwatch.vn//lib/ckfinder/images/dong%20ho%20nu%20(5)(4).jpg\" /></a></p>\r\n\r\n<p>Với lớp mạ bằng c&aacute;c hợp kim si&ecirc;u bền ở b&ecirc;n ngo&agrave;i như lớp &aacute;o gi&aacute;p bảo vệ, c&aacute;c sản phẩm được mạ v&agrave;ng PVD c&oacute; độ cứng cao, chống m&agrave;i m&ograve;n v&agrave; dễ d&agrave;ng l&ecirc;n m&agrave;u sắc như &yacute; muốn.</p>\r\n\r\n<p>Nếu bạn từng sở hữu một vật phẩm c&oacute; sử dụng c&ocirc;ng nghệ ti&ecirc;n tiến n&agrave;y hay đơn cử như chiếc đồng hồ mạ v&agrave;ng PVD, chắc chắn bạn sẽ đồng t&igrave;nh với t&ocirc;i về sự bền đẹp đến bất ngờ đ&oacute;.</p>\r\n\r\n<p><strong><em>Hotline tư vấn : 086 505 9090</em></strong></p>\r\n\r\n<p><strong>Website</strong>:&nbsp;&nbsp;</p>', '2023-10-20 22:56:12', 1, 1, '2023-12-17 00:26:54'),
(5, 'áduasghiu', 'aduasghiu', 0, 0, 1, 0, 'đfas', NULL, '<p>&aacute;dasd&aacute;d</p>', '2023-11-10 03:53:28', 1, 1, '2023-12-20 21:16:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `atb_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_type` tinyint(4) NOT NULL DEFAULT 0,
  `atb_category_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attributes`
--

INSERT INTO `attributes` (`id`, `atb_name`, `atb_slug`, `atb_type`, `atb_category_id`, `created_at`, `updated_at`) VALUES
(4, 'Đồng hồ cơ', 'dong-ho-co', 2, 0, '2020-05-03 19:52:14', NULL),
(5, 'Đồng hồ điện tử', 'dong-ho-dien-tu', 1, 1, '2020-05-03 19:57:20', '2023-12-10 02:03:08'),
(6, 'Dây da', 'day-da', 3, 1, '2020-05-03 19:57:52', NULL),
(7, 'Thép không gỉ', 'thep-khong-gi', 3, 1, '2020-05-03 19:58:02', NULL),
(8, 'Mạ vàng', 'ma-vang', 3, 1, '2020-05-03 19:58:11', NULL),
(9, 'Mạ đồng', 'ma-dong', 3, 1, '2020-05-03 19:58:16', NULL),
(10, 'Cao su', 'cao-su', 3, 1, '2020-05-03 19:58:27', NULL),
(11, 'Dây nhựa', 'day-nhua', 3, 1, '2020-05-03 19:58:33', NULL),
(12, 'Dây vải', 'day-vai', 3, 1, '2020-05-03 19:58:39', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_parent_id` int(11) NOT NULL DEFAULT 0,
  `c_hot` tinyint(4) NOT NULL DEFAULT 0,
  `c_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `c_name`, `c_slug`, `c_avatar`, `c_banner`, `c_description`, `c_parent_id`, `c_hot`, `c_status`, `created_at`, `updated_at`) VALUES
(1, 'Đồng hồ nam', 'dong-ho-nam', '2020-05-27__1.jpeg', NULL, NULL, 0, 1, 1, '2023-09-27 09:47:17', '2023-12-21 01:32:02'),
(2, 'Đồng hồ nữ', 'dong-ho-nu', '2020-05-04__ltp-v300l-4a.png', NULL, NULL, 0, 1, 1, '2023-09-27 15:13:14', '2023-11-24 02:40:09'),
(6, 'Đồng hồ Orient', 'dong-ho-orient', '2023-12-19__018.jpg', NULL, NULL, 0, 0, 1, '2023-10-31 03:12:42', '2023-12-21 01:32:11'),
(7, 'Casio', 'casio', '2023-12-19__019.jpg', NULL, NULL, 0, 0, 1, '2023-11-10 07:02:47', '2023-12-21 10:03:21'),
(8, 'Apple Watch', 'apple-watch', '2023-12-19__020.jpg', NULL, NULL, 0, 0, 1, '2023-12-18 23:46:40', '2023-12-21 01:32:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cmt_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_product_id` int(11) NOT NULL DEFAULT 0,
  `cmt_admin_id` int(11) NOT NULL DEFAULT 0,
  `cmt_user_id` int(11) NOT NULL DEFAULT 0,
  `cmt_like` int(11) NOT NULL DEFAULT 0,
  `cmt_disk_like` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_phone` char(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `c_title`, `c_phone`, `c_email`, `c_content`, `created_at`, `updated_at`) VALUES
(4, 'sádks', '21211', 'sd@gmail.com', 'dsafdsfasf', '2023-11-24 03:41:07', NULL),
(5, 'đồng hồ', '0932832174', 'sinh@gmail.com', 'cần mua thêm đồng hồ', '2023-11-24 06:59:29', NULL),
(6, 'ádf', '09336271823', 'snh123@gmail.com', 'cần mua với số lượng lớn', '2023-12-20 21:13:38', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `country`
--

INSERT INTO `country` (`id`, `name`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'Việt Nam', '2020-05-28__vietnam-flag.jpg', '2020-05-27 14:01:28', '2020-05-28 02:30:23'),
(2, 'Anh', '2020-05-28__5.png', '2020-05-27 14:01:28', '2020-05-28 02:39:17'),
(3, 'Thuỵ Sĩ', '2020-05-28__2.png', '2020-05-27 14:01:58', '2020-05-28 02:33:58'),
(4, 'Mỹ', '2020-05-28__6.png', '2020-05-27 14:01:58', '2020-05-28 02:40:09'),
(8, 'Trung quốc', '2023-11-13__tai-xuong.png', '2023-11-13 07:25:39', '2023-11-13 14:25:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_district`
--

CREATE TABLE `db_district` (
  `id` int(5) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL,
  `provinceid` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_district`
--

INSERT INTO `db_district` (`id`, `name`, `type`, `provinceid`) VALUES
(1, 'Quận Ba Đình', 'Quận', 1),
(2, 'Quận Hoàn Kiếm', 'Quận', 1),
(3, 'Quận Tây Hồ', 'Quận', 1),
(4, 'Quận Long Biên', 'Quận', 1),
(5, 'Quận Cầu Giấy', 'Quận', 1),
(6, 'Quận Đống Đa', 'Quận', 1),
(7, 'Quận Hai Bà Trưng', 'Quận', 1),
(8, 'Quận Hoàng Mai', 'Quận', 1),
(9, 'Quận Thanh Xuân', 'Quận', 1),
(10, 'Huyện Sóc Sơn', 'Huyện', 1),
(11, 'Huyện Đông Anh', 'Huyện', 1),
(18, 'Huyện Gia Lâm', 'Huyện', 1),
(19, 'Quận Nam Từ Liêm', 'Quận', 1),
(20, 'Huyện Thanh Trì', 'Huyện', 1),
(21, 'Quận Bắc Từ Liêm', 'Quận', 1),
(24, 'Thành phố Hà Giang', 'Thành phố', 2),
(26, 'Huyện Đồng Văn', 'Huyện', 2),
(27, 'Huyện Mèo Vạc', 'Huyện', 2),
(28, 'Huyện Yên Minh', 'Huyện', 2),
(29, 'Huyện Quản Bạ', 'Huyện', 2),
(30, 'Huyện Vị Xuyên', 'Huyện', 2),
(31, 'Huyện Bắc Mê', 'Huyện', 2),
(32, 'Huyện Hoàng Su Phì', 'Huyện', 2),
(33, 'Huyện Xín Mần', 'Huyện', 2),
(34, 'Huyện Bắc Quang', 'Huyện', 2),
(35, 'Huyện Quang Bình', 'Huyện', 2),
(40, 'Thành phố Cao Bằng', 'Thành phố', 4),
(42, 'Huyện Bảo Lâm', 'Huyện', 4),
(43, 'Huyện Bảo Lạc', 'Huyện', 4),
(44, 'Huyện Thông Nông', 'Huyện', 4),
(45, 'Huyện Hà Quảng', 'Huyện', 4),
(46, 'Huyện Trà Lĩnh', 'Huyện', 4),
(47, 'Huyện Trùng Khánh', 'Huyện', 4),
(48, 'Huyện Hạ Lang', 'Huyện', 4),
(49, 'Huyện Quảng Uyên', 'Huyện', 4),
(50, 'Huyện Phục Hoà', 'Huyện', 4),
(51, 'Huyện Hoà An', 'Huyện', 4),
(52, 'Huyện Nguyên Bình', 'Huyện', 4),
(53, 'Huyện Thạch An', 'Huyện', 4),
(58, 'Thành Phố Bắc Kạn', 'Thành phố', 6),
(60, 'Huyện Pác Nặm', 'Huyện', 6),
(61, 'Huyện Ba Bể', 'Huyện', 6),
(62, 'Huyện Ngân Sơn', 'Huyện', 6),
(63, 'Huyện Bạch Thông', 'Huyện', 6),
(64, 'Huyện Chợ Đồn', 'Huyện', 6),
(65, 'Huyện Chợ Mới', 'Huyện', 6),
(66, 'Huyện Na Rì', 'Huyện', 6),
(70, 'Thành phố Tuyên Quang', 'Thành phố', 8),
(71, 'Huyện Lâm Bình', 'Huyện', 8),
(72, 'Huyện Nà Hang', 'Huyện', 8),
(73, 'Huyện Chiêm Hóa', 'Huyện', 8),
(74, 'Huyện Hàm Yên', 'Huyện', 8),
(75, 'Huyện Yên Sơn', 'Huyện', 8),
(76, 'Huyện Sơn Dương', 'Huyện', 8),
(80, 'Thành phố Lào Cai', 'Thành phố', 10),
(82, 'Huyện Bát Xát', 'Huyện', 10),
(83, 'Huyện Mường Khương', 'Huyện', 10),
(84, 'Huyện Si Ma Cai', 'Huyện', 10),
(85, 'Huyện Bắc Hà', 'Huyện', 10),
(86, 'Huyện Bảo Thắng', 'Huyện', 10),
(87, 'Huyện Bảo Yên', 'Huyện', 10),
(88, 'Huyện Sa Pa', 'Huyện', 10),
(89, 'Huyện Văn Bàn', 'Huyện', 10),
(94, 'Thành phố Điện Biên Phủ', 'Thành phố', 11),
(95, 'Thị Xã Mường Lay', 'Thị xã', 11),
(96, 'Huyện Mường Nhé', 'Huyện', 11),
(97, 'Huyện Mường Chà', 'Huyện', 11),
(98, 'Huyện Tủa Chùa', 'Huyện', 11),
(99, 'Huyện Tuần Giáo', 'Huyện', 11),
(100, 'Huyện Điện Biên', 'Huyện', 11),
(101, 'Huyện Điện Biên Đông', 'Huyện', 11),
(102, 'Huyện Mường Ảng', 'Huyện', 11),
(103, 'Huyện Nậm Pồ', 'Huyện', 11),
(105, 'Thành phố Lai Châu', 'Thành phố', 12),
(106, 'Huyện Tam Đường', 'Huyện', 12),
(107, 'Huyện Mường Tè', 'Huyện', 12),
(108, 'Huyện Sìn Hồ', 'Huyện', 12),
(109, 'Huyện Phong Thổ', 'Huyện', 12),
(110, 'Huyện Than Uyên', 'Huyện', 12),
(111, 'Huyện Tân Uyên', 'Huyện', 12),
(112, 'Huyện Nậm Nhùn', 'Huyện', 12),
(116, 'Thành phố Sơn La', 'Thành phố', 14),
(118, 'Huyện Quỳnh Nhai', 'Huyện', 14),
(119, 'Huyện Thuận Châu', 'Huyện', 14),
(120, 'Huyện Mường La', 'Huyện', 14),
(121, 'Huyện Bắc Yên', 'Huyện', 14),
(122, 'Huyện Phù Yên', 'Huyện', 14),
(123, 'Huyện Mộc Châu', 'Huyện', 14),
(124, 'Huyện Yên Châu', 'Huyện', 14),
(125, 'Huyện Mai Sơn', 'Huyện', 14),
(126, 'Huyện Sông Mã', 'Huyện', 14),
(127, 'Huyện Sốp Cộp', 'Huyện', 14),
(128, 'Huyện Vân Hồ', 'Huyện', 14),
(132, 'Thành phố Yên Bái', 'Thành phố', 15),
(133, 'Thị xã Nghĩa Lộ', 'Thị xã', 15),
(135, 'Huyện Lục Yên', 'Huyện', 15),
(136, 'Huyện Văn Yên', 'Huyện', 15),
(137, 'Huyện Mù Căng Chải', 'Huyện', 15),
(138, 'Huyện Trấn Yên', 'Huyện', 15),
(139, 'Huyện Trạm Tấu', 'Huyện', 15),
(140, 'Huyện Văn Chấn', 'Huyện', 15),
(141, 'Huyện Yên Bình', 'Huyện', 15),
(148, 'Thành phố Hòa Bình', 'Thành phố', 17),
(150, 'Huyện Đà Bắc', 'Huyện', 17),
(151, 'Huyện Kỳ Sơn', 'Huyện', 17),
(152, 'Huyện Lương Sơn', 'Huyện', 17),
(153, 'Huyện Kim Bôi', 'Huyện', 17),
(154, 'Huyện Cao Phong', 'Huyện', 17),
(155, 'Huyện Tân Lạc', 'Huyện', 17),
(156, 'Huyện Mai Châu', 'Huyện', 17),
(157, 'Huyện Lạc Sơn', 'Huyện', 17),
(158, 'Huyện Yên Thủy', 'Huyện', 17),
(159, 'Huyện Lạc Thủy', 'Huyện', 17),
(164, 'Thành phố Thái Nguyên', 'Thành phố', 19),
(165, 'Thành phố Sông Công', 'Thành phố', 19),
(167, 'Huyện Định Hóa', 'Huyện', 19),
(168, 'Huyện Phú Lương', 'Huyện', 19),
(169, 'Huyện Đồng Hỷ', 'Huyện', 19),
(170, 'Huyện Võ Nhai', 'Huyện', 19),
(171, 'Huyện Đại Từ', 'Huyện', 19),
(172, 'Thị xã Phổ Yên', 'Thị xã', 19),
(173, 'Huyện Phú Bình', 'Huyện', 19),
(178, 'Thành phố Lạng Sơn', 'Thành phố', 20),
(180, 'Huyện Tràng Định', 'Huyện', 20),
(181, 'Huyện Bình Gia', 'Huyện', 20),
(182, 'Huyện Văn Lãng', 'Huyện', 20),
(183, 'Huyện Cao Lộc', 'Huyện', 20),
(184, 'Huyện Văn Quan', 'Huyện', 20),
(185, 'Huyện Bắc Sơn', 'Huyện', 20),
(186, 'Huyện Hữu Lũng', 'Huyện', 20),
(187, 'Huyện Chi Lăng', 'Huyện', 20),
(188, 'Huyện Lộc Bình', 'Huyện', 20),
(189, 'Huyện Đình Lập', 'Huyện', 20),
(193, 'Thành phố Hạ Long', 'Thành phố', 22),
(194, 'Thành phố Móng Cái', 'Thành phố', 22),
(195, 'Thành phố Cẩm Phả', 'Thành phố', 22),
(196, 'Thành phố Uông Bí', 'Thành phố', 22),
(198, 'Huyện Bình Liêu', 'Huyện', 22),
(199, 'Huyện Tiên Yên', 'Huyện', 22),
(200, 'Huyện Đầm Hà', 'Huyện', 22),
(201, 'Huyện Hải Hà', 'Huyện', 22),
(202, 'Huyện Ba Chẽ', 'Huyện', 22),
(203, 'Huyện Vân Đồn', 'Huyện', 22),
(204, 'Huyện Hoành Bồ', 'Huyện', 22),
(205, 'Thị xã Đông Triều', 'Thị xã', 22),
(206, 'Thị xã Quảng Yên', 'Thị xã', 22),
(207, 'Huyện Cô Tô', 'Huyện', 22),
(213, 'Thành phố Bắc Giang', 'Thành phố', 24),
(215, 'Huyện Yên Thế', 'Huyện', 24),
(216, 'Huyện Tân Yên', 'Huyện', 24),
(217, 'Huyện Lạng Giang', 'Huyện', 24),
(218, 'Huyện Lục Nam', 'Huyện', 24),
(219, 'Huyện Lục Ngạn', 'Huyện', 24),
(220, 'Huyện Sơn Động', 'Huyện', 24),
(221, 'Huyện Yên Dũng', 'Huyện', 24),
(222, 'Huyện Việt Yên', 'Huyện', 24),
(223, 'Huyện Hiệp Hòa', 'Huyện', 24),
(227, 'Thành phố Việt Trì', 'Thành phố', 25),
(228, 'Thị xã Phú Thọ', 'Thị xã', 25),
(230, 'Huyện Đoan Hùng', 'Huyện', 25),
(231, 'Huyện Hạ Hoà', 'Huyện', 25),
(232, 'Huyện Thanh Ba', 'Huyện', 25),
(233, 'Huyện Phù Ninh', 'Huyện', 25),
(234, 'Huyện Yên Lập', 'Huyện', 25),
(235, 'Huyện Cẩm Khê', 'Huyện', 25),
(236, 'Huyện Tam Nông', 'Huyện', 25),
(237, 'Huyện Lâm Thao', 'Huyện', 25),
(238, 'Huyện Thanh Sơn', 'Huyện', 25),
(239, 'Huyện Thanh Thuỷ', 'Huyện', 25),
(240, 'Huyện Tân Sơn', 'Huyện', 25),
(243, 'Thành phố Vĩnh Yên', 'Thành phố', 26),
(244, 'Thị xã Phúc Yên', 'Thị xã', 26),
(246, 'Huyện Lập Thạch', 'Huyện', 26),
(247, 'Huyện Tam Dương', 'Huyện', 26),
(248, 'Huyện Tam Đảo', 'Huyện', 26),
(249, 'Huyện Bình Xuyên', 'Huyện', 26),
(250, 'Huyện Mê Linh', 'Huyện', 1),
(251, 'Huyện Yên Lạc', 'Huyện', 26),
(252, 'Huyện Vĩnh Tường', 'Huyện', 26),
(253, 'Huyện Sông Lô', 'Huyện', 26),
(256, 'Thành phố Bắc Ninh', 'Thành phố', 27),
(258, 'Huyện Yên Phong', 'Huyện', 27),
(259, 'Huyện Quế Võ', 'Huyện', 27),
(260, 'Huyện Tiên Du', 'Huyện', 27),
(261, 'Thị xã Từ Sơn', 'Thị xã', 27),
(262, 'Huyện Thuận Thành', 'Huyện', 27),
(263, 'Huyện Gia Bình', 'Huyện', 27),
(264, 'Huyện Lương Tài', 'Huyện', 27),
(268, 'Quận Hà Đông', 'Quận', 1),
(269, 'Thị xã Sơn Tây', 'Thị xã', 1),
(271, 'Huyện Ba Vì', 'Huyện', 1),
(272, 'Huyện Phúc Thọ', 'Huyện', 1),
(273, 'Huyện Đan Phượng', 'Huyện', 1),
(274, 'Huyện Hoài Đức', 'Huyện', 1),
(275, 'Huyện Quốc Oai', 'Huyện', 1),
(276, 'Huyện Thạch Thất', 'Huyện', 1),
(277, 'Huyện Chương Mỹ', 'Huyện', 1),
(278, 'Huyện Thanh Oai', 'Huyện', 1),
(279, 'Huyện Thường Tín', 'Huyện', 1),
(280, 'Huyện Phú Xuyên', 'Huyện', 1),
(281, 'Huyện Ứng Hòa', 'Huyện', 1),
(282, 'Huyện Mỹ Đức', 'Huyện', 1),
(288, 'Thành phố Hải Dương', 'Thành phố', 30),
(290, 'Thị xã Chí Linh', 'Thị xã', 30),
(291, 'Huyện Nam Sách', 'Huyện', 30),
(292, 'Huyện Kinh Môn', 'Huyện', 30),
(293, 'Huyện Kim Thành', 'Huyện', 30),
(294, 'Huyện Thanh Hà', 'Huyện', 30),
(295, 'Huyện Cẩm Giàng', 'Huyện', 30),
(296, 'Huyện Bình Giang', 'Huyện', 30),
(297, 'Huyện Gia Lộc', 'Huyện', 30),
(298, 'Huyện Tứ Kỳ', 'Huyện', 30),
(299, 'Huyện Ninh Giang', 'Huyện', 30),
(300, 'Huyện Thanh Miện', 'Huyện', 30),
(303, 'Quận Hồng Bàng', 'Quận', 31),
(304, 'Quận Ngô Quyền', 'Quận', 31),
(305, 'Quận Lê Chân', 'Quận', 31),
(306, 'Quận Hải An', 'Quận', 31),
(307, 'Quận Kiến An', 'Quận', 31),
(308, 'Quận Đồ Sơn', 'Quận', 31),
(309, 'Quận Dương Kinh', 'Quận', 31),
(311, 'Huyện Thuỷ Nguyên', 'Huyện', 31),
(312, 'Huyện An Dương', 'Huyện', 31),
(313, 'Huyện An Lão', 'Huyện', 31),
(314, 'Huyện Kiến Thuỵ', 'Huyện', 31),
(315, 'Huyện Tiên Lãng', 'Huyện', 31),
(316, 'Huyện Vĩnh Bảo', 'Huyện', 31),
(317, 'Huyện Cát Hải', 'Huyện', 31),
(318, 'Huyện Bạch Long Vĩ', 'Huyện', 31),
(323, 'Thành phố Hưng Yên', 'Thành phố', 33),
(325, 'Huyện Văn Lâm', 'Huyện', 33),
(326, 'Huyện Văn Giang', 'Huyện', 33),
(327, 'Huyện Yên Mỹ', 'Huyện', 33),
(328, 'Huyện Mỹ Hào', 'Huyện', 33),
(329, 'Huyện Ân Thi', 'Huyện', 33),
(330, 'Huyện Khoái Châu', 'Huyện', 33),
(331, 'Huyện Kim Động', 'Huyện', 33),
(332, 'Huyện Tiên Lữ', 'Huyện', 33),
(333, 'Huyện Phù Cừ', 'Huyện', 33),
(336, 'Thành phố Thái Bình', 'Thành phố', 34),
(338, 'Huyện Quỳnh Phụ', 'Huyện', 34),
(339, 'Huyện Hưng Hà', 'Huyện', 34),
(340, 'Huyện Đông Hưng', 'Huyện', 34),
(341, 'Huyện Thái Thụy', 'Huyện', 34),
(342, 'Huyện Tiền Hải', 'Huyện', 34),
(343, 'Huyện Kiến Xương', 'Huyện', 34),
(344, 'Huyện Vũ Thư', 'Huyện', 34),
(347, 'Thành phố Phủ Lý', 'Thành phố', 35),
(349, 'Huyện Duy Tiên', 'Huyện', 35),
(350, 'Huyện Kim Bảng', 'Huyện', 35),
(351, 'Huyện Thanh Liêm', 'Huyện', 35),
(352, 'Huyện Bình Lục', 'Huyện', 35),
(353, 'Huyện Lý Nhân', 'Huyện', 35),
(356, 'Thành phố Nam Định', 'Thành phố', 36),
(358, 'Huyện Mỹ Lộc', 'Huyện', 36),
(359, 'Huyện Vụ Bản', 'Huyện', 36),
(360, 'Huyện Ý Yên', 'Huyện', 36),
(361, 'Huyện Nghĩa Hưng', 'Huyện', 36),
(362, 'Huyện Nam Trực', 'Huyện', 36),
(363, 'Huyện Trực Ninh', 'Huyện', 36),
(364, 'Huyện Xuân Trường', 'Huyện', 36),
(365, 'Huyện Giao Thủy', 'Huyện', 36),
(366, 'Huyện Hải Hậu', 'Huyện', 36),
(369, 'Thành phố Ninh Bình', 'Thành phố', 37),
(370, 'Thành phố Tam Điệp', 'Thành phố', 37),
(372, 'Huyện Nho Quan', 'Huyện', 37),
(373, 'Huyện Gia Viễn', 'Huyện', 37),
(374, 'Huyện Hoa Lư', 'Huyện', 37),
(375, 'Huyện Yên Khánh', 'Huyện', 37),
(376, 'Huyện Kim Sơn', 'Huyện', 37),
(377, 'Huyện Yên Mô', 'Huyện', 37),
(380, 'Thành phố Thanh Hóa', 'Thành phố', 38),
(381, 'Thị xã Bỉm Sơn', 'Thị xã', 38),
(382, 'Thị xã Sầm Sơn', 'Thị xã', 38),
(384, 'Huyện Mường Lát', 'Huyện', 38),
(385, 'Huyện Quan Hóa', 'Huyện', 38),
(386, 'Huyện Bá Thước', 'Huyện', 38),
(387, 'Huyện Quan Sơn', 'Huyện', 38),
(388, 'Huyện Lang Chánh', 'Huyện', 38),
(389, 'Huyện Ngọc Lặc', 'Huyện', 38),
(390, 'Huyện Cẩm Thủy', 'Huyện', 38),
(391, 'Huyện Thạch Thành', 'Huyện', 38),
(392, 'Huyện Hà Trung', 'Huyện', 38),
(393, 'Huyện Vĩnh Lộc', 'Huyện', 38),
(394, 'Huyện Yên Định', 'Huyện', 38),
(395, 'Huyện Thọ Xuân', 'Huyện', 38),
(396, 'Huyện Thường Xuân', 'Huyện', 38),
(397, 'Huyện Triệu Sơn', 'Huyện', 38),
(398, 'Huyện Thiệu Hóa', 'Huyện', 38),
(399, 'Huyện Hoằng Hóa', 'Huyện', 38),
(400, 'Huyện Hậu Lộc', 'Huyện', 38),
(401, 'Huyện Nga Sơn', 'Huyện', 38),
(402, 'Huyện Như Xuân', 'Huyện', 38),
(403, 'Huyện Như Thanh', 'Huyện', 38),
(404, 'Huyện Nông Cống', 'Huyện', 38),
(405, 'Huyện Đông Sơn', 'Huyện', 38),
(406, 'Huyện Quảng Xương', 'Huyện', 38),
(407, 'Huyện Tĩnh Gia', 'Huyện', 38),
(412, 'Thành phố Vinh', 'Thành phố', 40),
(413, 'Thị xã Cửa Lò', 'Thị xã', 40),
(414, 'Thị xã Thái Hoà', 'Thị xã', 40),
(415, 'Huyện Quế Phong', 'Huyện', 40),
(416, 'Huyện Quỳ Châu', 'Huyện', 40),
(417, 'Huyện Kỳ Sơn', 'Huyện', 40),
(418, 'Huyện Tương Dương', 'Huyện', 40),
(419, 'Huyện Nghĩa Đàn', 'Huyện', 40),
(420, 'Huyện Quỳ Hợp', 'Huyện', 40),
(421, 'Huyện Quỳnh Lưu', 'Huyện', 40),
(422, 'Huyện Con Cuông', 'Huyện', 40),
(423, 'Huyện Tân Kỳ', 'Huyện', 40),
(424, 'Huyện Anh Sơn', 'Huyện', 40),
(425, 'Huyện Diễn Châu', 'Huyện', 40),
(426, 'Huyện Yên Thành', 'Huyện', 40),
(427, 'Huyện Đô Lương', 'Huyện', 40),
(428, 'Huyện Thanh Chương', 'Huyện', 40),
(429, 'Huyện Nghi Lộc', 'Huyện', 40),
(430, 'Huyện Nam Đàn', 'Huyện', 40),
(431, 'Huyện Hưng Nguyên', 'Huyện', 40),
(432, 'Thị xã Hoàng Mai', 'Thị xã', 40),
(436, 'Thành phố Hà Tĩnh', 'Thành phố', 42),
(437, 'Thị xã Hồng Lĩnh', 'Thị xã', 42),
(439, 'Huyện Hương Sơn', 'Huyện', 42),
(440, 'Huyện Đức Thọ', 'Huyện', 42),
(441, 'Huyện Vũ Quang', 'Huyện', 42),
(442, 'Huyện Nghi Xuân', 'Huyện', 42),
(443, 'Huyện Can Lộc', 'Huyện', 42),
(444, 'Huyện Hương Khê', 'Huyện', 42),
(445, 'Huyện Thạch Hà', 'Huyện', 42),
(446, 'Huyện Cẩm Xuyên', 'Huyện', 42),
(447, 'Huyện Kỳ Anh', 'Huyện', 42),
(448, 'Huyện Lộc Hà', 'Huyện', 42),
(449, 'Thị xã Kỳ Anh', 'Thị xã', 42),
(450, 'Thành Phố Đồng Hới', 'Thành phố', 44),
(452, 'Huyện Minh Hóa', 'Huyện', 44),
(453, 'Huyện Tuyên Hóa', 'Huyện', 44),
(454, 'Huyện Quảng Trạch', 'Thị xã', 44),
(455, 'Huyện Bố Trạch', 'Huyện', 44),
(456, 'Huyện Quảng Ninh', 'Huyện', 44),
(457, 'Huyện Lệ Thủy', 'Huyện', 44),
(458, 'Thị xã Ba Đồn', 'Huyện', 44),
(461, 'Thành phố Đông Hà', 'Thành phố', 45),
(462, 'Thị xã Quảng Trị', 'Thị xã', 45),
(464, 'Huyện Vĩnh Linh', 'Huyện', 45),
(465, 'Huyện Hướng Hóa', 'Huyện', 45),
(466, 'Huyện Gio Linh', 'Huyện', 45),
(467, 'Huyện Đa Krông', 'Huyện', 45),
(468, 'Huyện Cam Lộ', 'Huyện', 45),
(469, 'Huyện Triệu Phong', 'Huyện', 45),
(470, 'Huyện Hải Lăng', 'Huyện', 45),
(471, 'Huyện Cồn Cỏ', 'Huyện', 45),
(474, 'Thành phố Huế', 'Thành phố', 46),
(476, 'Huyện Phong Điền', 'Huyện', 46),
(477, 'Huyện Quảng Điền', 'Huyện', 46),
(478, 'Huyện Phú Vang', 'Huyện', 46),
(479, 'Thị xã Hương Thủy', 'Thị xã', 46),
(480, 'Thị xã Hương Trà', 'Thị xã', 46),
(481, 'Huyện A Lưới', 'Huyện', 46),
(482, 'Huyện Phú Lộc', 'Huyện', 46),
(483, 'Huyện Nam Đông', 'Huyện', 46),
(490, 'Quận Liên Chiểu', 'Quận', 48),
(491, 'Quận Thanh Khê', 'Quận', 48),
(492, 'Quận Hải Châu', 'Quận', 48),
(493, 'Quận Sơn Trà', 'Quận', 48),
(494, 'Quận Ngũ Hành Sơn', 'Quận', 48),
(495, 'Quận Cẩm Lệ', 'Quận', 48),
(497, 'Huyện Hòa Vang', 'Huyện', 48),
(498, 'Huyện Hoàng Sa', 'Huyện', 48),
(502, 'Thành phố Tam Kỳ', 'Thành phố', 49),
(503, 'Thành phố Hội An', 'Thành phố', 49),
(504, 'Huyện Tây Giang', 'Huyện', 49),
(505, 'Huyện Đông Giang', 'Huyện', 49),
(506, 'Huyện Đại Lộc', 'Huyện', 49),
(507, 'Thị xã Điện Bàn', 'Thị xã', 49),
(508, 'Huyện Duy Xuyên', 'Huyện', 49),
(509, 'Huyện Quế Sơn', 'Huyện', 49),
(510, 'Huyện Nam Giang', 'Huyện', 49),
(511, 'Huyện Phước Sơn', 'Huyện', 49),
(512, 'Huyện Hiệp Đức', 'Huyện', 49),
(513, 'Huyện Thăng Bình', 'Huyện', 49),
(514, 'Huyện Tiên Phước', 'Huyện', 49),
(515, 'Huyện Bắc Trà My', 'Huyện', 49),
(516, 'Huyện Nam Trà My', 'Huyện', 49),
(517, 'Huyện Núi Thành', 'Huyện', 49),
(518, 'Huyện Phú Ninh', 'Huyện', 49),
(519, 'Huyện Nông Sơn', 'Huyện', 49),
(522, 'Thành phố Quảng Ngãi', 'Thành phố', 51),
(524, 'Huyện Bình Sơn', 'Huyện', 51),
(525, 'Huyện Trà Bồng', 'Huyện', 51),
(526, 'Huyện Tây Trà', 'Huyện', 51),
(527, 'Huyện Sơn Tịnh', 'Huyện', 51),
(528, 'Huyện Tư Nghĩa', 'Huyện', 51),
(529, 'Huyện Sơn Hà', 'Huyện', 51),
(530, 'Huyện Sơn Tây', 'Huyện', 51),
(531, 'Huyện Minh Long', 'Huyện', 51),
(532, 'Huyện Nghĩa Hành', 'Huyện', 51),
(533, 'Huyện Mộ Đức', 'Huyện', 51),
(534, 'Huyện Đức Phổ', 'Huyện', 51),
(535, 'Huyện Ba Tơ', 'Huyện', 51),
(536, 'Huyện Lý Sơn', 'Huyện', 51),
(540, 'Thành phố Qui Nhơn', 'Thành phố', 52),
(542, 'Huyện An Lão', 'Huyện', 52),
(543, 'Huyện Hoài Nhơn', 'Huyện', 52),
(544, 'Huyện Hoài Ân', 'Huyện', 52),
(545, 'Huyện Phù Mỹ', 'Huyện', 52),
(546, 'Huyện Vĩnh Thạnh', 'Huyện', 52),
(547, 'Huyện Tây Sơn', 'Huyện', 52),
(548, 'Huyện Phù Cát', 'Huyện', 52),
(549, 'Thị xã An Nhơn', 'Thị xã', 52),
(550, 'Huyện Tuy Phước', 'Huyện', 52),
(551, 'Huyện Vân Canh', 'Huyện', 52),
(555, 'Thành phố Tuy Hoà', 'Thành phố', 54),
(557, 'Thị xã Sông Cầu', 'Thị xã', 54),
(558, 'Huyện Đồng Xuân', 'Huyện', 54),
(559, 'Huyện Tuy An', 'Huyện', 54),
(560, 'Huyện Sơn Hòa', 'Huyện', 54),
(561, 'Huyện Sông Hinh', 'Huyện', 54),
(562, 'Huyện Tây Hoà', 'Huyện', 54),
(563, 'Huyện Phú Hoà', 'Huyện', 54),
(564, 'Huyện Đông Hòa', 'Huyện', 54),
(568, 'Thành phố Nha Trang', 'Thành phố', 56),
(569, 'Thành phố Cam Ranh', 'Thành phố', 56),
(570, 'Huyện Cam Lâm', 'Huyện', 56),
(571, 'Huyện Vạn Ninh', 'Huyện', 56),
(572, 'Thị xã Ninh Hòa', 'Thị xã', 56),
(573, 'Huyện Khánh Vĩnh', 'Huyện', 56),
(574, 'Huyện Diên Khánh', 'Huyện', 56),
(575, 'Huyện Khánh Sơn', 'Huyện', 56),
(576, 'Huyện Trường Sa', 'Huyện', 56),
(582, 'Thành phố Phan Rang-Tháp Chàm', 'Thành phố', 58),
(584, 'Huyện Bác Ái', 'Huyện', 58),
(585, 'Huyện Ninh Sơn', 'Huyện', 58),
(586, 'Huyện Ninh Hải', 'Huyện', 58),
(587, 'Huyện Ninh Phước', 'Huyện', 58),
(588, 'Huyện Thuận Bắc', 'Huyện', 58),
(589, 'Huyện Thuận Nam', 'Huyện', 58),
(593, 'Thành phố Phan Thiết', 'Thành phố', 60),
(594, 'Thị xã La Gi', 'Thị xã', 60),
(595, 'Huyện Tuy Phong', 'Huyện', 60),
(596, 'Huyện Bắc Bình', 'Huyện', 60),
(597, 'Huyện Hàm Thuận Bắc', 'Huyện', 60),
(598, 'Huyện Hàm Thuận Nam', 'Huyện', 60),
(599, 'Huyện Tánh Linh', 'Huyện', 60),
(600, 'Huyện Đức Linh', 'Huyện', 60),
(601, 'Huyện Hàm Tân', 'Huyện', 60),
(602, 'Huyện Phú Quí', 'Huyện', 60),
(608, 'Thành phố Kon Tum', 'Thành phố', 62),
(610, 'Huyện Đắk Glei', 'Huyện', 62),
(611, 'Huyện Ngọc Hồi', 'Huyện', 62),
(612, 'Huyện Đắk Tô', 'Huyện', 62),
(613, 'Huyện Kon Plông', 'Huyện', 62),
(614, 'Huyện Kon Rẫy', 'Huyện', 62),
(615, 'Huyện Đắk Hà', 'Huyện', 62),
(616, 'Huyện Sa Thầy', 'Huyện', 62),
(617, 'Huyện Tu Mơ Rông', 'Huyện', 62),
(618, 'Huyện Ia H\' Drai', 'Huyện', 62),
(622, 'Thành phố Pleiku', 'Thành phố', 64),
(623, 'Thị xã An Khê', 'Thị xã', 64),
(624, 'Thị xã Ayun Pa', 'Thị xã', 64),
(625, 'Huyện KBang', 'Huyện', 64),
(626, 'Huyện Đăk Đoa', 'Huyện', 64),
(627, 'Huyện Chư Păh', 'Huyện', 64),
(628, 'Huyện Ia Grai', 'Huyện', 64),
(629, 'Huyện Mang Yang', 'Huyện', 64),
(630, 'Huyện Kông Chro', 'Huyện', 64),
(631, 'Huyện Đức Cơ', 'Huyện', 64),
(632, 'Huyện Chư Prông', 'Huyện', 64),
(633, 'Huyện Chư Sê', 'Huyện', 64),
(634, 'Huyện Đăk Pơ', 'Huyện', 64),
(635, 'Huyện Ia Pa', 'Huyện', 64),
(637, 'Huyện Krông Pa', 'Huyện', 64),
(638, 'Huyện Phú Thiện', 'Huyện', 64),
(639, 'Huyện Chư Pưh', 'Huyện', 64),
(643, 'Thành phố Buôn Ma Thuột', 'Thành phố', 66),
(644, 'Thị Xã Buôn Hồ', 'Thị xã', 66),
(645, 'Huyện Ea H\'leo', 'Huyện', 66),
(646, 'Huyện Ea Súp', 'Huyện', 66),
(647, 'Huyện Buôn Đôn', 'Huyện', 66),
(648, 'Huyện Cư M\'gar', 'Huyện', 66),
(649, 'Huyện Krông Búk', 'Huyện', 66),
(650, 'Huyện Krông Năng', 'Huyện', 66),
(651, 'Huyện Ea Kar', 'Huyện', 66),
(652, 'Huyện M\'Đrắk', 'Huyện', 66),
(653, 'Huyện Krông Bông', 'Huyện', 66),
(654, 'Huyện Krông Pắc', 'Huyện', 66),
(655, 'Huyện Krông A Na', 'Huyện', 66),
(656, 'Huyện Lắk', 'Huyện', 66),
(657, 'Huyện Cư Kuin', 'Huyện', 66),
(660, 'Thị xã Gia Nghĩa', 'Thị xã', 67),
(661, 'Huyện Đăk Glong', 'Huyện', 67),
(662, 'Huyện Cư Jút', 'Huyện', 67),
(663, 'Huyện Đắk Mil', 'Huyện', 67),
(664, 'Huyện Krông Nô', 'Huyện', 67),
(665, 'Huyện Đắk Song', 'Huyện', 67),
(666, 'Huyện Đắk R Lấp', 'Huyện', 67),
(667, 'Huyện Tuy Đức', 'Huyện', 67),
(672, 'Thành phố Đà Lạt', 'Thành phố', 68),
(673, 'Thành phố Bảo Lộc', 'Thành phố', 68),
(674, 'Huyện Đam Rông', 'Huyện', 68),
(675, 'Huyện Lạc Dương', 'Huyện', 68),
(676, 'Huyện Lâm Hà', 'Huyện', 68),
(677, 'Huyện Đơn Dương', 'Huyện', 68),
(678, 'Huyện Đức Trọng', 'Huyện', 68),
(679, 'Huyện Di Linh', 'Huyện', 68),
(680, 'Huyện Bảo Lâm', 'Huyện', 68),
(681, 'Huyện Đạ Huoai', 'Huyện', 68),
(682, 'Huyện Đạ Tẻh', 'Huyện', 68),
(683, 'Huyện Cát Tiên', 'Huyện', 68),
(688, 'Thị xã Phước Long', 'Thị xã', 70),
(689, 'Thị xã Đồng Xoài', 'Thị xã', 70),
(690, 'Thị xã Bình Long', 'Thị xã', 70),
(691, 'Huyện Bù Gia Mập', 'Huyện', 70),
(692, 'Huyện Lộc Ninh', 'Huyện', 70),
(693, 'Huyện Bù Đốp', 'Huyện', 70),
(694, 'Huyện Hớn Quản', 'Huyện', 70),
(695, 'Huyện Đồng Phú', 'Huyện', 70),
(696, 'Huyện Bù Đăng', 'Huyện', 70),
(697, 'Huyện Chơn Thành', 'Huyện', 70),
(698, 'Huyện Phú Riềng', 'Huyện', 70),
(703, 'Thành phố Tây Ninh', 'Thành phố', 72),
(705, 'Huyện Tân Biên', 'Huyện', 72),
(706, 'Huyện Tân Châu', 'Huyện', 72),
(707, 'Huyện Dương Minh Châu', 'Huyện', 72),
(708, 'Huyện Châu Thành', 'Huyện', 72),
(709, 'Huyện Hòa Thành', 'Huyện', 72),
(710, 'Huyện Gò Dầu', 'Huyện', 72),
(711, 'Huyện Bến Cầu', 'Huyện', 72),
(712, 'Huyện Trảng Bàng', 'Huyện', 72),
(718, 'Thành phố Thủ Dầu Một', 'Thành phố', 74),
(719, 'Huyện Bàu Bàng', 'Huyện', 74),
(720, 'Huyện Dầu Tiếng', 'Huyện', 74),
(721, 'Thị xã Bến Cát', 'Thị xã', 74),
(722, 'Huyện Phú Giáo', 'Huyện', 74),
(723, 'Thị xã Tân Uyên', 'Thị xã', 74),
(724, 'Thị xã Dĩ An', 'Thị xã', 74),
(725, 'Thị xã Thuận An', 'Thị xã', 74),
(726, 'Huyện Bắc Tân Uyên', 'Huyện', 74),
(731, 'Thành phố Biên Hòa', 'Thành phố', 75),
(732, 'Thị xã Long Khánh', 'Thị xã', 75),
(734, 'Huyện Tân Phú', 'Huyện', 75),
(735, 'Huyện Vĩnh Cửu', 'Huyện', 75),
(736, 'Huyện Định Quán', 'Huyện', 75),
(737, 'Huyện Trảng Bom', 'Huyện', 75),
(738, 'Huyện Thống Nhất', 'Huyện', 75),
(739, 'Huyện Cẩm Mỹ', 'Huyện', 75),
(740, 'Huyện Long Thành', 'Huyện', 75),
(741, 'Huyện Xuân Lộc', 'Huyện', 75),
(742, 'Huyện Nhơn Trạch', 'Huyện', 75),
(747, 'Thành phố Vũng Tàu', 'Thành phố', 77),
(748, 'Thành phố Bà Rịa', 'Thành phố', 77),
(750, 'Huyện Châu Đức', 'Huyện', 77),
(751, 'Huyện Xuyên Mộc', 'Huyện', 77),
(752, 'Huyện Long Điền', 'Huyện', 77),
(753, 'Huyện Đất Đỏ', 'Huyện', 77),
(754, 'Huyện Tân Thành', 'Huyện', 77),
(755, 'Huyện Côn Đảo', 'Huyện', 77),
(760, 'Quận 1', 'Quận', 79),
(761, 'Quận 12', 'Quận', 79),
(762, 'Quận Thủ Đức', 'Quận', 79),
(763, 'Quận 9', 'Quận', 79),
(764, 'Quận Gò Vấp', 'Quận', 79),
(765, 'Quận Bình Thạnh', 'Quận', 79),
(766, 'Quận Tân Bình', 'Quận', 79),
(767, 'Quận Tân Phú', 'Quận', 79),
(768, 'Quận Phú Nhuận', 'Quận', 79),
(769, 'Quận 2', 'Quận', 79),
(770, 'Quận 3', 'Quận', 79),
(771, 'Quận 10', 'Quận', 79),
(772, 'Quận 11', 'Quận', 79),
(773, 'Quận 4', 'Quận', 79),
(774, 'Quận 5', 'Quận', 79),
(775, 'Quận 6', 'Quận', 79),
(776, 'Quận 8', 'Quận', 79),
(777, 'Quận Bình Tân', 'Quận', 79),
(778, 'Quận 7', 'Quận', 79),
(783, 'Huyện Củ Chi', 'Huyện', 79),
(784, 'Huyện Hóc Môn', 'Huyện', 79),
(785, 'Huyện Bình Chánh', 'Huyện', 79),
(786, 'Huyện Nhà Bè', 'Huyện', 79),
(787, 'Huyện Cần Giờ', 'Huyện', 79),
(794, 'Thành phố Tân An', 'Thành phố', 80),
(795, 'Thị xã Kiến Tường', 'Thị xã', 80),
(796, 'Huyện Tân Hưng', 'Huyện', 80),
(797, 'Huyện Vĩnh Hưng', 'Huyện', 80),
(798, 'Huyện Mộc Hóa', 'Huyện', 80),
(799, 'Huyện Tân Thạnh', 'Huyện', 80),
(800, 'Huyện Thạnh Hóa', 'Huyện', 80),
(801, 'Huyện Đức Huệ', 'Huyện', 80),
(802, 'Huyện Đức Hòa', 'Huyện', 80),
(803, 'Huyện Bến Lức', 'Huyện', 80),
(804, 'Huyện Thủ Thừa', 'Huyện', 80),
(805, 'Huyện Tân Trụ', 'Huyện', 80),
(806, 'Huyện Cần Đước', 'Huyện', 80),
(807, 'Huyện Cần Giuộc', 'Huyện', 80),
(808, 'Huyện Châu Thành', 'Huyện', 80),
(815, 'Thành phố Mỹ Tho', 'Thành phố', 82),
(816, 'Thị xã Gò Công', 'Thị xã', 82),
(817, 'Thị xã Cai Lậy', 'Huyện', 82),
(818, 'Huyện Tân Phước', 'Huyện', 82),
(819, 'Huyện Cái Bè', 'Huyện', 82),
(820, 'Huyện Cai Lậy', 'Thị xã', 82),
(821, 'Huyện Châu Thành', 'Huyện', 82),
(822, 'Huyện Chợ Gạo', 'Huyện', 82),
(823, 'Huyện Gò Công Tây', 'Huyện', 82),
(824, 'Huyện Gò Công Đông', 'Huyện', 82),
(825, 'Huyện Tân Phú Đông', 'Huyện', 82),
(829, 'Thành phố Bến Tre', 'Thành phố', 83),
(831, 'Huyện Châu Thành', 'Huyện', 83),
(832, 'Huyện Chợ Lách', 'Huyện', 83),
(833, 'Huyện Mỏ Cày Nam', 'Huyện', 83),
(834, 'Huyện Giồng Trôm', 'Huyện', 83),
(835, 'Huyện Bình Đại', 'Huyện', 83),
(836, 'Huyện Ba Tri', 'Huyện', 83),
(837, 'Huyện Thạnh Phú', 'Huyện', 83),
(838, 'Huyện Mỏ Cày Bắc', 'Huyện', 83),
(842, 'Thành phố Trà Vinh', 'Thành phố', 84),
(844, 'Huyện Càng Long', 'Huyện', 84),
(845, 'Huyện Cầu Kè', 'Huyện', 84),
(846, 'Huyện Tiểu Cần', 'Huyện', 84),
(847, 'Huyện Châu Thành', 'Huyện', 84),
(848, 'Huyện Cầu Ngang', 'Huyện', 84),
(849, 'Huyện Trà Cú', 'Huyện', 84),
(850, 'Huyện Duyên Hải', 'Huyện', 84),
(851, 'Thị xã Duyên Hải', 'Thị xã', 84),
(855, 'Thành phố Vĩnh Long', 'Thành phố', 86),
(857, 'Huyện Long Hồ', 'Huyện', 86),
(858, 'Huyện Mang Thít', 'Huyện', 86),
(859, 'Huyện  Vũng Liêm', 'Huyện', 86),
(860, 'Huyện Tam Bình', 'Huyện', 86),
(861, 'Thị xã Bình Minh', 'Thị xã', 86),
(862, 'Huyện Trà Ôn', 'Huyện', 86),
(863, 'Huyện Bình Tân', 'Huyện', 86),
(866, 'Thành phố Cao Lãnh', 'Thành phố', 87),
(867, 'Thành phố Sa Đéc', 'Thành phố', 87),
(868, 'Thị xã Hồng Ngự', 'Thị xã', 87),
(869, 'Huyện Tân Hồng', 'Huyện', 87),
(870, 'Huyện Hồng Ngự', 'Huyện', 87),
(871, 'Huyện Tam Nông', 'Huyện', 87),
(872, 'Huyện Tháp Mười', 'Huyện', 87),
(873, 'Huyện Cao Lãnh', 'Huyện', 87),
(874, 'Huyện Thanh Bình', 'Huyện', 87),
(875, 'Huyện Lấp Vò', 'Huyện', 87),
(876, 'Huyện Lai Vung', 'Huyện', 87),
(877, 'Huyện Châu Thành', 'Huyện', 87),
(883, 'Thành phố Long Xuyên', 'Thành phố', 89),
(884, 'Thành phố Châu Đốc', 'Thành phố', 89),
(886, 'Huyện An Phú', 'Huyện', 89),
(887, 'Thị xã Tân Châu', 'Thị xã', 89),
(888, 'Huyện Phú Tân', 'Huyện', 89),
(889, 'Huyện Châu Phú', 'Huyện', 89),
(890, 'Huyện Tịnh Biên', 'Huyện', 89),
(891, 'Huyện Tri Tôn', 'Huyện', 89),
(892, 'Huyện Châu Thành', 'Huyện', 89),
(893, 'Huyện Chợ Mới', 'Huyện', 89),
(894, 'Huyện Thoại Sơn', 'Huyện', 89),
(899, 'Thành phố Rạch Giá', 'Thành phố', 91),
(900, 'Thị xã Hà Tiên', 'Thị xã', 91),
(902, 'Huyện Kiên Lương', 'Huyện', 91),
(903, 'Huyện Hòn Đất', 'Huyện', 91),
(904, 'Huyện Tân Hiệp', 'Huyện', 91),
(905, 'Huyện Châu Thành', 'Huyện', 91),
(906, 'Huyện Giồng Riềng', 'Huyện', 91),
(907, 'Huyện Gò Quao', 'Huyện', 91),
(908, 'Huyện An Biên', 'Huyện', 91),
(909, 'Huyện An Minh', 'Huyện', 91),
(910, 'Huyện Vĩnh Thuận', 'Huyện', 91),
(911, 'Huyện Phú Quốc', 'Huyện', 91),
(912, 'Huyện Kiên Hải', 'Huyện', 91),
(913, 'Huyện U Minh Thượng', 'Huyện', 91),
(914, 'Huyện Giang Thành', 'Huyện', 91),
(916, 'Quận Ninh Kiều', 'Quận', 92),
(917, 'Quận Ô Môn', 'Quận', 92),
(918, 'Quận Bình Thuỷ', 'Quận', 92),
(919, 'Quận Cái Răng', 'Quận', 92),
(923, 'Quận Thốt Nốt', 'Quận', 92),
(924, 'Huyện Vĩnh Thạnh', 'Huyện', 92),
(925, 'Huyện Cờ Đỏ', 'Huyện', 92),
(926, 'Huyện Phong Điền', 'Huyện', 92),
(927, 'Huyện Thới Lai', 'Huyện', 92),
(930, 'Thành phố Vị Thanh', 'Thành phố', 93),
(931, 'Thị xã Ngã Bảy', 'Thị xã', 93),
(932, 'Huyện Châu Thành A', 'Huyện', 93),
(933, 'Huyện Châu Thành', 'Huyện', 93),
(934, 'Huyện Phụng Hiệp', 'Huyện', 93),
(935, 'Huyện Vị Thuỷ', 'Huyện', 93),
(936, 'Huyện Long Mỹ', 'Huyện', 93),
(937, 'Thị xã Long Mỹ', 'Thị xã', 93),
(941, 'Thành phố Sóc Trăng', 'Thành phố', 94),
(942, 'Huyện Châu Thành', 'Huyện', 94),
(943, 'Huyện Kế Sách', 'Huyện', 94),
(944, 'Huyện Mỹ Tú', 'Huyện', 94),
(945, 'Huyện Cù Lao Dung', 'Huyện', 94),
(946, 'Huyện Long Phú', 'Huyện', 94),
(947, 'Huyện Mỹ Xuyên', 'Huyện', 94),
(948, 'Thị xã Ngã Năm', 'Thị xã', 94),
(949, 'Huyện Thạnh Trị', 'Huyện', 94),
(950, 'Thị xã Vĩnh Châu', 'Thị xã', 94),
(951, 'Huyện Trần Đề', 'Huyện', 94),
(954, 'Thành phố Bạc Liêu', 'Thành phố', 95),
(956, 'Huyện Hồng Dân', 'Huyện', 95),
(957, 'Huyện Phước Long', 'Huyện', 95),
(958, 'Huyện Vĩnh Lợi', 'Huyện', 95),
(959, 'Thị xã Giá Rai', 'Thị xã', 95),
(960, 'Huyện Đông Hải', 'Huyện', 95),
(961, 'Huyện Hoà Bình', 'Huyện', 95),
(964, 'Thành phố Cà Mau', 'Thành phố', 96),
(966, 'Huyện U Minh', 'Huyện', 96),
(967, 'Huyện Thới Bình', 'Huyện', 96),
(968, 'Huyện Trần Văn Thời', 'Huyện', 96),
(969, 'Huyện Cái Nước', 'Huyện', 96),
(970, 'Huyện Đầm Dơi', 'Huyện', 96),
(971, 'Huyện Năm Căn', 'Huyện', 96),
(972, 'Huyện Phú Tân', 'Huyện', 96),
(973, 'Huyện Ngọc Hiển', 'Huyện', 96);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_province`
--

CREATE TABLE `db_province` (
  `id` int(5) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `db_province`
--

INSERT INTO `db_province` (`id`, `name`, `type`) VALUES
(1, 'Thành phố Hà Nội', 'Thành phố Trung ương'),
(2, 'Tỉnh Hà Giang', 'Tỉnh'),
(4, 'Tỉnh Cao Bằng', 'Tỉnh'),
(6, 'Tỉnh Bắc Kạn', 'Tỉnh'),
(8, 'Tỉnh Tuyên Quang', 'Tỉnh'),
(10, 'Tỉnh Lào Cai', 'Tỉnh'),
(11, 'Tỉnh Điện Biên', 'Tỉnh'),
(12, 'Tỉnh Lai Châu', 'Tỉnh'),
(14, 'Tỉnh Sơn La', 'Tỉnh'),
(15, 'Tỉnh Yên Bái', 'Tỉnh'),
(17, 'Tỉnh Hoà Bình', 'Tỉnh'),
(19, 'Tỉnh Thái Nguyên', 'Tỉnh'),
(20, 'Tỉnh Lạng Sơn', 'Tỉnh'),
(22, 'Tỉnh Quảng Ninh', 'Tỉnh'),
(24, 'Tỉnh Bắc Giang', 'Tỉnh'),
(25, 'Tỉnh Phú Thọ', 'Tỉnh'),
(26, 'Tỉnh Vĩnh Phúc', 'Tỉnh'),
(27, 'Tỉnh Bắc Ninh', 'Tỉnh'),
(30, 'Tỉnh Hải Dương', 'Tỉnh'),
(31, 'Thành phố Hải Phòng', 'Thành phố Trung ương'),
(33, 'Tỉnh Hưng Yên', 'Tỉnh'),
(34, 'Tỉnh Thái Bình', 'Tỉnh'),
(35, 'Tỉnh Hà Nam', 'Tỉnh'),
(36, 'Tỉnh Nam Định', 'Tỉnh'),
(37, 'Tỉnh Ninh Bình', 'Tỉnh'),
(38, 'Tỉnh Thanh Hóa', 'Tỉnh'),
(40, 'Tỉnh Nghệ An', 'Tỉnh'),
(42, 'Tỉnh Hà Tĩnh', 'Tỉnh'),
(44, 'Tỉnh Quảng Bình', 'Tỉnh'),
(45, 'Tỉnh Quảng Trị', 'Tỉnh'),
(46, 'Tỉnh Thừa Thiên Huế', 'Tỉnh'),
(48, 'Thành phố Đà Nẵng', 'Thành phố Trung ương'),
(49, 'Tỉnh Quảng Nam', 'Tỉnh'),
(51, 'Tỉnh Quảng Ngãi', 'Tỉnh'),
(52, 'Tỉnh Bình Định', 'Tỉnh'),
(54, 'Tỉnh Phú Yên', 'Tỉnh'),
(56, 'Tỉnh Khánh Hòa', 'Tỉnh'),
(58, 'Tỉnh Ninh Thuận', 'Tỉnh'),
(60, 'Tỉnh Bình Thuận', 'Tỉnh'),
(62, 'Tỉnh Kon Tum', 'Tỉnh'),
(64, 'Tỉnh Gia Lai', 'Tỉnh'),
(66, 'Tỉnh Đắk Lắk', 'Tỉnh'),
(67, 'Tỉnh Đắk Nông', 'Tỉnh'),
(68, 'Tỉnh Lâm Đồng', 'Tỉnh'),
(70, 'Tỉnh Bình Phước', 'Tỉnh'),
(72, 'Tỉnh Tây Ninh', 'Tỉnh'),
(74, 'Tỉnh Bình Dương', 'Tỉnh'),
(75, 'Tỉnh Đồng Nai', 'Tỉnh'),
(77, 'Tỉnh Bà Rịa - Vũng Tàu', 'Tỉnh'),
(79, 'Thành phố Hồ Chí Minh', 'Thành phố Trung ương'),
(80, 'Tỉnh Long An', 'Tỉnh'),
(82, 'Tỉnh Tiền Giang', 'Tỉnh'),
(83, 'Tỉnh Bến Tre', 'Tỉnh'),
(84, 'Tỉnh Trà Vinh', 'Tỉnh'),
(86, 'Tỉnh Vĩnh Long', 'Tỉnh'),
(87, 'Tỉnh Đồng Tháp', 'Tỉnh'),
(89, 'Tỉnh An Giang', 'Tỉnh'),
(91, 'Tỉnh Kiên Giang', 'Tỉnh'),
(92, 'Thành phố Cần Thơ', 'Thành phố Trung ương'),
(93, 'Tỉnh Hậu Giang', 'Tỉnh'),
(94, 'Tỉnh Sóc Trăng', 'Tỉnh'),
(95, 'Tỉnh Bạc Liêu', 'Tỉnh'),
(96, 'Tỉnh Cà Mau', 'Tỉnh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `e_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_3` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_4` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `events`
--

INSERT INTO `events` (`id`, `e_name`, `e_banner`, `e_link`, `e_position_1`, `e_position_2`, `e_position_3`, `e_position_4`, `created_at`, `updated_at`) VALUES
(5, 'aDASD', '2020-03-26__523913693-dong-ho-thuy-sy61.jpg', NULL, 1, 0, 0, 0, '2023-10-26 02:49:26', '0000-00-00 00:00:00'),
(6, 'ÁDSA', '2020-03-26__1733889535-bannertutkmoi.jpg', NULL, 0, 1, 0, 0, '2023-10-26 02:55:46', NULL),
(7, 'jkhkj', '2020-03-26__42709734-dong-ho-nu-thoi-trang3.jpg', NULL, 0, 0, 1, 1, '2023-10-26 02:59:25', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `keywords`
--

CREATE TABLE `keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `k_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k_hot` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `keywords`
--

INSERT INTO `keywords` (`id`, `k_name`, `k_slug`, `k_description`, `k_hot`, `created_at`, `updated_at`) VALUES
(1, 'asd', 'asd', 'asd', 0, '2020-05-05 19:47:37', NULL),
(2, 'đồng hồ đẳng cấp', 'dong-ho-dang-cap', NULL, 0, '2020-05-05 19:48:02', NULL),
(3, 'masy tinh', 'masy-tinh', NULL, 0, '2020-05-05 19:48:04', NULL),
(4, 'Life style', 'life-style', NULL, 0, '2020-05-05 19:48:06', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mn_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_hot` tinyint(4) NOT NULL DEFAULT 0,
  `mn_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `mn_name`, `mn_slug`, `mn_avatar`, `mn_banner`, `mn_description`, `mn_hot`, `mn_status`, `created_at`, `updated_at`) VALUES
(1, 'TIN TỨC-SỰ KIỆN', 'tin-tuc-su-kien', NULL, NULL, NULL, 1, 1, '2023-10-03 20:05:21', '0000-00-00 00:00:00'),
(2, 'KIẾN THỨC ĐỒNG HỒ', 'kien-thuc-dong-ho', NULL, NULL, NULL, 1, 1, '2023-10-03 20:13:21', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_02_02_041429_create_categories_table', 1),
(4, '2020_02_02_155318_create_keywords_table', 1),
(5, '2020_02_03_145303_create_products_table', 1),
(6, '2020_02_06_165057_create_attributes_table', 1),
(7, '2020_02_06_184708_create_products_attributes_table', 1),
(8, '2020_02_08_005029_add_multiple_column_attribute_in_table_products', 1),
(9, '2020_02_09_073958_create_transactions_table', 1),
(10, '2020_02_09_074025_create_orders_table', 1),
(11, '2020_02_09_133309_create_products_keywords_table', 1),
(12, '2020_02_09_155308_create_admins_table', 1),
(13, '2020_02_09_180519_create_menus_table', 1),
(14, '2020_02_09_180620_create_articles_table', 1),
(15, '2020_02_12_100000_create_password_resets_table', 1),
(16, '2020_02_13_154148_alter_column_pro_number_in_table_product', 1),
(17, '2020_02_13_171036_create_slides_table', 1),
(18, '2020_02_14_121248_alter_column_a_position_in_table_articles', 1),
(19, '2020_02_15_053225_create_user_favourite_table', 1),
(20, '2020_02_15_191555_create_ratings_table', 1),
(21, '2020_02_17_162605_create_events_table', 1),
(22, '2020_02_18_152103_create_product_images_table', 1),
(23, '2020_02_24_222836_create_social_accounts_table', 1),
(24, '2020_03_08_104810_create_statics_table', 1),
(25, '2020_03_08_213403_alter_column_pro_age_review_in_table_product', 1),
(26, '2020_03_12_205704_create_contacts_table', 1),
(27, '2020_03_17_183239_create_comments_table', 1),
(28, '2020_03_22_003200_alter_column_spam_comment_ratings_in_table_users', 1),
(29, '2020_03_23_223714_alter_column_admin_in_table_admin', 1),
(30, '2020_03_24_201555_alter_column_c_parent_id_in_table_categories', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `od_transaction_id` int(11) NOT NULL DEFAULT 0,
  `od_product_id` int(11) NOT NULL DEFAULT 0,
  `od_sale` int(11) NOT NULL DEFAULT 0,
  `od_qty` tinyint(4) NOT NULL DEFAULT 0,
  `od_price` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `od_transaction_id`, `od_product_id`, `od_sale`, `od_qty`, `od_price`, `created_at`, `updated_at`) VALUES
(8, 8, 3, 1, 1, 461340, NULL, NULL),
(9, 8, 4, 4, 1, 5905920, NULL, NULL),
(11, 9, 2, 20, 1, 4800000, NULL, NULL),
(12, 10, 2, 20, 1, 4800000, NULL, NULL),
(13, 11, 1, 12, 1, 3784000, NULL, NULL),
(14, 12, 4, 4, 1, 5905920, NULL, NULL),
(15, 13, 3, 1, 1, 461340, NULL, NULL),
(16, 14, 1, 12, 1, 3784000, NULL, NULL),
(17, 15, 3, 1, 1, 461340, NULL, NULL),
(18, 19, 2, 20, 1, 4800000, NULL, NULL),
(19, 20, 1, 12, 1, 3784000, NULL, NULL),
(20, 21, 2, 20, 1, 4800000, NULL, NULL),
(21, 22, 4, 4, 2, 5905920, NULL, NULL),
(22, 23, 2, 20, 1, 4800000, NULL, NULL),
(23, 24, 1, 12, 1, 3784000, NULL, NULL),
(24, 25, 1, 12, 1, 3784000, NULL, NULL),
(25, 25, 2, 20, 1, 4800000, NULL, NULL),
(32, 34, 7, 2, 1, 3626000, NULL, NULL),
(33, 35, 7, 2, 1, 3626000, NULL, NULL),
(34, 36, 7, 2, 1, 3626000, NULL, NULL),
(35, 37, 7, 2, 1, 3626000, NULL, NULL),
(36, 38, 7, 2, 1, 3626000, NULL, NULL),
(37, 39, 3, 1, 1, 461340, NULL, NULL),
(38, 40, 2, 20, 1, 4800000, NULL, NULL),
(39, 41, 2, 20, 1, 4800000, NULL, NULL),
(40, 42, 4, 4, 2, 5905920, NULL, NULL),
(78, 115, 17, 4, 2, 7583999, '2023-12-01 23:19:19', NULL),
(79, 116, 17, 4, 1, 7583999, '2023-12-01 23:22:39', NULL),
(80, 117, 17, 4, 1, 7583999, '2023-12-01 23:25:08', NULL),
(81, 118, 17, 4, 1, 7583999, '2023-12-01 23:26:05', NULL),
(82, 119, 17, 4, 1, 7583999, '2023-12-01 23:29:05', NULL),
(83, 120, 17, 4, 1, 7583999, '2023-12-01 23:29:24', NULL),
(84, 121, 17, 4, 1, 7583999, '2023-12-01 23:31:22', NULL),
(85, 122, 17, 4, 1, 7583999, '2023-12-01 23:35:33', NULL),
(86, 123, 17, 4, 1, 7583999, '2023-12-01 23:36:30', NULL),
(87, 124, 17, 4, 1, 7583999, '2023-12-01 23:36:48', NULL),
(88, 125, 17, 4, 1, 7583999, '2023-12-01 23:41:12', NULL),
(89, 126, 17, 4, 1, 7583999, '2023-12-01 23:41:31', NULL),
(90, 127, 17, 4, 1, 7583999, '2023-12-01 23:43:01', NULL),
(91, 128, 17, 4, 1, 7583999, '2023-12-01 23:43:49', NULL),
(92, 129, 17, 4, 1, 7583999, '2023-12-01 23:44:25', NULL),
(93, 130, 17, 4, 1, 7583999, '2023-12-01 23:45:04', NULL),
(94, 131, 17, 4, 1, 7583999, '2023-12-01 23:49:46', NULL),
(95, 132, 17, 4, 1, 7583999, '2023-12-01 23:55:40', NULL),
(96, 133, 17, 4, 2, 7583999, '2023-12-02 00:01:22', NULL),
(97, 134, 15, 1, 1, 2989800, '2023-12-02 00:02:46', NULL),
(98, 135, 15, 1, 1, 2989800, '2023-12-02 00:04:20', NULL),
(99, 136, 17, 4, 2, 7583999, '2023-12-02 00:06:17', NULL),
(100, 137, 17, 4, 2, 7583999, '2023-12-02 00:42:40', NULL),
(101, 138, 17, 4, 2, 7583999, '2023-12-02 00:46:25', NULL),
(102, 139, 17, 4, 1, 7583999, '2023-12-02 19:27:01', NULL),
(103, 140, 17, 4, 6, 7583999, '2023-12-02 19:31:53', NULL),
(104, 141, 17, 4, 4, 7583999, '2023-12-02 19:34:33', NULL),
(105, 142, 19, 0, 10, 4350000, '2023-12-02 20:30:10', NULL),
(106, 144, 17, 4, 5, 7583999, '2023-12-02 20:53:55', NULL),
(107, 145, 19, 0, 4, 4350000, '2023-12-02 20:57:13', NULL),
(108, 146, 17, 4, 1, 7583999, '2023-12-02 21:01:08', NULL),
(109, 147, 17, 4, 1, 7583999, '2023-12-02 21:02:04', NULL),
(110, 148, 14, 3, 1, 1455000, '2023-12-02 21:08:16', NULL),
(111, 149, 19, 0, 3, 4350000, '2023-12-03 01:39:55', NULL),
(112, 150, 19, 0, 2, 4350000, '2023-12-03 09:41:46', NULL),
(113, 151, 19, 0, 5, 4350000, '2023-12-10 05:56:18', NULL),
(114, 152, 19, 0, 5, 4350000, '2023-12-10 05:59:38', NULL),
(115, 153, 1, 12, 4, 3784000, '2023-12-14 08:24:54', NULL),
(116, 153, 19, 10, 1, 391500, '2023-12-14 08:24:54', NULL),
(117, 154, 17, 4, 1, 7583999, '2023-12-17 00:02:09', NULL),
(118, 155, 17, 4, 1, 7583999, '2023-12-17 00:05:00', NULL),
(119, 156, 17, 4, 1, 7583999, '2023-12-17 00:11:36', NULL),
(120, 157, 17, 4, 1, 7583999, '2023-12-17 00:12:23', NULL),
(121, 158, 19, 10, 1, 391500, '2023-12-18 02:17:34', NULL),
(122, 159, 19, 10, 1, 391500, '2023-12-18 02:19:16', NULL),
(123, 160, 14, 3, 1, 1455000, '2023-12-18 04:04:13', NULL),
(124, 161, 7, 2, 3, 3626000, '2023-12-18 07:32:28', NULL),
(125, 162, 17, 4, 3, 7583999, '2023-12-18 07:34:32', NULL),
(126, 163, 17, 4, 3, 7200000, '2023-12-21 20:15:16', NULL),
(127, 164, 17, 4, 1, 7200000, '2024-01-01 17:54:31', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('buituxyz@gmail.com', '$2y$10$SedlnhpjnzO7Lyv9YTOJE.sVuT/cFhbcLFGFEpAsrFYzQuhoNSD5a', '2020-04-03 01:00:00'),
('buituxyz@gmail.com', '$2y$10$CFv2K7OF3ZENOR/QgrHY8e/H.EKwb8UYkyIyO4G8zQUc7EEeWzhbK', '2020-04-20 21:10:05'),
('buituxyz@gmail.com', '$2y$10$Qb1QGqA5j.qaJq34qZnKl.Xfb0Ft0fIuaf.cCL1vmF57aOYnZkJny', '2020-06-08 18:30:55'),
('test@gmail.com', '$2y$10$RbZ87OdpwH8/sfwQ5Q5BYOOWIfeCAGE4MKSf7pXshPff828IN2Xze', '2023-12-17 15:53:50'),
('test@gmail.com', '$2y$10$yfmn/WxrwWsC/KVaTnFhgOc4TY2YKY6XMS2GPBLMo7qDphwCd3Kdu', '2023-12-17 23:20:02'),
('test@gmail.com', '$2y$10$OaMtVYR025t7Jh4TvFrwm.JEX1hid1leeo.fASZ3yytUxn0XfQKIu', '2023-12-17 23:20:13'),
('test@gmail.com', '$2y$10$q/bNjHJTlgQGODT0Ww480ul9YOFP.Avl.fU0dK2zd425ZU.SRFbje', '2023-12-17 23:20:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pro_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_price` int(11) NOT NULL DEFAULT 0,
  `pro_price_entry` int(11) NOT NULL DEFAULT 0 COMMENT 'giá nhập',
  `pro_category_id` int(11) NOT NULL DEFAULT 0,
  `pro_admin_id` int(11) NOT NULL DEFAULT 0,
  `pro_sale` tinyint(4) NOT NULL DEFAULT 0,
  `pro_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_view` int(11) NOT NULL DEFAULT 0,
  `pro_hot` tinyint(4) NOT NULL DEFAULT 0,
  `pro_active` tinyint(4) NOT NULL DEFAULT 1,
  `pro_pay` int(11) NOT NULL DEFAULT 0,
  `pro_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_review_total` int(11) NOT NULL DEFAULT 0,
  `pro_review_star` int(11) NOT NULL DEFAULT 0,
  `pro_age_review` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `pro_number` int(11) NOT NULL DEFAULT 0,
  `pro_resistant` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_energy` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_country` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_price`, `pro_price_entry`, `pro_category_id`, `pro_admin_id`, `pro_sale`, `pro_avatar`, `pro_view`, `pro_hot`, `pro_active`, `pro_pay`, `pro_description`, `pro_content`, `pro_review_total`, `pro_review_star`, `pro_age_review`, `created_at`, `pro_number`, `pro_resistant`, `pro_energy`, `pro_country`, `updated_at`) VALUES
(1, 'Đồng hồ Jacques Lemans JL-11-1654.2ZD Limited', 'dong-ho-jacques-lemans-jl-11-16542zd-limited', 6600000, 0, 1, 0, 0, '2020-03-25__2020-02-05-dong-ho-1.jpg', 39, 1, 1, 1, 'Đường kính mặt\r\n40 mm\r\nChống nước\r\n10 ATM\r\nChất liệu mặt\r\nKrysterna crystal ( kính cứng )\r\nNăng lượng sử dụng\r\nQuartz/Pin\r\nSize dây\r\n20 mm\r\nChất liệu dây\r\nDây da chính hãng\r\nChất liệu vỏ\r\nThép không gỉ\r\nKiểu dáng\r\nĐồng hồ Nam\r\nXuất xứ\r\nÁo\r\nChế độ bảo hành\r\nBảo hành quốc tế 02 năm', 'Đường kính mặt\r\n40 mm\r\nChống nước\r\n10 ATM\r\nChất liệu mặt\r\nKrysterna crystal ( kính cứng )\r\nNăng lượng sử dụng\r\nQuartz/Pin\r\nSize dây\r\n20 mm\r\nChất liệu dây\r\nDây da chính hãng\r\nChất liệu vỏ\r\nThép không gỉ\r\nKiểu dáng\r\nĐồng hồ Nam\r\nXuất xứ\r\nÁo\r\nChế độ bảo hành\r\nBảo hành quốc tế 02 năm', 0, 0, 0, '2023-09-24 10:03:12', 13, '10 ATM', 'automatic', 1, '2023-12-17 02:25:17'),
(2, 'ĐỒNG HỒ JACQUES LEMANS JL-1-1654.2ZH', 'dong-ho-jacques-lemans-jl-1-16542zh', 6000000, 0, 1, 0, 10, '2020-03-25__2020-02-05-dong-ho-so-2.jpg', 79, 1, 1, 9, 'Đường kính mặt: 40 mmChống nước: 10ATMChất liệu mặt kính: Krysterna crystal ( kính cứng )Bộ máy: Quartz/Pin', '.', 0, 0, 0, '2023-09-24 10:07:12', 6, '5 ATM', 'quartz', 3, '2023-12-21 01:24:46'),
(3, 'ĐỒNG HỒ EPOS SWISS E-3435.313.20.25.25', 'dong-ho-epos-swiss-e-3435313202525', 466000, 0, 1, 0, 0, '2020-03-25__444423868-dong-ho-nu-thoi-trang.jpg', 40, 1, 1, 2, 'Đường kính mặt: 24mmChống nước: 3ATMChất liệu mặt kính: Kính sapphireBộ máy: Quartz/Pin', 'ádasd', 0, 0, 0, '2023-09-24 10:14:16', 4, '5 ATM', 'quartz', 2, '2023-12-21 10:11:06'),
(4, 'ĐỒNG HỒ DIAMOND D DD6016D', 'dong-ho-diamond-d-dd6016d', 6152000, 0, 1, 0, 4, '2020-03-26__523913693-dong-ho-thuy-sy61.jpg', 28, 1, 1, 3, 'Đường kính mặt: 30 mm\r\nChống nước: 5 ATM\r\nChất liệu mặt kính: Tráng Sapphire\r\nBộ máy: Quartz/Pin', 'gfd', 0, 0, 0, '2023-09-24 10:18:42', 3, '5 ATM', 'quartz', 3, '2023-12-17 02:25:12'),
(5, 'ĐỒNG HỒ Q&Q QQ-S280J102Y', 'dong-ho-qq-qq-s280j102y', 1600000, 0, 1, 0, 4, '2020-03-26__938885842-qq-s280j102y.jpg', 10, 0, 1, 1, 'sadasd', 'jgj', 0, 0, 0, '2023-09-24 10:35:43', 3, '5 ATM', 'automatic', 1, '2023-11-13 22:48:34'),
(6, 'ĐỒNG HỒ DIAMOND D DM5308B5', 'dong-ho-diamond-d-dm5308b5', 4500000, 0, 2, 0, 0, '2020-03-26__1949317567-untitled-23.jpg', 17, 0, 1, 0, 'ádas', 'ádasd', 0, 0, 0, '2023-09-24 10:42:49', 0, '5 ATM', 'quartz', 3, '2023-11-13 22:48:22'),
(7, 'ĐỒNG HỒ DIAMOND D DM36505IG', 'dong-ho-diamond-d-dm36505ig', 3700000, 0, 2, 0, 2, '2020-05-04__1.jpg', 33, 1, 1, 3, 'Đường kính mặt: 24mm\r\nChống nước: 3ATM\r\nChất liệu mặt kính: Kính sapphire\r\nBộ máy: Quartz/Pin', 'ádasd', 1, 4, 4, '2023-09-24 10:47:18', 9, '5 ATM', 'automatic', 2, '2023-12-21 10:09:04'),
(9, 'ĐỒNG HỒ ARIES GOLD AG-U7010 Z-BK', 'dong-ho-aries-gold-ag-u7010-z-bk', 2000000, 0, 1, 0, 10, '2020-06-09__3.jpg', 6, 0, 1, 0, 'Đồng hồ xịn', 'Xịn', 0, 0, 0, '2023-09-24 10:55:12', 4, '5 ATM', 'automatic', 3, '0000-00-00 00:00:00'),
(11, 'ĐỒNG HỒ PHILIPPE AUGUSTE PA5003E', 'dong-ho-philippe-auguste-pa5003e', 13000000, 0, 1, 0, 0, '2020-05-19__2.jpg', 5, 0, 1, 1, 'ádasd', 'sadasd', 0, 0, 0, '2023-09-24 11:02:23', 3, '5 ATM', 'asd', 1, NULL),
(12, 'ĐỒNG HỒ DIAMOND D DM61195IG-W', 'dong-ho-diamond-d-dm61195ig-w', 3000000, 0, 2, 0, 4, '2020-05-19__3.jpg', 14, 0, 1, 4, 'Đường kính mặt: 28mmChống nước: 3ATMChất liệu mặt kính: Kính sapphireBộ máy: Quartz/Pin', '.', 0, 0, 0, '2023-09-24 11:08:28', 5, '5 ATM', 'quartz', 3, '2023-12-21 01:30:20'),
(13, 'ĐỒNG HỒ DIAMOND D DM21005IG', 'dong-ho-diamond-d-dm21005ig', 4560000, 0, 2, 0, 1, '2020-05-19__2.jpg', 7, 0, 1, 0, 'ád ád sad', 'ád ád', 0, 0, 0, '2023-09-24 11:13:49', 3, '5 ATM', 'quartz', 1, '0000-00-00 00:00:00'),
(14, 'ĐỒNG HỒ Q&Q QQ-S288J206Y', 'dong-ho-qq-qq-s288j206y', 1500000, 0, 1, 0, 3, '2020-05-19__3.jpg', 11, 0, 1, 1, 'ád sad', 'sad sad', 2, 8, 4, '2023-09-24 11:19:38', 2, '5 ATM', 'quartz', 1, '2023-12-18 04:04:13'),
(15, 'ĐỒNG HỒ DIAMOND D DM63055IG-B', 'dong-ho-diamond-d-dm63055ig-b', 3020000, 0, 2, 0, 1, '2020-06-09__2.jpg', 3, 0, 1, 0, 'ĐỒng hồ hin', 'ĐỒng hồ hịn', 0, 0, 0, '2023-09-24 11:26:31', 5, '5 ATM', 'automatic', 2, '2023-12-14 09:37:29'),
(16, 'ĐỒNG HỒ DIAMOND D DM21005IT', 'dong-ho-diamond-d-dm21005it', 4500000, 0, 2, 0, 0, '2020-06-09__4.jpg', 9, 0, 1, 0, 'Đường kính mặt: 24mmChống nước: 3ATMChất liệu mặt kính: Kính sapphireBộ máy: Quartz/Pin', '1', 1, 5, 5, '2023-09-24 11:26:10', 11, '5 ATM', 'automatic', 1, '2023-12-21 10:04:38'),
(17, 'ĐỒNG HỒ DIAMOND D DD6018F', 'dong-ho-diamond-d-dd6018f', 7500000, 0, 1, 0, 4, '2023-12-18__015.jpg', 31, 0, 1, 113, 'Đường kính mặt: 40 mm\r\nChống nước: 10ATM\r\nChất liệu mặt kính: Krysterna crystal ( kính cứng )\r\nBộ máy: Quartz/Pin', 'abc', 2, 9, 5, '2023-09-24 11:31:10', 13, '5 ATM', 'automatic', 1, '2023-12-21 20:17:34'),
(19, 'ĐỒNG HỒ JACQUES LEMANS JL-1-1654.2ZG', 'dong-ho-jacques-lemans-jl-1-16542zg', 435000, 0, 1, 0, 10, '2023-12-02__seko02.png', 14, 0, 1, 101, 'Đường kính mặt: 42 mm\r\nChống nước: 5 ATM\r\nChất liệu mặt kính: Sapphire\r\nBộ máy: Automatic (Cơ tự động)', 'Đường kính mặt: 42 mmChống nước: 5 ATMChất liệu mặt kính: SapphireBộ máy: Automatic (Cơ tự động)', 3, 13, 4, '2023-12-02 00:38:53', 98, '5 ATM', 'Automatic (Cơ tự động)', 1, '2024-01-07 20:28:04'),
(20, 'Apple Watch Ultra 2 GPS + Cellular 49mm viền Titanium dây Alpine size S', 'apple-watch-ultra-2-gps-cellular-49mm-vien-titanium-day-alpine-size-s', 21490000, 0, 8, 0, 10, '2023-12-21__022.jpg', 2, 0, 1, 0, 'Chất liệu mặt:\r\nKính SapphireChất liệu khung viền:\r\nTitaniumChất liệu dây:\r\nDây vảiĐộ rộng dây:\r\nHãng không công bốĐộ dài dây:\r\n13 - 20 cmKhả năng thay dây:\r\nCóKích thước, khối lượng:\r\nDài 49 mm - Ngang 44 mm - Dày 14.4 mm - Nặng 61.4 g', '.', 0, 0, 0, '2023-12-14 08:32:49', 6, '10 ATM', 'pin', 8, '2023-12-21 09:54:37'),
(21, 'Đồng hồ OR-RA-AK0504B10B', 'dong-ho-or-ra-ak0504b10b', 4270000, 0, 6, 0, 10, '2023-12-21__021.jpg', 5, 0, 1, 0, 'Đường kính mặt: 40mmChống nước: 3ATMChất liệu mặt kính: Kính khoángBộ máy: Automatic', 'đồng hồ', 0, 0, 0, '2023-12-16 23:20:12', 10, '5 ATM', 'acquati', 3, '2023-12-21 10:02:46'),
(22, 'Đồng hồ Casio CA-EFR-552D-1AVUDF', 'dong-ho-casio-ca-efr-552d-1avudf', 3529000, 0, 7, 0, 10, '2023-12-21__023.jpg', 0, 0, 1, 0, 'Đường kính mặt: 47mm\r\nChống nước: 10ATM\r\nChất liệu mặt kính: Kính khoáng\r\nBộ máy: Quartz (Pin)', ';', 0, 0, 0, '2023-12-21 09:58:07', 10, '10ATM', 'Quartz (Pin)', 8, NULL),
(23, 'adas', 'adas', 13213, 0, 2, 0, 0, NULL, 0, 0, 0, 0, 's', 'x2', 0, 0, 0, '2023-12-21 10:01:49', 0, NULL, NULL, 0, '2023-12-21 10:02:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_attributes`
--

CREATE TABLE `products_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pa_product_id` int(11) NOT NULL DEFAULT 0,
  `pa_attribute_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_attributes`
--

INSERT INTO `products_attributes` (`id`, `pa_product_id`, `pa_attribute_id`) VALUES
(4, 6, 4),
(5, 6, 7),
(14, 5, 4),
(15, 5, 6),
(26, 4, 4),
(27, 4, 8),
(28, 8, 4),
(29, 8, 6),
(40, 10, 4),
(41, 10, 8),
(42, 11, 4),
(43, 11, 7),
(44, 11, 8),
(49, 13, 4),
(50, 13, 8),
(51, 12, 4),
(52, 12, 9),
(53, 7, 4),
(54, 7, 7),
(55, 7, 9),
(62, 15, 4),
(63, 15, 9),
(64, 17, 4),
(65, 17, 8),
(66, 16, 4),
(67, 16, 8),
(68, 9, 5),
(69, 9, 10),
(70, 18, 4),
(71, 18, 5),
(72, 18, 6),
(73, 18, 12);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_keywords`
--

CREATE TABLE `products_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pk_product_id` int(11) NOT NULL DEFAULT 0,
  `pk_keyword_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_keywords`
--

INSERT INTO `products_keywords` (`id`, `pk_product_id`, `pk_keyword_id`) VALUES
(2, 9, 2),
(6, 10, 2),
(7, 11, 2),
(11, 14, 2),
(12, 13, 2),
(13, 12, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pi_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_product_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`id`, `pi_name`, `pi_slug`, `pi_product_id`, `created_at`, `updated_at`) VALUES
(4, '1.jpg', '2020-05-04__1jpg.jpg', 5, '2020-05-03 20:13:53', NULL),
(5, '2.jpg', '2020-05-04__2jpg.jpg', 5, '2020-05-03 20:14:04', NULL),
(6, '3.jpg', '2020-05-04__3jpg.jpg', 5, '2020-05-03 20:16:16', NULL),
(8, '2.jpg', '2020-05-04__2jpg.jpg', 4, '2020-05-03 20:34:20', NULL),
(9, '3.jpg', '2020-05-04__3jpg.jpg', 4, '2020-05-03 20:34:21', NULL),
(11, '2.jpg', '2020-05-04__2jpg.jpg', 7, '2020-05-03 20:37:31', NULL),
(12, '3.jpg', '2020-05-04__3jpg.jpg', 7, '2020-05-03 20:37:31', NULL),
(13, '2.jpg', '2020-05-19__2jpg.jpg', 8, '2020-05-19 09:16:14', NULL),
(14, '3.jpg', '2020-05-19__3jpg.jpg', 8, '2020-05-19 09:16:14', NULL),
(15, '2.jpg', '2020-05-19__2jpg.jpg', 9, '2020-05-19 09:18:21', NULL),
(19, '3.jpg', '2020-05-19__3jpg.jpg', 10, '2020-05-19 09:22:06', NULL),
(20, '2.jpg', '2020-05-19__2jpg.jpg', 11, '2020-05-19 09:24:26', NULL),
(21, '3.jpg', '2020-05-19__3jpg.jpg', 11, '2020-05-19 09:24:26', NULL),
(22, '2.jpg', '2020-05-19__2jpg.jpg', 12, '2020-05-19 09:26:28', NULL),
(23, '3.jpg', '2020-05-19__3jpg.jpg', 12, '2020-05-19 09:26:28', NULL),
(24, '2.jpg', '2020-05-19__2jpg.jpg', 13, '2020-05-19 09:35:06', NULL),
(25, '2.jpg', '2020-05-19__2jpg.jpg', 14, '2020-05-19 09:37:11', NULL),
(27, '2.jpg', '2020-06-09__2jpg.jpg', 15, '2020-06-09 09:21:13', NULL),
(28, '3.jpg', '2020-06-09__3jpg.jpg', 15, '2020-06-09 09:21:13', NULL),
(31, '003.jpg', '2023-12-17__003jpg.jpg', 1, '2023-12-16 22:46:20', NULL),
(32, '004.jpg', '2023-12-17__004jpg.jpg', 1, '2023-12-16 22:46:20', NULL),
(33, '005.jpg', '2023-12-17__005jpg.jpg', 1, '2023-12-16 22:46:20', NULL),
(34, '006.jpg', '2023-12-17__006jpg.jpg', 2, '2023-12-17 02:04:19', NULL),
(35, '007.jpg', '2023-12-17__007jpg.jpg', 2, '2023-12-17 02:04:19', NULL),
(36, '008.jpg', '2023-12-17__008jpg.jpg', 2, '2023-12-17 02:04:19', NULL),
(37, '011.jpg', '2023-12-18__011jpg.jpg', 17, '2023-12-18 00:49:43', NULL),
(38, '012.jpg', '2023-12-18__012jpg.jpg', 17, '2023-12-18 00:49:43', NULL),
(39, '013.jpg', '2023-12-18__013jpg.jpg', 17, '2023-12-18 00:49:44', NULL),
(40, '014.jpg', '2023-12-18__014jpg.jpg', 17, '2023-12-18 00:49:44', NULL),
(41, '015.jpg', '2023-12-18__015jpg.jpg', 17, '2023-12-18 00:49:44', NULL),
(42, '016.jpg', '2023-12-18__016jpg.jpg', 19, '2023-12-18 01:46:02', NULL),
(43, '017.jpg', '2023-12-18__017jpg.jpg', 19, '2023-12-18 01:46:02', NULL),
(44, '021.jpg', '2023-12-21__021jpg.jpg', 21, '2023-12-21 09:40:39', NULL),
(45, '022.jpg', '2023-12-21__022jpg.jpg', 20, '2023-12-21 09:53:09', NULL),
(46, '023.jpg', '2023-12-21__023jpg.jpg', 22, '2023-12-21 09:58:07', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `r_user_id` int(11) NOT NULL DEFAULT 0,
  `r_product_id` int(11) NOT NULL DEFAULT 0,
  `r_number` tinyint(4) NOT NULL DEFAULT 0,
  `r_status` tinyint(4) NOT NULL DEFAULT 0,
  `r_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ratings`
--

INSERT INTO `ratings` (`id`, `r_user_id`, `r_product_id`, `r_number`, `r_status`, `r_content`, `created_at`, `updated_at`) VALUES
(67, 38, 16, 5, 0, 'sản phẩm đẹp', '2023-11-10 06:56:03', '2023-11-10 06:56:03'),
(68, 38, 19, 4, 0, 'dsadas', '2023-12-09 09:01:00', '2023-12-09 09:01:00'),
(69, 38, 19, 5, 0, 'abc', '2023-12-09 09:02:02', '2023-12-09 09:02:02'),
(70, 38, 19, 4, 0, 'ada', '2023-12-09 09:31:09', '2023-12-09 09:31:09'),
(71, 38, 14, 4, 0, 'dasdas', '2023-12-09 09:57:49', '2023-12-09 09:57:49'),
(72, 38, 14, 4, 0, 'safas', '2023-12-09 09:57:56', '2023-12-09 09:57:56'),
(73, 38, 17, 4, 0, NULL, '2023-12-16 23:48:11', '2023-12-16 23:48:11'),
(74, 38, 17, 5, 0, NULL, '2023-12-20 21:59:45', '2023-12-20 21:59:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sd_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_target` tinyint(4) NOT NULL DEFAULT 1,
  `sd_active` tinyint(4) NOT NULL DEFAULT 1,
  `sd_sort` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `sd_title`, `sd_link`, `sd_image`, `sd_target`, `sd_active`, `sd_sort`, `created_at`, `updated_at`) VALUES
(2, '1', 'http://127.0.0.1:8000/', '2020-03-26__593586620-dqw-vnpay-tang-balo.jpg', 1, 1, 0, '2023-11-14 20:57:08', '2023-11-14 20:57:08'),
(3, 'ádasd  sadas d', 'sad ád', '2020-03-26__91458012-giaohang.jpg', 1, 0, 0, '2023-10-26 02:31:58', '0000-00-00 00:00:00'),
(4, 'ÁDASD', 'ád', '2020-06-05__1068343.jpg', 2, 0, 0, '2023-10-26 02:36:12', '0000-00-00 00:00:00'),
(5, 'ấ', 'áda', '2023-11-10__banner2.jpg', 1, 1, 0, '2023-11-10 02:20:53', '2023-11-10 03:19:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `social_accounts`
--

CREATE TABLE `social_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `provider_user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `social_accounts`
--

INSERT INTO `social_accounts` (`id`, `provider_user_id`, `user_id`, `provider`, `created_at`, `updated_at`) VALUES
(1, '113284481699405128390', '13', 'google', '2020-04-19 05:05:01', '2020-04-19 05:05:01'),
(2, '114648189234106577870', '10', 'google', '2020-04-22 08:02:33', '2020-04-22 08:02:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `statics`
--

CREATE TABLE `statics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `s_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_type` tinyint(4) NOT NULL DEFAULT 0,
  `s_md5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `statics`
--

INSERT INTO `statics` (`id`, `s_title`, `s_slug`, `s_type`, `s_md5`, `s_content`, `created_at`, `updated_at`) VALUES
(2, 'Chính sách đổi trả', NULL, 2, NULL, '<p><strong>2. Ch&iacute;nh s&aacute;ch đổi h&agrave;ng</strong></p>\r\n\r\n<p>Ch&iacute;nh s&aacute;ch đổi trả h&agrave;ng nhằm đảm bảo quyền lợi tối đa cho kh&aacute;ch h&agrave;ng khi mua sắm h&agrave;ng h&oacute;a tại watch_store, cụ thể như sau:</p>\r\n\r\n<p>Nhằm đảm bảo quyền lợi người ti&ecirc;u d&ugrave;ng, n&acirc;ng cao chất lượng dịch vụ sau b&aacute;n h&agrave;ng, Kh&aacute;ch h&agrave;ng được đổi sản phẩm mới c&ugrave;ng loại khi sản phẩm gặp sự cố kh&ocirc;ng thể khắc phục được (do lỗi kỹ thuật của nh&agrave; sản xuất). Sản phẩm lỗi chỉ được đổi sau khi đ&atilde; c&oacute; x&aacute;c nhận của kỹ thuật v&agrave; tu&acirc;n thủ theo c&aacute;c điều kiện sau đ&acirc;y:</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sản phẩm mới mua trong v&ograve;ng 01 ng&agrave;y kể từ ng&agrave;y xuất b&aacute;n. Kh&aacute;ch h&agrave;ng mua trực tuyến, thời gian được t&iacute;nh từ ng&agrave;y kh&aacute;ch nhận được sản phẩm;</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;H&agrave;ng h&oacute;a được x&aacute;c định nguồn gốc&nbsp;(căn cứ v&agrave;o h&oacute;a đơn mua h&agrave;ng, phiếu bảo h&agrave;nh v&agrave; tem nhận diện d&aacute;n tr&ecirc;n sản phẩm);</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;H&agrave;ng h&oacute;a được x&aacute;c nhận bị lỗi kỹ thuật của Kỹ thuật vi&ecirc;n của Trung T&acirc;m Bảo H&agrave;nh của H&atilde;ng;</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;H&agrave;ng h&oacute;a vẫn c&ograve;n nguy&ecirc;n tem ni&ecirc;m phong (kh&ocirc;ng bị r&aacute;ch vỡ hoặc d&aacute;n lại) của nh&agrave; sản xuất hoặc tem của Đăng QuangWatch, phải c&ograve;n nguy&ecirc;n vẹn vỏ th&ugrave;ng, xốp v&agrave; đầy đủ c&aacute;c phụ kiện k&egrave;m theo, qu&agrave; khuyến mại (nếu c&oacute;)&hellip;</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;H&agrave;ng h&oacute;a nhận lại kh&ocirc;ng bị lỗi h&igrave;nh thức (trầy xước, m&oacute;p m&eacute;o, ố v&agrave;ng, vỡ &hellip;)</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;H&agrave;ng h&oacute;a nhận lại phải c&ograve;n đầy đủ linh kiện.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;H&agrave;ng h&oacute;a khi nhận lại phải c&oacute; đầy đủ c&aacute;c chứng từ k&egrave;m theo (Phiếu bảo h&agrave;nh, s&aacute;ch hướng dẫn &hellip; )</p>\r\n\r\n<p>Đồng hồ Đăng Quang sẽ thực hiện đổi h&agrave;ng cho kh&aacute;ch, nhưng kh&ocirc;ng ho&agrave;n lại ph&iacute; vận chuyển/ giao h&agrave;ng (nếu c&oacute;), trừ những trường hợp sau:</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Kh&ocirc;ng đ&uacute;ng chủng loại, mẫu m&atilde; như qu&yacute; kh&aacute;ch đ&atilde; đặt h&agrave;ng.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Kh&ocirc;ng đủ số lượng, kh&ocirc;ng đủ bộ/ th&ocirc;ng tin như trong đơn h&agrave;ng ban đầu.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Kh&ocirc;ng đạt chất lượng như: qu&aacute; hạn sử dụng, hết bảo h&agrave;nh, kh&ocirc;ng vận h&agrave;nh được, hỏng h&oacute;c kh&aacute;ch quan trong phạm vi bảo h&agrave;nh của nh&agrave; cung cấp, nh&agrave; sản xuất,..</p>\r\n\r\n<p><strong>Trường hợp kh&ocirc;ng chấp nhận đổi hoặc trả sản phẩm:</strong></p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Qu&yacute; kh&aacute;ch muốn thay đổi mẫu m&atilde;, chủng loại sản phẩm;</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Lỗi do người sử dụng;</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Kh&ocirc;ng chấp nhận c&aacute;c lỗi ngoại quan (xước, m&oacute;p, m&eacute;o, vỡ, sứt&hellip;) khi kh&aacute;ch h&agrave;ng đ&atilde; mang sản phẩm ra khỏi cửa h&agrave;ng C&ocirc;ng ty;</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Qu&yacute; kh&aacute;ch vận h&agrave;nh kh&ocirc;ng đ&uacute;ng chỉ dẫn, g&acirc;y hỏng h&oacute;c sản phẩm, h&agrave;ng h&oacute;a;</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Qu&yacute; kh&aacute;ch tự l&agrave;m ảnh hưởng t&igrave;nh trạng b&ecirc;n ngo&agrave;i như &nbsp;bong tr&oacute;c, bể vỡ, &hellip;;</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Qu&yacute; kh&aacute;ch y&ecirc;u cầu đổi trả h&agrave;ng h&oacute;a v&igrave; l&yacute; do sai phạm về h&igrave;nh thức (trầy xước, m&oacute;p m&eacute;o, ố v&agrave;ng, bể vỡ,&hellip;) m&agrave; khi qu&yacute; kh&aacute;ch mua h&agrave;ng h&oacute;a vẫn c&ograve;n nguy&ecirc;n vẹn.</p>\r\n\r\n<p>Ch&uacute; &yacute;: Kh&aacute;ch h&agrave;ng xem kỹ sản phẩm trước khi mua, sản phẩm đ&atilde; b&aacute;n ra kh&ocirc;ng nhập lại. Để đảm bảo cho mọi kh&aacute;ch h&agrave;ng lu&ocirc;n mua được sản phẩm mới.</p>\r\n\r\n<p><strong>Qui tr&igrave;nh xử l&yacute; thủ tục đổi trả h&agrave;ng:</strong></p>\r\n\r\n<p>&nbsp;Kh&aacute;ch h&agrave;ng c&oacute; thể li&ecirc;n hệ trực tiếp với Trung T&acirc;m Bảo H&agrave;nh của H&atilde;ng hoặc th&ocirc;ng qua Ph&ograve;ng Bảo h&agrave;nh của C&ocirc;ng ty để thay mặt chuyển h&agrave;ng h&oacute;a đến H&atilde;ng để kiểm tra. Sau khi c&oacute; Giấy X&aacute;c Nhận T&igrave;nh Trạng với nội dung h&agrave;ng h&oacute;a hư hỏng do lỗi kỹ thuật kh&ocirc;ng thể sửa chữa, chấp nhận đổi mới. Việc đổi h&agrave;ng sẽ được thực hiện theo đ&uacute;ng quy định của C&ocirc;ng ty.</p>', '2023-12-16 23:30:09', '2023-12-16 23:30:09'),
(3, 'Hướng dẫn mua hàng', NULL, 1, NULL, '<h1>Hướng dẫn mua h&agrave;ng</h1>\r\n\r\n<p>Mua h&agrave;ng qua mạng kh&ocirc;ng phức tạp như nhiều người nghĩ, ch&uacute;ng t&ocirc;i vui mừng khi bạn kh&ocirc;ng c&oacute; suy nghĩ như vậy, h&atilde;y t&igrave;m kiếm sản phẩm bạn ưa th&iacute;ch v&agrave; l&agrave;m theo hướng dẫn.</p>\r\n\r\n<p>Mua h&agrave;ng qua mạng kh&ocirc;ng phức tạp như nhiều người nghĩ, ch&uacute;ng t&ocirc;i vui mừng khi bạn kh&ocirc;ng c&oacute; suy nghĩ như vậy, h&atilde;y t&igrave;m kiếm sản phẩm bạn ưa th&iacute;ch v&agrave; l&agrave;m theo hướng dẫn.</p>\r\n\r\n<h2><strong>I. T&Igrave;M KIẾM SẢN PHẨM</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Bạn c&oacute; thể lựa chọn một trong những c&aacute;ch mua h&agrave;ng sau :</p>\r\n\r\n<p><strong>a. Gọi điện thoại</strong>&nbsp;đến tổng đ&agrave;i () hoặc hotline () từ&nbsp;<strong>8h30-21h30</strong>&nbsp;(cả CN &amp; ng&agrave;y lễ) nh&acirc;n vi&ecirc;n ch&uacute;ng t&ocirc;i lu&ocirc;n sẵn s&agrave;ng phục vụ bạn.</p>\r\n\r\n<h2><strong>b. Đặt mua h&agrave;ng tr&ecirc;n website.</strong></h2>\r\n\r\n<p>T&igrave;m sản phẩm cần mua: Bạn c&oacute; thể t&igrave;m kiếm sản phẩm theo nhiều c&aacute;ch:</p>\r\n\r\n<p><strong>- C&aacute;ch 1</strong>: T&igrave;m nhanh khi đ&atilde; biết t&ecirc;n sản phẩm. Bạn chỉ cần g&otilde; &quot;T&ecirc;n sản phẩm&quot; v&agrave;o box t&igrave;m kiếm, hệ thống sẽ gợi &yacute; bạn t&ecirc;n sản phẩm đ&uacute;ng nhất hiện c&oacute; trong hệ thống.</p>\r\n\r\n<p><strong>- C&aacute;ch 2</strong>: V&agrave;o &quot;Danh mục sản phẩm&quot; tr&ecirc;n Menu ngang của website. C&oacute; thể t&igrave;m sản phẩm theo h&atilde;ng hoặc theo c&aacute;c ti&ecirc;u ch&iacute; lọc theo t&iacute;nh năng sản phẩm b&ecirc;n tr&aacute;i.</p>\r\n\r\n<h2><strong>II.&nbsp;XEM TH&Ocirc;NG TIN&nbsp;CHI TIẾT SẢN PHẨM&nbsp;</strong></h2>\r\n\r\n<h2><strong>III.&nbsp;TH&Ecirc;M SẢN PHẨM V&Agrave;O GIỎ H&Agrave;NG</strong></h2>\r\n\r\n<p><strong>IV. CHI TIẾT GIỎ H&Agrave;NG CỦA BẠN</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>V. ĐẶT MUA SẢN PHẨM</strong></h2>\r\n\r\n<p><strong>- Nhập đầy đủ c&aacute;c th&ocirc;ng tin v&agrave; tiến h&agrave;nh mua sản phẩm</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Ho&agrave;n th&agrave;nh việc mua sản phẩm: Như vậy bạn đ&atilde; đặt h&agrave;ng th&agrave;nh c&ocirc;ng tại watchstore</strong></p>\r\n\r\n<p>Sau khi đặt h&agrave;ng th&agrave;nh c&ocirc;ng, Đăng Quang Watch&nbsp;sẽ li&ecirc;n hệ lại bạn để x&aacute;c nhận đơn h&agrave;ng v&agrave; tư vấn cụ thể về c&aacute;c ch&iacute;nh s&aacute;ch kh&aacute;c như ưu đ&atilde;i khi mua h&agrave;ng, h&igrave;nh thức giao h&agrave;ng, h&igrave;nh thức thanh to&aacute;n...</p>', '2023-12-16 23:33:29', '2023-12-16 23:33:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tst_user_id` int(11) NOT NULL DEFAULT 0,
  `tst_total_money` int(11) NOT NULL DEFAULT 0,
  `tst_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_province_id` int(5) NOT NULL DEFAULT 0,
  `tst_district_id` int(5) NOT NULL DEFAULT 0,
  `tst_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_status` tinyint(4) NOT NULL DEFAULT 1,
  `tst_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT ' 1 thanh toan thuong, 2 la thanh toan online',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `transactions`
--

INSERT INTO `transactions` (`id`, `tst_user_id`, `tst_total_money`, `tst_name`, `tst_email`, `tst_phone`, `tst_address`, `tst_province_id`, `tst_district_id`, `tst_note`, `tst_status`, `tst_type`, `created_at`, `updated_at`) VALUES
(96, 38, 7583999, 'sinh', 'test@gmail.com', '0944672403', 'fsfsd', 1, 1, '2142', 3, 1, '2023-11-24 02:52:08', '2023-11-24 03:08:09'),
(97, 38, 7583999, 'sinh', 'test@gmail.com', '0944672403', 'fsfsd', 1, 1, '2142', 2, 1, '2023-11-24 02:57:20', '2023-11-24 03:07:48'),
(98, 38, 17717760, 'sinh', 'test@gmail.com', '0944672403', 'áda', 1, 5, NULL, 1, 1, '2023-11-24 03:17:40', NULL),
(99, 38, 17717760, 'sinh', 'test@gmail.com', '0944672403', 'áda', 4, 42, NULL, 1, 1, '2023-11-24 03:28:43', NULL),
(100, 38, 17717760, 'sinh', 'test@gmail.com', '0944672403', 'áda', 4, 42, NULL, 1, 1, '2023-11-24 03:31:25', NULL),
(101, 38, 17717760, 'sinh', 'test@gmail.com', '0944672403', 'áda', 4, 42, NULL, 3, 1, '2023-11-24 03:33:32', '2023-11-24 06:24:13'),
(102, 38, 7583999, 'sinh', 'test@gmail.com', '0944672403', 'sdas', 1, 4, NULL, 2, 1, '2023-11-24 06:19:10', '2023-11-24 07:01:59'),
(103, 38, 7583999, 'sinh', 'test@gmail.com', '0944672403', 'vnua', 1, 4, NULL, 1, 1, '2023-11-30 19:40:01', NULL),
(104, 38, 22751997, 'sinh', 'test@gmail.com', '0944672403', 'vnua', 4, 40, NULL, 1, 1, '2023-11-30 19:50:35', NULL),
(105, 38, 22751997, 'sinh', 'test@gmail.com', '0944672403', 'vnua', 1, 2, NULL, 2, 1, '2023-11-30 21:08:25', '2023-12-01 01:50:15'),
(106, 38, 4800000, 'sinh', 'test@gmail.com', '0944672403', 'trâu quỳ, gia lâm, hn', 4, 43, 'áda', 1, 1, '2023-12-01 23:05:59', NULL),
(107, 38, 4800000, 'sinh', 'test@gmail.com', '0944672403', 'trâu quỳ, gia lâm, hn', 8, 70, 'ađá', 1, 1, '2023-12-01 23:06:55', NULL),
(108, 38, 15167998, 'sinh', 'test@gmail.com', '0944672403', 'trâu quỳ, gia lâm, hn', 1, 3, 'abc', 2, 1, '2023-12-01 23:08:55', '2023-12-01 23:09:39'),
(109, 38, 15167998, 'sinh', 'test@gmail.com', '0944672403', 'trâu quỳ, gia lâm, hn', 1, 3, 'abc', 1, 1, '2023-12-01 23:12:53', NULL),
(110, 38, 15167998, 'sinh', 'test@gmail.com', '0944672403', 'trâu quỳ, gia lâm, hn', 8, 70, NULL, 1, 1, '2023-12-01 23:13:31', NULL),
(111, 38, 15167998, 'sinh', 'test@gmail.com', '0944672403', 'trâu quỳ, gia lâm, hn', 14, 116, NULL, 1, 1, '2023-12-01 23:17:35', NULL),
(112, 38, 15167998, 'sinh', 'test@gmail.com', '0944672403', 'trâu quỳ, gia lâm, hn', 14, 116, NULL, 1, 1, '2023-12-01 23:17:56', NULL),
(113, 38, 15167998, 'sinh', 'test@gmail.com', '0944672403', 'trâu quỳ, gia lâm, hn', 14, 116, NULL, 1, 1, '2023-12-01 23:18:21', NULL),
(114, 38, 15167998, 'sinh', 'test@gmail.com', '0944672403', 'trâu quỳ, gia lâm, hn', 14, 116, NULL, 1, 1, '2023-12-01 23:18:45', NULL),
(115, 38, 15167998, 'sinh', 'test@gmail.com', '0944672403', 'trâu quỳ, gia lâm, hn', 14, 116, NULL, 1, 1, '2023-12-01 23:19:19', NULL),
(116, 38, 7583999, 'sinh', 'test@gmail.com', '0944672403', 'trâu quỳ, gia lâm, hn', 8, 70, NULL, 1, 1, '2023-12-01 23:22:39', NULL),
(117, 38, 7583999, 'sinh', 'test@gmail.com', '0944672403', 'trâu quỳ, gia lâm, hn', 4, 40, NULL, 1, 1, '2023-12-01 23:25:08', NULL),
(118, 38, 7583999, 'sinh', 'test@gmail.com', '0944672403', 'trâu quỳ, gia lâm, hn', 12, 105, NULL, 1, 1, '2023-12-01 23:26:05', NULL),
(119, 38, 7583999, 'sinh', 'test@gmail.com', '0944672403', 'trâu quỳ, gia lâm, hn', 12, 105, NULL, 1, 1, '2023-12-01 23:29:05', NULL),
(120, 38, 7583999, 'sinh', 'test@gmail.com', '0944672403', 'trâu quỳ, gia lâm, hn', 12, 105, NULL, 1, 1, '2023-12-01 23:29:24', NULL),
(121, 38, 7583999, 'sinh', 'test@gmail.com', '0944672403', 'trâu quỳ, gia lâm, hn', 10, 80, NULL, 1, 1, '2023-12-01 23:31:22', NULL),
(122, 38, 7583999, 'sinh', 'test@gmail.com', '0944672403', 'trâu quỳ, gia lâm, hn', 10, 80, NULL, 1, 1, '2023-12-01 23:35:33', NULL),
(123, 38, 7583999, 'sinh', 'test@gmail.com', '0944672403', 'trâu quỳ, gia lâm, hn', 12, 105, NULL, 1, 1, '2023-12-01 23:36:30', NULL),
(124, 38, 7583999, 'sinh', 'test@gmail.com', '0944672403', 'trâu quỳ, gia lâm, hn', 12, 105, NULL, 1, 1, '2023-12-01 23:36:48', NULL),
(125, 38, 7583999, 'sinh', 'test@gmail.com', '0944672403', 'trâu quỳ, gia lâm, hn', 11, 94, NULL, 1, 1, '2023-12-01 23:41:12', NULL),
(126, 38, 7583999, 'sinh', 'test@gmail.com', '0944672403', 'trâu quỳ, gia lâm, hn', 11, 94, NULL, 1, 1, '2023-12-01 23:41:31', NULL),
(127, 38, 7583999, 'sinh', 'test@gmail.com', '0944672403', 'trâu quỳ, gia lâm, hn', 15, 132, NULL, 1, 1, '2023-12-01 23:43:01', NULL),
(128, 38, 7583999, 'sinh', 'test@gmail.com', '0944672403', 'trâu quỳ, gia lâm, hn', 15, 132, NULL, 1, 1, '2023-12-01 23:43:49', NULL),
(129, 38, 7583999, 'sinh', 'test@gmail.com', '0944672403', 'trâu quỳ, gia lâm, hn', 15, 132, NULL, 1, 1, '2023-12-01 23:44:25', NULL),
(130, 38, 7583999, 'sinh', 'test@gmail.com', '0944672403', 'trâu quỳ, gia lâm, hn', 8, 70, NULL, 1, 1, '2023-12-01 23:45:04', NULL),
(131, 38, 7583999, 'sinh', 'test@gmail.com', '0944672403', 'trâu quỳ, gia lâm, hn', 8, 70, NULL, 1, 1, '2023-12-01 23:49:46', NULL),
(132, 38, 7583999, 'sinh', 'test@gmail.com', '0944672403', 'trâu quỳ, gia lâm, hn', 6, 58, NULL, 1, 1, '2023-12-01 23:55:40', NULL),
(133, 38, 15167998, 'sinh', 'test@gmail.com', '0944672403', 'trâu quỳ, gia lâm, hn', 8, 70, NULL, 1, 1, '2023-12-02 00:01:21', NULL),
(134, 38, 2989800, 'sinh', 'test@gmail.com', '0944672403', 'trâu quỳ, gia lâm, hn', 1, 2, NULL, 1, 1, '2023-12-02 00:02:46', NULL),
(135, 38, 2989800, 'sinh', 'test@gmail.com', '0944672403', 'trâu quỳ, gia lâm, hn', 10, 87, NULL, 1, 1, '2023-12-02 00:04:20', NULL),
(136, 38, 15167998, 'sinh', 'test@gmail.com', '0944672403', 'trâu quỳ, gia lâm, hn', 12, 105, NULL, 3, 1, '2023-12-02 00:06:17', '2023-12-02 00:07:24'),
(137, 38, 15167998, 'sinh', 'test@gmail.com', '0944672403', 'ssda', 12, 108, NULL, 1, 1, '2023-12-02 00:42:40', NULL),
(138, 38, 15167998, 'sinh', 'test@gmail.com', '0944672403', 'ádas', 6, 65, NULL, 1, 1, '2023-12-02 00:46:24', NULL),
(139, 38, 7583999, 'sinh', 'test@gmail.com', '0944672403', 'bac', 4, 40, NULL, 1, 1, '2023-12-02 19:27:01', NULL),
(140, 38, 45503994, 'sinh', 'test@gmail.com', '0944672403', 'abc', 10, 80, NULL, -1, 1, '2023-12-02 19:31:53', '2023-12-02 20:01:40'),
(141, 38, 30335996, 'sinh', 'test@gmail.com', '0944672403', 'abc', 11, 94, NULL, -1, 1, '2023-12-02 19:34:33', '2023-12-02 20:00:55'),
(142, 38, 43500000, 'sinh', 'test@gmail.com', '0944672403', 'sfasf', 1, 1, NULL, -1, 1, '2023-12-02 20:30:10', '2023-12-02 20:32:20'),
(143, 38, 0, 'sinh', 'test@gmail.com', '0944672403', 'sfasf', 1, 1, NULL, 2, 1, '2023-12-02 20:30:11', '2023-12-02 20:55:18'),
(144, 38, 37919995, 'sinh1', 'test@gmail.com', '0944672403', 'dá', 12, 105, NULL, -1, 1, '2023-12-02 20:53:55', '2023-12-02 20:55:54'),
(145, 38, 17400000, 'sinh', 'test@gmail.com', '0944672403', 'sấd', 6, 58, NULL, -1, 1, '2023-12-02 20:57:12', '2023-12-02 20:58:06'),
(146, 38, 7583999, 'sinh', 'test@gmail.com', '0944672403', 'sadas', 6, 58, NULL, 1, 1, '2023-12-02 21:01:07', NULL),
(147, 38, 7583999, 'sinh', 'test@gmail.com', '0944672403', 'ád', 4, 40, NULL, 1, 1, '2023-12-02 21:02:04', NULL),
(148, 38, 1455000, 'sinh', 'test@gmail.com', '0944672403', 'dsafsa', 4, 43, NULL, 1, 1, '2023-12-02 21:08:16', NULL),
(149, 38, 13050000, 'sinh', 'test@gmail.com', '0944672403', 'asas', 10, 84, NULL, -1, 1, '2023-12-03 01:39:55', '2023-12-03 01:42:27'),
(150, 38, 8700000, 'sinh', 'test@gmail.com', '0944672403', 'sad', 2, 24, NULL, -1, 1, '2023-12-03 09:41:46', '2023-12-03 09:42:32'),
(151, 38, 21750000, 'sinh', 'test@gmail.com', '0944672403', 'ádasd', 1, 1, 'ádasd', 1, 1, '2023-12-10 05:56:18', '2023-12-10 05:56:18'),
(152, 38, 21750000, 'sinh', 'test@gmail.com', '0944672403', 'ádasd', 6, 61, NULL, 2, 1, '2023-12-10 05:59:38', '2023-12-14 09:42:36'),
(153, 38, 15527500, 'sinh', 'test@gmail.com', '0944672403', 'sàdsf', 6, 61, NULL, 2, 1, '2023-12-14 08:24:54', '2023-12-14 08:26:16'),
(154, 38, 7583999, 'sinh', 'test@gmail.com', '0944672403', 'ádas', 1, 1, NULL, 1, 1, '2023-12-17 00:02:09', '2023-12-17 00:02:09'),
(155, 38, 7583999, 'sinh', 'test@gmail.com', '0944672403', 'dá', 4, 0, NULL, 1, 1, '2023-12-17 00:05:00', '2023-12-17 00:05:00'),
(156, 38, 7583999, 'sinh', 'test@gmail.com', '0944672403', 'ádas', 6, 61, NULL, 1, 1, '2023-12-17 00:11:36', '2023-12-17 00:11:36'),
(157, 38, 7583999, 'sinh', 'test@gmail.com', '0944672403', 'sdas', 2, 26, NULL, 1, 1, '2023-12-17 00:12:23', '2023-12-17 00:12:23'),
(158, 38, 391500, 'sinh', 'test@gmail.com', '0944672403', 'ád', 2, 24, NULL, 1, 1, '2023-12-18 02:17:34', '2023-12-18 02:17:34'),
(159, 38, 391500, 'sinh', 'test@gmail.com', '0944672403', 'an đào', 2, 28, '12sda', 2, 1, '2023-12-18 02:19:16', '2023-12-18 22:29:07'),
(160, 38, 1455000, 'sinh', 'test@gmail.com', '0944672403', 'adssad', 2, 27, NULL, 3, 1, '2023-12-18 04:04:13', '2023-12-18 05:30:03'),
(161, 38, 10878000, 'sinh', 'test@gmail.com', '0944672403', 'trâu quỳ gia lâm', 1, 3, NULL, 2, 1, '2023-12-18 07:32:28', '2023-12-18 22:29:00'),
(162, 38, 22751997, 'sinh', 'test@gmail.com', '0944672403', 'sadgfsa', 6, 60, NULL, -1, 1, '2023-12-18 07:34:32', '2023-12-18 07:34:59'),
(163, 38, 21600000, 'sinh', 'test@gmail.com', '0944672403', 'trâu quỳ', 1, 1, NULL, -1, 1, '2023-12-21 20:15:16', '2023-12-21 20:17:35'),
(164, 38, 7200000, 'sinh', 'test@gmail.com', '0944672403', 'ádsaf', 1, 19, NULL, 1, 1, '2024-01-01 17:54:30', '2024-01-01 17:54:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `log_login` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_original` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_comment` tinyint(4) NOT NULL DEFAULT 0,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `provider`, `provider_id`, `log_login`, `google_id`, `avatar_original`, `count_comment`, `address`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(38, 'sinh', 'test@gmail.com', NULL, '$2y$10$Fc405sqFFlXlIp5sAVfDC.Foz5N.wfGLOktrf33obOnI6NoSVEZfu', '0944672403', NULL, NULL, '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Edge\",\"browser_ver\":\"119.0.0.0\",\"time\":\"2023-11-10T03:45:34.386044Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Edge\",\"browser_ver\":\"119.0.0.0\",\"time\":\"2023-11-10T10:34:20.590676Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Edge\",\"browser_ver\":\"119.0.0.0\",\"time\":\"2023-11-14T05:52:40.163238Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Edge\",\"browser_ver\":\"119.0.0.0\",\"time\":\"2023-11-17T01:57:21.977736Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Edge\",\"browser_ver\":\"119.0.0.0\",\"time\":\"2023-11-17T05:18:38.016022Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Edge\",\"browser_ver\":\"119.0.0.0\",\"time\":\"2023-11-24T09:08:39.625301Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Edge\",\"browser_ver\":\"119.0.0.0\",\"time\":\"2023-11-30T09:36:34.967451Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Edge\",\"browser_ver\":\"119.0.0.0\",\"time\":\"2023-11-30T09:48:07.874623Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Edge\",\"browser_ver\":\"119.0.0.0\",\"time\":\"2023-11-30T10:14:08.000296Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Edge\",\"browser_ver\":\"119.0.0.0\",\"time\":\"2023-11-30T10:20:45.975169Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Edge\",\"browser_ver\":\"119.0.0.0\",\"time\":\"2023-11-30T10:26:36.947816Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Edge\",\"browser_ver\":\"119.0.0.0\",\"time\":\"2023-11-30T10:45:37.161564Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Edge\",\"browser_ver\":\"119.0.0.0\",\"time\":\"2023-12-01T02:39:37.633903Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Edge\",\"browser_ver\":\"119.0.0.0\",\"time\":\"2023-12-02T02:30:24.728470Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Edge\",\"browser_ver\":\"119.0.0.0\",\"time\":\"2023-12-02T03:13:30.930059Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Edge\",\"browser_ver\":\"119.0.0.0\",\"time\":\"2023-12-02T06:04:28.774684Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Edge\",\"browser_ver\":\"119.0.0.0\",\"time\":\"2023-12-02T07:17:34.341291Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Edge\",\"browser_ver\":\"119.0.0.0\",\"time\":\"2023-12-03T02:26:40.706905Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Edge\",\"browser_ver\":\"119.0.0.0\",\"time\":\"2023-12-03T08:39:05.908918Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Edge\",\"browser_ver\":\"119.0.0.0\",\"time\":\"2023-12-03T16:34:43.163038Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Edge\",\"browser_ver\":\"120.0.0.0\",\"time\":\"2023-12-09T16:00:41.290876Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Edge\",\"browser_ver\":\"120.0.0.0\",\"time\":\"2023-12-10T12:39:25.427145Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Edge\",\"browser_ver\":\"120.0.0.0\",\"time\":\"2023-12-11T14:06:42.825670Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Edge\",\"browser_ver\":\"120.0.0.0\",\"time\":\"2023-12-12T18:41:08.516416Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Edge\",\"browser_ver\":\"120.0.0.0\",\"time\":\"2023-12-14T15:13:24.380965Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Edge\",\"browser_ver\":\"120.0.0.0\",\"time\":\"2023-12-17T06:37:53.020022Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Edge\",\"browser_ver\":\"120.0.0.0\",\"time\":\"2023-12-17T07:10:50.241498Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Edge\",\"browser_ver\":\"120.0.0.0\",\"time\":\"2023-12-17T08:33:37.446505Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Edge\",\"browser_ver\":\"120.0.0.0\",\"time\":\"2023-12-17T23:35:48.319025Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Edge\",\"browser_ver\":\"120.0.0.0\",\"time\":\"2023-12-18T06:14:14.765866Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Edge\",\"browser_ver\":\"120.0.0.0\",\"time\":\"2023-12-18T09:12:42.570026Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Edge\",\"browser_ver\":\"120.0.0.0\",\"time\":\"2023-12-18T14:30:44.140697Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Edge\",\"browser_ver\":\"120.0.0.0\",\"time\":\"2023-12-21T04:52:03.565024Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Edge\",\"browser_ver\":\"120.0.0.0\",\"time\":\"2023-12-21T07:58:17.663573Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Edge\",\"browser_ver\":\"120.0.0.0\",\"time\":\"2023-12-22T02:42:50.826284Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Edge\",\"browser_ver\":\"120.0.0.0\",\"time\":\"2024-01-02T00:54:00.471605Z\"}]', NULL, NULL, 0, NULL, '1701484541.jpg', NULL, '2023-10-24 23:59:39', '2023-12-17 01:33:55'),
(39, 'abc', 'abc@gmail.com', NULL, '$2y$10$UE5Wjjq5KBkMCti3GV.xYe9PB4M9RLYUJobsBxVl4Bp/CxTz568J6', '0123456789', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-12-11 08:06:10', NULL),
(45, 'sinh234', 'sinh234@gmail.com', NULL, '$2y$10$C9Jdb7qwXy3JvmpNsM8zO.veY3osrRvQjz1Y3MH/5sr8qn.z.JTSm', '0911364131', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-12-20 23:51:07', NULL),
(46, 'thu123', 'thu123@gmail.com', NULL, '$2y$10$8FzZL9X8Kv43p1LKblAgCee.eTR.it/EouuC/uVwXtIitpORoIjoK', '0944672491', NULL, NULL, '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Edge\",\"browser_ver\":\"120.0.0.0\",\"time\":\"2023-12-21T06:52:50.700695Z\"}]', NULL, NULL, 0, NULL, NULL, NULL, '2023-12-20 23:52:38', NULL),
(47, 'thu', 'thu234@gmail.com', NULL, '$2y$10$ReYZnjQ0/8TxjpPlPplc9ObWq4OnGJCEzCV08Z.g.TMqyUOog3vPe', '0944672419', NULL, NULL, NULL, NULL, NULL, 0, NULL, '1703141718.jpg', NULL, '2023-12-20 23:54:17', '2023-12-20 23:55:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_favourite`
--

CREATE TABLE `user_favourite` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uf_product_id` int(11) NOT NULL DEFAULT 0,
  `uf_user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_favourite`
--

INSERT INTO `user_favourite` (`id`, `uf_product_id`, `uf_user_id`) VALUES
(73, 1, 38),
(75, 16, 38),
(78, 17, 38),
(76, 19, 38);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`);

--
-- Chỉ mục cho bảng `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_a_slug_index` (`a_slug`),
  ADD KEY `articles_a_hot_index` (`a_hot`),
  ADD KEY `articles_a_active_index` (`a_active`),
  ADD KEY `articles_a_menu_id_index` (`a_menu_id`);

--
-- Chỉ mục cho bảng `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_atb_name_unique` (`atb_name`),
  ADD KEY `attributes_atb_category_id_index` (`atb_category_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_c_slug_unique` (`c_slug`),
  ADD KEY `categories_c_parent_id_index` (`c_parent_id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_cmt_parent_id_index` (`cmt_parent_id`),
  ADD KEY `comments_cmt_product_id_index` (`cmt_product_id`),
  ADD KEY `comments_cmt_admin_id_index` (`cmt_admin_id`),
  ADD KEY `comments_cmt_user_id_index` (`cmt_user_id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_district`
--
ALTER TABLE `db_district`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matp` (`provinceid`);

--
-- Chỉ mục cho bảng `db_province`
--
ALTER TABLE `db_province`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keywords_k_slug_unique` (`k_slug`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_mn_slug_unique` (`mn_slug`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_pro_slug_unique` (`pro_slug`),
  ADD KEY `products_pro_hot_index` (`pro_hot`),
  ADD KEY `products_pro_active_index` (`pro_active`);

--
-- Chỉ mục cho bảng `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_attributes_pa_product_id_index` (`pa_product_id`),
  ADD KEY `products_attributes_pa_attribute_id_index` (`pa_attribute_id`);

--
-- Chỉ mục cho bảng `products_keywords`
--
ALTER TABLE `products_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_keywords_pk_product_id_index` (`pk_product_id`),
  ADD KEY `products_keywords_pk_keyword_id_index` (`pk_keyword_id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_accounts_provider_user_id_provider_unique` (`provider_user_id`,`provider`);

--
-- Chỉ mục cho bảng `statics`
--
ALTER TABLE `statics`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tst_user_id_index` (`tst_user_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Chỉ mục cho bảng `user_favourite`
--
ALTER TABLE `user_favourite`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_favourite_uf_product_id_uf_user_id_unique` (`uf_product_id`,`uf_user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `keywords`
--
ALTER TABLE `keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT cho bảng `products_keywords`
--
ALTER TABLE `products_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `social_accounts`
--
ALTER TABLE `social_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `statics`
--
ALTER TABLE `statics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `user_favourite`
--
ALTER TABLE `user_favourite`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `db_district`
--
ALTER TABLE `db_district`
  ADD CONSTRAINT `db_district_ibfk_1` FOREIGN KEY (`provinceid`) REFERENCES `db_province` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
