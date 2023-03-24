-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 25, 2020 lúc 02:57 PM
-- Phiên bản máy phục vụ: 10.4.13-MariaDB
-- Phiên bản PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `xuhaostore`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_category`
--

CREATE TABLE `db_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 NOT NULL,
  `level` int(2) NOT NULL,
  `parentid` int(11) NOT NULL,
  `orders` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_category`
--

INSERT INTO `db_category` (`id`, `name`, `link`, `level`, `parentid`, `orders`, `created_at`, `created_by`, `updated_at`, `updated_by`, `trash`, `status`) VALUES
(30, 'Mỹ phẩm chăm sóc da', 'my-pham-cham-soc-da', 1, 0, '0', '2020-10-24 18:02:43', '1', '2020-10-24 18:02:43', '1', 1, 1),
(31, 'Mỹ phẩm trang điểm màu sonya', 'my-pham-trang-diem-mau-sonya', 1, 0, '1', '2020-10-24 18:03:54', '1', '2020-10-24 18:03:54', '1', 1, 1),
(32, 'Nước uống dinh dưỡng nha đam', 'nuoc-uong-dinh-duong-nha-dam', 1, 0, '2', '2020-10-24 18:04:24', '1', '2020-10-24 18:04:24', '1', 1, 1),
(33, 'Thực phẩm bổ sung dinh dưỡng', 'thuc-pham-bo-sung-dinh-duong', 1, 0, '3', '2020-10-24 18:04:43', '1', '2020-10-24 18:04:43', '1', 1, 1),
(34, 'Các sản phảm từ mật ong', 'cac-san-pham-tu-mat-ong', 1, 0, '4', '2020-10-24 18:05:04', '1', '2020-10-24 18:05:04', '1', 1, 1),
(35, 'Tinh dầu thơm', 'tinh-dau-thom', 1, 0, '5', '2020-10-24 18:05:21', '1', '2020-10-24 18:05:21', '1', 1, 1),
(36, 'Chăm sóc da VIP', 'cham-soc-da-vip', 2, 30, '1', '2020-10-25 10:16:19', '1', '2020-10-25 10:16:19', '1', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_config`
--

CREATE TABLE `db_config` (
  `id` int(11) NOT NULL,
  `mail_smtp` varchar(68) CHARACTER SET utf8 NOT NULL,
  `mail_smtp_password` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Password mail shop',
  `mail_noreply` varchar(68) CHARACTER SET utf8 NOT NULL,
  `priceShip` mediumtext CHARACTER SET utf8 NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_config`
--

INSERT INTO `db_config` (`id`, `mail_smtp`, `mail_smtp_password`, `mail_noreply`, `priceShip`, `title`, `description`) VALUES
(1, 'doviethieu9999@gmail.com', 'doviethieu', 'doviethieu9999@gmail.com', '30000', 'Didongsmart website bán hàng.', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_contact`
--

CREATE TABLE `db_contact` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `trash` int(11) NOT NULL DEFAULT 1,
  `fullname` varchar(80) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_contact`
--

INSERT INTO `db_contact` (`id`, `title`, `phone`, `email`, `content`, `created_at`, `status`, `trash`, `fullname`) VALUES
(13, 'Góp ý', '0332132132', 'thanhhung@gmail.com', 'Mong website ngày càng phát triển', '2020/7/14', 1, 1, 'Thanh Hưng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_content`
--

CREATE TABLE `db_content` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 NOT NULL,
  `introtext` mediumtext CHARACTER SET utf8 NOT NULL,
  `fulltext` mediumtext CHARACTER SET utf8 NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(50) CHARACTER SET utf8 NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` varchar(50) CHARACTER SET utf8 NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_content`
--

INSERT INTO `db_content` (`id`, `title`, `alias`, `introtext`, `fulltext`, `img`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(12, 'CÁC BƯỚC DƯỠNG DA CƠ BẢN MÀ BẤT KÌ NGƯỜI PHỤ NỮ NÀO CŨNG PHẢI AM TƯỜNG', 'cac-buoc-duong-da-co-ban-ma-bat-ki-nguoi-phu-nu-nao-cung-phai-am-tuong', '', '<h2><strong>1. C&aacute;c bước dưỡng da cơ bản:</strong></h2>\r\n\r\n<p>M&igrave;nh sẽ chia sẻ cụ thể c&aacute;c bước dưỡng da ban ng&agrave;y v&agrave; c&aacute;c bước dưỡng da ban đ&ecirc;m nhưng trước ti&ecirc;n m&igrave;nh muốn tr&igrave;nh b&agrave;y 3 bước thiết yếu v&agrave; quan trọng nhất để gi&uacute;p bạn c&oacute; l&agrave;n da đẹp.</p>\r\n\r\n<ul>\r\n	<li><strong>L&agrave;m sạch bề mặt da:</strong></li>\r\n</ul>\r\n\r\n<p>L&agrave;m sạch da l&agrave; một bước v&ocirc; c&ugrave;ng quan trọng v&igrave; n&oacute; gi&uacute;p loại bỏ c&aacute;c tế b&agrave;o chết tr&ecirc;n bề mặt da, rửa sạch bụi bẩn trong c&aacute;c lỗ ch&acirc;n l&ocirc;ng. Những bụi bẩn n&agrave;y nếu kh&ocirc;ng được tẩy sạch, qua thời gian ch&uacute;ng sẽ t&iacute;ch tụ dần v&agrave; l&agrave;m b&iacute;t lỗ ch&acirc;n l&ocirc;ng, ngăn chặn sự b&agrave;i tiết của da, l&agrave;m da trở n&ecirc;n sỉn m&agrave;u v&agrave; đen sạm.</p>\r\n\r\n<p><img src=\"http://file.hstatic.net/1000340602/file/cham-soc-da_1024x1024.jpg\" /></p>\r\n\r\n<p>Về c&aacute;c chất được d&ugrave;ng để l&agrave;m sạch da, c&aacute;c chuy&ecirc;n gia khuy&ecirc;n bạn n&ecirc;n tr&aacute;nh d&ugrave;ng c&aacute;c loại sữa rửa mặt c&oacute; độ pH cao. C&aacute;c loại c&oacute; pH cao, c&oacute; t&iacute;nh kiềm sẽ l&agrave;m cho da bị kh&ocirc; v&agrave; l&agrave;m giảm tuổi thọ của c&aacute;c tế b&agrave;o da. Bạn tốt nhất n&ecirc;n sử dụng c&aacute;c loại sửa rửa mặt c&oacute; độ pH gần với khoảng pH của l&agrave;n da (khoảng mức 5).</p>\r\n\r\n<p>C&aacute;c chất tẩy rửa tốt nhất cho da l&agrave; những sản phẩm tự nhi&ecirc;n như c&aacute;c sản phẩm c&oacute; chứa c&aacute;c loại dầu thực vật như dầu dừa. C&aacute;c ph&acirc;n tử c&oacute; trong dầu dừa c&oacute; khả năng kết hợp với b&atilde; nhờn cho ph&eacute;p ch&uacute;ng dễ d&agrave;ng h&ograve;a tan với nước v&agrave; được rửa sạch dịu nhẹ khỏi bề mặt da. C&aacute;c loại chất l&agrave;m sạch kh&aacute;c tương tự như dầu vừng hoặc dầu cọ cũng l&agrave;m được điều đ&oacute; nhờ axit stearic c&oacute; trong th&agrave;nh phần của những loại dầu n&agrave;y. Những chất l&agrave;m sạch tự nhi&ecirc;n n&agrave;y cũng rất an to&agrave;n cho da v&igrave; độ pH tương đối thấp.</p>\r\n\r\n<p>Một sản phẩm hữu cơ kh&aacute;c kh&aacute; mới mẽ nhưng ng&agrave;y c&agrave;ng trở n&ecirc;n hữu &iacute;ch trong c&ocirc;ng cuộc l&agrave;m đẹp của c&aacute;c chị em&hellip;l&agrave; rong biển. H&agrave;m lượng kho&aacute;ng chất cao c&oacute; trong rong biển k&iacute;ch th&iacute;ch sự lưu th&ocirc;ng, gi&uacute;p loại bỏ c&aacute;c chất độc b&aacute;m tr&ecirc;n bề mặt da, cho l&agrave;n da lu&ocirc;n mịn m&agrave;ng. Hơn nữa, rong biển c&ograve;n tăng cường chức năng miễn dịch v&agrave; tự chữa bệnh của da bằng c&aacute;ch cung cấp những dưỡng chất thiết yếu nhất m&agrave; l&agrave;n da bạn đang cần.</p>\r\n\r\n<p>Một nghi&ecirc;n cứu đ&atilde; cho ra kết quả kh&aacute; bất ngờ l&agrave; mặc d&ugrave; phụ nữ chi ti&ecirc;u đ&aacute;ng kể tiền bạc v&agrave; thời gian để l&agrave;m đẹp v&agrave; chăm s&oacute;c da, tuy nhi&ecirc;n l&agrave;n da tr&ecirc;n mặt của nam giới lại mượt m&agrave; v&agrave; &iacute;t gặp c&aacute;c vấn đề li&ecirc;n quan đến da so với phụ nữ. C&aacute;c chuy&ecirc;n gia cho rằng, đ&agrave;n &ocirc;ng tẩy tế b&agrave;o chết tr&ecirc;n mặt mỗi ng&agrave;y th&ocirc;ng qua việc cạo r&acirc;u. C&aacute;c dao cạo đ&atilde; loại bỏ tế b&agrave;o chết, gi&uacute;p da thải chất thải dễ d&agrave;ng v&agrave; trở n&ecirc;n th&ocirc;ng tho&aacute;ng hơn. Vậy n&ecirc;n, c&aacute;c chị em cũng c&oacute; thể &aacute;p dụng c&aacute;ch tẩy tế b&agrave;o chết n&agrave;y, &ldquo;cạo&rdquo; đi những tế b&agrave;o chết bằng bột yến mạch, bột c&aacute;m gạo, bột đậu đỏ, bột đậu xanh,&hellip;Những loại bột thi&ecirc;n nhi&ecirc;n n&agrave;y ngo&agrave;i gi&uacute;p tẩy tế b&agrave;o chết hiệu quả c&ograve;n gi&uacute;p chị em c&oacute; được một l&agrave;n da trắng hồng, mịn m&agrave;ng v&agrave; tất nhi&ecirc;n l&agrave; kh&ocirc;ng phải lo lắng đến việc da bị k&iacute;ch ứng hay bị b&agrave;o m&ograve;n.</p>\r\n\r\n<ul>\r\n	<li><strong>Toner:</strong></li>\r\n</ul>\r\n\r\n<p>Nếu bước l&agrave;m sạch gi&uacute;p bạn loại bỏ lớp trang điểm v&agrave; lớp tế b&agrave;o chết th&igrave; Toner sẽ gi&uacute;p l&agrave;m m&aacute;t, se da v&agrave; kh&ocirc;i phục lại sụ c&acirc;n bằng của độ pH tr&ecirc;n da, đồng thời Toner cũng gi&uacute;p loại bỏ phần trang điểm c&ograve;n s&oacute;t lại trong lỗ ch&acirc;n l&ocirc;ng.</p>\r\n\r\n<p>Toner hoặc c&aacute;c loại nước hoa hồng được thoa l&ecirc;n da sẽ gi&uacute;p l&agrave;m se da, se kh&iacute;t lỗ ch&acirc;n l&ocirc;ng v&agrave; tạo một lớp chắn bảo vệ tế b&agrave;o da khỏi những c&aacute;c độc tố c&oacute; trong kh&ocirc;ng kh&iacute;.</p>\r\n\r\n<p>Khi sử dụng c&aacute;c d&ograve;ng sản phẩm toner bạn n&ecirc;n hạn chế những sản phẩm c&oacute; chứa cồn v&igrave; n&oacute; sẽ l&agrave;m tốn hại đến collagen h&ograve;a tan dưới bề mặt da. Tốt nhất n&ecirc;n sử dụng c&aacute;c loại toner được chiết xuất từ thảo mộc như hạt dẽ, mật ong, chanh, thường xu&acirc;n, x&ocirc; thơm.</p>\r\n\r\n<p>Những chất dưỡng ẩm như vitamin E, mật ong sẽ gi&uacute;p c&acirc;n bằng lại l&agrave;n da kh&ocirc; sau bước l&agrave;m sạch. Để sử dụng, bạn c&oacute; thể d&ugrave;ng b&ocirc;ng g&ograve;n để thấm đều l&ecirc;n da hoặc d&ugrave;ng b&igrave;nh xịt v&agrave; phun nhẹ l&ecirc;n mặt.</p>\r\n\r\n<p><img src=\"http://file.hstatic.net/1000340602/file/4163-_toner_nha_dam_100m.03_grande.jpg\" /></p>\r\n\r\n<p>Một gợi &yacute; kh&aacute; mới mẽ cho bạn l&agrave; toner hoa hồng tr&agrave; xanh. Với chiết xuất từ những chiếc l&aacute; tr&agrave; tươi gi&agrave;u dưỡng chất, kh&ocirc;ng chỉ gi&uacute;p l&agrave;m sạch s&acirc;u lỗ ch&acirc;n l&ocirc;ng, loại bỏ ho&agrave;n to&agrave;n cặn bẩn, dầu thừa c&ograve;n s&oacute;t lại m&agrave; hương hoa hồng dịu nhẹ c&ograve;n cho bạn cảm gi&aacute;c dẽ chịu, thư gi&atilde;n mỗi khi sử dụng.</p>\r\n\r\n<ul>\r\n	<li><strong>Dưỡng ẩm:</strong></li>\r\n</ul>\r\n\r\n<p>Nước l&agrave; một th&agrave;nh phần b&iacute; mật giữ cho l&agrave;n da lu&ocirc;n tươi tắn, mềm ẩm v&agrave; đ&agrave;n hồi tốt. N&oacute; cũng gi&uacute;p ngăn ngừa t&igrave;nh trạng da kh&ocirc;, nứt nẻ&nbsp; v&agrave; l&agrave;m chậm qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a. Nhờ đ&oacute; l&agrave;n da đủ ẩm, trở n&ecirc;n s&aacute;ng mịn v&agrave; trẻ trung.</p>\r\n\r\n<p>Nước di chuyển khắp bề mặt cơ thể v&agrave; xảy ra một hiện tượng được gọi l&agrave; &ldquo;sự mất nước qua da&rdquo; để l&agrave;n da lu&ocirc;n được đầy đặn v&agrave; căng mịn. Nhưng nếu cơ thể của bạn bị thiếu nước, bề mặt da sẽ trở n&ecirc;n kh&ocirc;, c&aacute;c li&ecirc;n kết collagen dễ d&agrave;ng bị đứt g&atilde;y.</p>\r\n\r\n<p>C&aacute;ch tốt nhất l&agrave; bạn n&ecirc;n uống đủ nước mỗi ng&agrave;y, ăn c&aacute;c loại tr&aacute;i c&acirc;y, rau quả chứa nhiều nước để c&acirc;n bằng lại độ ẩm, hạn chế t&igrave;nh trạng da kh&ocirc; hoặc da dầu. Đ&acirc;y l&agrave; một điều v&ocirc; c&ugrave;ng cần thiết trong cuộc sống vừa ngăn chặn cơ thể t&igrave;nh trạng cơ thể mất nước vừa giữ cho l&agrave;n da bạn lu&ocirc;n tươi tắn.</p>\r\n\r\n<p>Ngo&agrave;i cung cấp nước từ b&ecirc;n trong, l&agrave;n da bạn cũng rất cần được cấp nước trực tiếp từ b&ecirc;n ngo&agrave;i. Kem dưỡng ẩm hoặc chất giữ ẩm sẽ t&iacute;ch trữ nước v&agrave; giữ nước tr&ecirc;n bề mặt da. Kh&ocirc;ng chỉ gi&uacute;p da s&aacute;ng hơn m&agrave; kem dưỡng c&ograve;n gi&uacute;p cung cấp một số tinh chất thiết yếu để l&agrave;n da khỏe mạnh.</p>\r\n\r\n<p>Gel nha đam Milaganics chiết xuất từ c&acirc;y nha đam l&agrave; một lựa chọn tốt cho bạn. Từ xa xưa, nha đam đ&atilde; được sử dụng v&agrave; đem lại những kết quả tuyệt vời trong những vấn đề li&ecirc;n quan đến da như da kh&ocirc;, bỏng, c&ocirc;n tr&ugrave;ng cắn, mụn trứng c&aacute;, vết xước,&hellip;</p>\r\n\r\n<p><img src=\"http://file.hstatic.net/1000340602/file/4156-xit_khoang_nha_dam_100m.03_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Gel nha đam l&agrave; một loại mặt nạ ngủ tuyệt vời. Sau khi đ&atilde; l&agrave;m sạch v&agrave; sử dụng toner, bạn g&aacute;i n&ecirc;n b&ocirc;i 1 lớp gel nha đam l&ecirc;n mặt trước khi đi ngủ. Buổi s&aacute;ng thức dậy bạn sẽ cảm thấy ngạc nhi&ecirc;n với l&agrave;n da mềm mịn, căng mướt v&agrave; kh&ocirc;ng c&ograve;n tiết nhiều dầu nhờn nữa.</p>\r\n\r\n<h2><strong>1. C&aacute;c bước dưỡng da ban ng&agrave;y:</strong></h2>\r\n\r\n<p>Ban ng&agrave;y l&agrave; khoảng thời gian bạn phải l&agrave;m việc v&agrave; tham gia rất nhiều hoạt động n&ecirc;n l&agrave;n da phải tiếp x&uacute;c với m&ocirc;i trường b&ecirc;n ngo&agrave;i rất nhiều. Tốt nhất bạn n&ecirc;n x&aacute;c định lịch tr&igrave;nh của m&igrave;nh mỗi ng&agrave;y để chăm s&oacute;c cho l&agrave;n da tốt nhất.</p>\r\n\r\n<ul>\r\n	<li><strong>Bước 1: Tập thể dục</strong></li>\r\n</ul>\r\n\r\n<p>Chắc hẳn bạn sẽ ngạc nhi&ecirc;n với bước dưỡng da n&agrave;y nhưng tấp thể dục buổi s&aacute;ng l&agrave; điều cần thiết để c&oacute; một l&agrave;n da đẹp tự nhi&ecirc;n, n&oacute; th&uacute;c đẩy sự tuần ho&agrave;n, l&agrave;m tăng lưu lượng m&aacute;u. Mồ h&ocirc;i sẽ gi&uacute;p tống khứ những chất độc tố c&oacute; trong cơ thể, m&aacute;u được tuần ho&agrave;n tốt sẽ cho bạn một l&agrave;n da hồng h&agrave;o.</p>\r\n\r\n<ul>\r\n	<li><strong>Bước 2: Cung cấp nước</strong></li>\r\n</ul>\r\n\r\n<p>Như ở phần 1 m&igrave;nh đ&atilde; n&oacute;i nước rất quan trọng đối với cơ thể. Thay v&igrave; uống một cốc c&agrave; ph&ecirc; bạn hay uống một đến hai cốc nước ấm. Đ&acirc;y l&agrave; c&aacute;ch cực k&igrave; hữu hiệu để tr&aacute;nh t&igrave;nh trạng mất nước qua da. Uống nước ấm v&agrave;o buổi s&aacute;ng cũng rất tốt cho hệ ti&ecirc;u h&oacute;a của bạn.</p>\r\n\r\n<ul>\r\n	<li><strong>Bước 3: L&agrave;m sạch</strong></li>\r\n</ul>\r\n\r\n<p>Rửa mặt v&agrave;o buổi s&aacute;ng l&agrave; điều rất cần thiết để tẩy sạch những vi khuẩn được sinh ra trong đ&ecirc;m, bụi bẩn hoặc cặn trang điểm c&ograve;n s&oacute;t lại. Những loại sửa rữa mặt c&oacute; độ pH tương ứng với loại da của bạn sẽ gi&uacute;p bạn nhẹ nh&agrave;ng l&agrave;m sạch l&agrave;n da m&agrave; kh&ocirc;ng l&agrave;m da bị kh&ocirc;. Rửa sạch bọt với nước ấm (kh&ocirc;ng n&ecirc;n rửa với nước qu&aacute; n&oacute;ng hoặc qu&aacute; lạnh v&igrave; sẽ l&agrave;m kh&ocirc; da). Lau kh&ocirc; lại bằng khăn mặt mềm.</p>\r\n\r\n<ul>\r\n	<li><strong>Bước 4: Tẩy tế b&agrave;o chết</strong></li>\r\n</ul>\r\n\r\n<p>V&igrave; đ&acirc;y l&agrave; c&aacute;c bước dưỡng da h&agrave;ng ng&agrave;y n&ecirc;n bạn kh&ocirc;ng cần phải chuẩn bị qu&aacute; nhiều &ldquo;nguy&ecirc;n liệu&rdquo; phức tạp. Chuẩn bi một chiếc khăn ấm đ&atilde; được vắt r&aacute;o nước, ch&agrave; x&aacute;t l&ecirc;n mặt theo một v&ograve;ng tr&ograve;n, bắt đầu từ mũi đến mang tai, tr&aacute;n rồi đến cắm. C&aacute;ch đơn giản n&agrave;y sẽ l&agrave;m tế b&agrave;o chết bị bong ra, đồng thời việc xoa b&oacute;p nhẹ nh&agrave;ng cũng gi&uacute;p bạn tr&aacute;nh khỏi t&igrave;nh trạng mặt sưng h&uacute;p v&agrave;o mỗi buổi s&aacute;ng.</p>\r\n\r\n<p><img src=\"http://file.hstatic.net/1000340602/file/tay-te-bao-chet_1024x1024.jpg\" /></p>\r\n\r\n<ul>\r\n	<li><strong>Bước 5: Toner</strong></li>\r\n</ul>\r\n\r\n<p>Ở tr&ecirc;n m&igrave;nh đ&atilde; n&oacute;i đến sự quan trọng của toner, đặc biệt đối với những bạn c&oacute; l&agrave;n da nhờn hoặc bị mụn. V&igrave; toner sẽ gi&uacute;p c&acirc;n bằng l&agrave;n da v&agrave; ngăn chặn t&igrave;nh trạng da sản sinh qu&aacute; nhiều dầu. Một lần nữa, bạn nhớ lựa chọn những tone kh&ocirc;ng chứa cồn v&agrave; h&atilde;y chọn những th&agrave;nh phần được l&agrave;m dịu cho da.</p>\r\n\r\n<p>Để sử dụng bạn cho toner l&ecirc;n miếng b&ocirc;ng g&ograve;n v&agrave; xoa nhẹ nh&agrave;ng l&ecirc;n mặt v&agrave; cổ. Nhớ đừng ch&agrave; mạnh tay bạn nh&eacute;!</p>\r\n\r\n<ul>\r\n	<li><strong>Bước 6: Serum</strong></li>\r\n</ul>\r\n\r\n<p>Bạn nghĩ serum l&agrave; kh&ocirc;ng cần thiết v&agrave; rắc rối nhưng sự thật serum lại cực k&igrave; cần thiết v&agrave; quan trọng. Serum c&oacute; nồng độ c&aacute;c th&agrave;nh phần cao hơn sữa rửa mặt v&agrave; kem dưỡng n&ecirc;n n&oacute; l&agrave; c&aacute;ch ho&agrave;n hảo để gi&uacute;p l&agrave;n da trắng hồng rạng rỡ. Kh&ocirc;ng những vậy c&ograve;n gi&uacute;p t&aacute;i tạo l&agrave;n da bị tổn thương bởi &aacute;nh nắng mặt trời, l&agrave;m giảm thiểu nếp nhăn.</p>\r\n\r\n<p>Cho từ hai đến ba giọt serum ra b&agrave;n tay, ch&agrave; nhẹ nh&agrave;ng giữa hai l&ograve;ng b&agrave;n tay để l&agrave;m ấm serum rồi xoa l&ecirc;n mặt bạn, bắt đầu từ mũi v&agrave; hướng ra b&ecirc;n ngo&agrave;i. L&agrave;m như vậy sẽ gi&uacute;p serum thấm s&acirc;u v&agrave;o l&agrave;n da b&ecirc;n trong.</p>\r\n\r\n<ul>\r\n	<li><strong>Bước 7: Kem chống nắng</strong></li>\r\n</ul>\r\n\r\n<p>D&ugrave; cho buổi s&aacute;ng h&ocirc;m ấy c&oacute; l&agrave; một ng&agrave;y trời đầy u &aacute;m th&igrave; cũng dừng bỏ qua bước d&ugrave;ng kem chống nắng. T&aacute;c động của &aacute;nh nắng mặt trời sẽ l&agrave;m sản sinh melanin, l&agrave;m da th&acirc;m đen, xỉn m&agrave;u, đẩy nhanh qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a v&agrave; tiềm t&agrave;ng nguy cơ ung thư.</p>\r\n\r\n<p>T&ugrave;y theo lịch tr&igrave;nh h&atilde;y chọn cho m&igrave;nh loại kem c&oacute; SPF ph&ugrave; hợp. Bạn cũng đừng qu&ecirc;n xoa kem chống nắng l&ecirc;n tay , ngực, ch&acirc;n&hellip;Tốt nhất h&atilde;y c&oacute; hai loại kem chống nắng ri&ecirc;ng biệt cho mặt v&agrave; cơ thể.</p>\r\n\r\n<ul>\r\n	<li><strong>Bước 8: Dưỡng ẩm</strong></li>\r\n</ul>\r\n\r\n<p>Bạn c&oacute; thể r&uacute;t gọn bước n&agrave;y bằng c&aacute;ch sử dụng kem chống nắng c&oacute; chứa chất dưỡng ẩm. Kem dưỡng ẩm sẽ gi&uacute;p l&agrave;n da tươi tắn v&agrave; giữ cho lớp trang điểm kh&ocirc;ng bị kh&ocirc; trong suốt cả ng&agrave;y.</p>\r\n\r\n<h2><strong>1. C&aacute;c bước dưỡng da ban đ&ecirc;m:</strong></h2>\r\n\r\n<p>Theo c&aacute;c nghi&ecirc;n cứu tại Đại học Califfornia &ndash; Irvine, c&aacute;c tế b&agrave;o da mới ph&aacute;t triển nhanh hơn trong khi bạn ngủ. Đo đ&oacute; tập một th&oacute;i quen chăm s&oacute;c da mặt đ&uacute;ng c&aacute;ch l&agrave; v&ocirc; c&ugrave;ng cần thiết v&igrave; n&oacute; sẽ gi&uacute;p t&aacute;i tạo l&agrave;n da bị hư tổn trong ng&agrave;y.</p>\r\n\r\n<p><img src=\"http://file.hstatic.net/1000340602/file/duong-gia-ban-dem_1024x1024.jpg\" /></p>\r\n\r\n<p><strong>C&aacute;c bước chăm s&oacute;c da ban đ&ecirc;m được thực hiện lần lượt như sau:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>L&agrave;m sạch lớp trang điểm:</strong></li>\r\n</ul>\r\n\r\n<p>D&ugrave; cho lịch tr&igrave;nh c&oacute; bận rộn hay bạn cảm thấy mệt mỏi thế n&agrave;o sau một ng&agrave;y d&agrave;i th&igrave; bạn cũng n&ecirc;n d&agrave;nh thời gian để l&agrave;m sạch lớp trang điểm trước khi đi ngủ. Điều n&agrave;y rất quan trọng nếu bạn muốn giữ cho l&agrave;n da m&igrave;nh lu&ocirc;n trẻ trung v&agrave; kh&ocirc;ng bị l&atilde;o h&oacute;a sớm.</p>\r\n\r\n<p>Khi bạn ngủ v&agrave;o ban đ&ecirc;m, c&aacute;c lỗ ch&acirc;n l&ocirc;ng mở ra để t&aacute;i tạo l&agrave;n da. Nhưng nếu c&oacute; lớp trang điểm th&igrave; c&aacute;c lỗ ch&acirc;n l&ocirc;ng sẽ bị tắc l&agrave;m cho l&agrave;n da được t&aacute;i tạo kh&ocirc;ng đều v&agrave; c&oacute; khả năng sinh ra mụn trứng c&aacute;.</p>\r\n\r\n<p>Bạn c&oacute; thể sử dụng nước tẩy trang, sữa rửa mặt để l&agrave;m sạch lớp trang điểm v&agrave; gi&uacute;p l&agrave;n da được th&ocirc;ng tho&aacute;ng.</p>\r\n\r\n<p>Dầu tẩy trang hoa hồng Milaganics với chiết xuất từ tinh dầu hoa hồng thi&ecirc;n nhi&ecirc;n gi&uacute;p l&agrave;m sạch s&acirc;u hiệu quả, nhẹ nh&agrave;ng tẩy sạch mọi lớp trang điểm m&agrave; b&atilde;n đảm bảo độ pH tự nhi&ecirc;n cho da, ngo&agrave;i ra vitamin E c&oacute; trong sản phẩm sẽ gi&uacute;p phục hồi tế bao da bị hư tổn, ổn didngj m&agrave;n sinh học. Hương hoa hồng thanh lịch cho bạn cảm gi&aacute;c thư gi&atilde;n dễ chịu.</p>\r\n\r\n<ul>\r\n	<li><strong>Sử dụng Toner:</strong></li>\r\n</ul>\r\n\r\n<p>Đừng qu&ecirc;n xoa một &iacute;t nước hoa hồng l&ecirc;n da mặt trước khi đi ngủ. Toner gi&uacute;p phục hồi độ pH tự nhi&ecirc;n của l&agrave;n da, gi&uacute;p da chống lại kh&aacute;ng khuẩn v&agrave; vi sinh vật. N&oacute; cũng gi&uacute;p l&agrave;m sạch bụi bẩn.</p>\r\n\r\n<ul>\r\n	<li><strong>Kem dưỡng ẩm:</strong></li>\r\n</ul>\r\n\r\n<p>Sự kh&aacute;c biệt giữa kem dưỡng ẩm ban ng&agrave;y v&agrave; kem dưỡng ẩm ban đ&ecirc;m ch&iacute;nh l&agrave; th&agrave;nh phần kem chống nắng. Kem dưỡng ẩm ban đ&ecirc;m l&agrave;m cho l&agrave;n da trở n&ecirc;n mềm mịn v&agrave; c&oacute; tăng khả năng đ&agrave;n hồi.</p>\r\n\r\n<p>Đối với d&ograve;ng kem dưỡng ban đ&ecirc;m bạn n&ecirc;n chọn những sản phẩm c&oacute; th&agrave;nh phần chất chống oxy h&oacute;a, peptide, vitamin C, vitamin A&hellip;để đem lại hiệu quả tốt nhất.</p>\r\n\r\n<ul>\r\n	<li><strong>Kem mắt:</strong></li>\r\n</ul>\r\n\r\n<p>V&ugrave;ng da quanh mắt l&agrave; nơi đầu ti&ecirc;n tiết lộ dấu hiệu của sự l&atilde;o h&oacute;a, v&igrave; vậy rất cần thiết để c&oacute; một chế độ chăm s&oacute;c đ&uacute;ng mực với v&ugrave;ng da n&agrave;y. Sau khi loại bỏ tất cả lớp trang điểm h&atilde;y b&ocirc;i kem dưỡng mắt trước khi đi ngủ.</p>\r\n\r\n<p>Kem dưỡng mắt gi&uacute;p dưỡng ẩm, cũng cấp hydrat, de-phun l&agrave;m giảm quầng th&acirc;m, giảm thiểu sự xuất hiện của c&aacute;c nếp nhăn nhờ c&oacute; chứa c&aacute;c chất peptide v&agrave; chất chống oxy h&oacute;a. Lấy một lượng krm b&ocirc;i từ g&oacute;c b&ecirc;n trong mắt v&agrave; massage nhẹ nh&agrave;ng ra ph&iacute;a g&oacute;c ngo&agrave;i.</p>\r\n\r\n<p>Sau khi đ&atilde; thực hiện đầy đủ những bước n&agrave;y, h&atilde;y thư gi&atilde;n cơ thể, thoải m&aacute;i đầu &oacute;c v&agrave; c&oacute; một giấc ngủ ngon l&agrave;nh. Tất cả c&aacute;c bước dưỡng da cơ bản n&agrave;y sẽ hiệu quả hơn nếu bạn c&oacute; một giấc ngủ thật s&acirc;u, cơ thể ho&agrave;n to&agrave;n được thư th&aacute;i. Được như vậy, l&agrave;n da của bạn sẽ lu&ocirc;n tươi trẻ v&agrave; căng mịn mỗi buổi s&aacute;ng thức dậy.</p>\r\n', 'tay-te-bao-chet_1024x10241.jpg', '2020-10-25 20:37:31', '1', '2020-10-25 20:37:31', '1', 1, 1),
(13, 'BÍ KÍP TRỊ SẸO MỤN VÀ THÂM MỤN TẠI NHÀ CỰC ĐƠN GIẢN', 'bi-kip-tri-seo-mun-va-tham-mun-tai-nha-cuc-don-gian', '', '<h2><strong>1. Nguy&ecirc;n nh&acirc;n g&acirc;y ra th&acirc;m v&agrave; sẹo mụn:</strong></h2>\r\n\r\n<p>Th&ocirc;ng thường c&aacute;c bạn vẫn thấy th&acirc;m v&agrave; sẹo mụn thường đi đ&ocirc;i với nhau tuy nhi&ecirc;n c&oacute; một số kh&aacute;c biệt trong nguy&ecirc;n nh&acirc;n g&acirc;y ra th&acirc;m v&agrave; sẹo mụn m&agrave; c&aacute;c bạn n&ecirc;n biết.</p>\r\n\r\n<ul>\r\n	<li><strong>Nguy&ecirc;n nh&acirc;n g&acirc;y ra sẹo mụn:</strong></li>\r\n</ul>\r\n\r\n<p>Sẹo mụn xuất hiện khi xảy ra chấn thương trong c&aacute;c m&ocirc;. Trong trường hợp bạn bị mụn trứng c&aacute;, c&aacute;c vi khuẩn v&agrave; lượng dầu dư thừa trong c&aacute;c nang l&ocirc;ng sẽ g&acirc;y ra c&aacute;c chấn thương. L&uacute;c n&agrave;y, theo cơ chế tự nhi&ecirc;n của cơ thể sẽ tự động gửi ra c&aacute;c collagen để chữa l&agrave;nh những chấn thương ở m&ocirc; tế b&agrave;o. Nếu lượng collagen &iacute;t hơn hoặc vượt qu&aacute; nhu cầu của c&aacute;c m&ocirc; sẽ xảy ra hiện tượng sẹo. Nếu lượng collagen kh&ocirc;ng đủ để chữa l&agrave;nh m&ocirc; bị tổn thương sẽ g&acirc;y ra hiện tượng sẹo l&otilde;m, ngược lại qu&aacute; nhiều sẽ g&acirc;y ra hiện tượng sẹo lồi.</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute; cũng c&ograve;n một số t&aacute;c nh&acirc;n khiến h&igrave;nh th&agrave;nh sẹo mụn m&agrave; bạn n&ecirc;n lưu &yacute; để c&oacute; c&aacute;ch điều trị ph&ugrave; hợp như ảnh hưởng của gene di truyền, nặn mụn kh&ocirc;ng đ&uacute;ng c&aacute;ch l&agrave;m da bị vi&ecirc;m, mụn vi&ecirc;n kh&ocirc;ng được điều trị v&agrave; xử l&yacute; ph&ugrave; hợp&hellip;</p>\r\n\r\n<p><img alt=\"Những chấm đỏ trên mặt làm bạn luôn tự ti và lo lắng\" src=\"http://file.hstatic.net/1000340602/file/tri-sao-nhanh_1024x1024.jpg\" /></p>\r\n\r\n<p>Hỗn hợp yến mạch+mật ong+nước cốt chanh, c&aacute;ch trị sẹo mụn hiệu quả</p>\r\n\r\n<p>Việc biết được nguy&ecirc;n nh&acirc;n h&agrave;ng đầu g&acirc;y ra mụn v&agrave; sẹo mụn sẽ gi&uacute;p bạn c&oacute; c&aacute;ch điều trị hiệu quả nhất v&agrave; dứt điểm, tr&aacute;nh l&acirc;m v&agrave;o t&igrave;nh trạng luẩn quẩn mụn-sẹo mụn</p>\r\n\r\n<ul>\r\n	<li><strong>Nguy&ecirc;n nh&acirc;n g&acirc;y ra th&acirc;m mụn:</strong></li>\r\n</ul>\r\n\r\n<p>Th&acirc;m mụn l&agrave; những chấm đỏ hoặc m&agrave;u n&acirc;u phẳng tr&ecirc;n da mặt, xuất hiện sau khi bạn bị mụn. Những vết th&acirc;m đen sẽ xuất hiện ngay tại vị tr&iacute; trước đ&oacute; bị mụn v&agrave; k&eacute;o d&agrave;i hơn cả mụn.</p>\r\n\r\n<p>V&agrave; nguy&ecirc;n nh&acirc;n g&acirc;y ra th&acirc;m mụn thường l&agrave; do sự tăng sắc tố sau vi&ecirc;m. Vi&ecirc;m c&oacute; nguy&ecirc;n nh&acirc;n từ sự tăng l&ecirc;n của c&aacute;c tế b&agrave;o m&aacute;u (hồng cầu, bạch cầu) tại vị tr&iacute; da bị tổn thương để chữa l&agrave;nh vết thương.</p>\r\n\r\n<p>Một nguy&ecirc;n nh&acirc;n kh&aacute;c thường gặp l&agrave; ở giai đoạn cuối c&ugrave;ng của qu&aacute; tr&igrave;nh bị mụn, bạn lu&ocirc;n cảm thấy đau nhức, sưng ngứa v&agrave; nhiều bạn đ&atilde; &ldquo;ra tay&rdquo; nặn mụn. Ch&iacute;nh h&agrave;nh động n&agrave;y đ&atilde; khiến da c&agrave;ng th&ecirc;m bị tổn thương, li&ecirc;n kết gi&uacute;p n&acirc;ng đỡ hệ thống da eslatin &ndash; collagen bị đứt g&atilde;y, kh&oacute; t&aacute;i tạo. Dưới sự ảnh hưởng của &aacute;nh nắng mặt trời, tia UVA, UVB k&iacute;ch th&iacute;ch c&aacute;c tế b&agrave;o dưới da sản sinh nhiều melanin l&agrave;m cho v&ugrave;ng da bị tổn thương trở n&ecirc;n th&acirc;m đen hơn.</p>\r\n\r\n<p><img src=\"http://file.hstatic.net/1000340602/file/tham-mun_1024x1024.jpg\" /></p>\r\n\r\n<h2>&nbsp;<strong>1. C&aacute;ch trị sẹo mụn tại nh&agrave;</strong>:</h2>\r\n\r\n<p>Sau khi đ&atilde; x&aacute;c định được nguy&ecirc;n nh&acirc;n g&acirc;y ra th&acirc;m v&agrave; sẹo mụn, qu&aacute; tr&igrave;nh&nbsp;<strong>trị sẹo mụn v&agrave; vết th&acirc;m</strong>&nbsp;sẽ trở n&ecirc;n đơn giản v&agrave; hiệu quả hơn. V&igrave; c&aacute;c b&aacute;c sĩ da liễu sẽ biết c&aacute;ch tư vấn c&aacute;c loại thuốc trị th&acirc;m mụn ph&ugrave; hợp nhất với trường hợp của bạn. Tuy nhi&ecirc;n h&ocirc;m nay m&igrave;nh sẽ tư vấn cho c&aacute;c bạn c&aacute;c phương ph&aacute;p tự nhi&ecirc;n, đ&acirc;y l&agrave; c&aacute;ch trị sẹo mụn an to&agrave;n v&agrave; l&agrave;nh t&iacute;nh nhất đối với mọi loại da trong trường hợp bạn kh&ocirc;ng c&oacute; điều kiện kinh tế để theo điều trị tại c&aacute;c bệnh viện v&agrave; cơ sở thẩm mỹ. Đ&acirc;y đều l&agrave; những c&aacute;ch trị sẹo mụn l&acirc;u năm nhưng vẫn c&ograve;n được &aacute;p dụng v&igrave; thật sự l&agrave;&nbsp;<strong>c&aacute;ch trị sẹo mụn hiệu quả</strong>.</p>\r\n\r\n<ul>\r\n	<li><strong>Sử dụng mặt nạ bột yến mạch:</strong></li>\r\n</ul>\r\n\r\n<p>L&agrave; một trong những c&aacute;ch hiệu quả nhất để&nbsp;<strong>trị th&acirc;m mụn tại nh&agrave;</strong>. Hỗn hợp yến mạch +mật ong+ nước cốt chanh gi&uacute;p loại bỏ dầu thừa tr&ecirc;n da, th&ocirc;ng tho&aacute;ng v&agrave; se kh&iacute;t lỗ ch&acirc;n l&ocirc;ng, ngăn ngừa mụn quay trở lại v&agrave; mờ vết th&acirc;m hiệu quả. Để c&oacute; hiệu quả cao, bạn đun s&ocirc;i bột yến mạch với nước tạo th&agrave;nh hỗn hợp sệt, cho th&ecirc;m nước cốt chanh v&agrave; khuấy đều. Đắp hỗ hợp l&ecirc;n mặt từ 15 đến 20 ph&uacute;t rồi rửa sạch.</p>\r\n\r\n<p><img alt=\"Trị mụn hiệu quả\" src=\"http://file.hstatic.net/1000340602/file/tri-mun-hieu-qua_1024x1024.jpg\" /></p>\r\n\r\n<ul>\r\n	<li><strong>Hỗn hợp bột tr&agrave; xanh v&agrave; mật ong:</strong></li>\r\n</ul>\r\n\r\n<p>Trong c&aacute;c liệu tr&igrave;nh&nbsp;<strong>trị sẹo mụn v&agrave; vết th&acirc;m</strong>&nbsp;bằng phương ph&aacute;p thi&ecirc;n nhi&ecirc;n th&igrave; bột tr&agrave; xanh c&oacute; hiệu quả rất tuyệt vời, ch&uacute;ng gi&uacute;p cải thiện những vết sẹo v&agrave; biến mất ho&agrave;n to&agrave;n sau một thời gian sử dụng. Chỉ cần 2 muỗng bột tr&agrave; xanh trộn c&ugrave;ng &iacute;t mật ong nguy&ecirc;n chất, th&ecirc;m một &iacute;t nước để tạo th&agrave;nh một chất lỏng s&aacute;ng mịn. Thoa đều v&agrave; giữ trong 15 đến 20 ph&uacute;t v&agrave; rửa sạch với nước m&aacute;t. Thường xuy&ecirc;n sử udngj sẽ gi&uacute;p bạn g&aacute;i loại bỏ mụn trứng c&aacute;, l&agrave;nh vết thương v&agrave; mờ sẹo.</p>\r\n\r\n<ul>\r\n	<li><strong>Mặt nạ banking soda:</strong></li>\r\n</ul>\r\n\r\n<p>Trộn một th&igrave;a banking soda với hai muỗng nước lọc. B&ocirc;i hỗn hợp n&agrave;y v&agrave;o v&ugrave;ng da bị tổn thương v&agrave; để y&ecirc;n trong hai ph&uacute;t. Sau đ&oacute; ch&agrave; nhẹ nh&agrave;ng v&agrave; để lại bằng nước sạch. Ki&ecirc;n tr&igrave; thực hiện việc n&agrave;y trong một th&aacute;ng c&oacute; thể gi&uacute;p giảm thiểu những vết sẹo mụn l&acirc;u năm.</p>\r\n\r\n<p>Sẹo v&agrave; th&acirc;m mụn lu&ocirc;n l&agrave; những vấn đề khiến nhiều bạn phải đau đầu. Tuy nhi&ecirc;n nếu hiểu về ch&uacute;ng v&agrave; biết c&aacute;ch &ldquo;chiều chuộng&rdquo; ch&uacute;ng th&igrave; l&agrave;n da mặt trơn l&aacute;ng v&agrave; s&aacute;ng mịn sẽ lại trở về với bạn. &Aacute;p dụng c&aacute;c phương ph&aacute;p tự nhi&ecirc;n cũng l&agrave; một c&aacute;ch để &ldquo;chiều chuộng&rdquo;. Q&uacute;a tr&igrave;nh n&agrave;y tuy hơi mất nhiều thời gian nhưng lại an to&agrave;n cho da v&agrave; bạn cũng kh&ocirc;ng lo lắng sẽ xảy ra những k&iacute;ch ứng kh&ocirc;ng mong muốn.</p>\r\n', 'tri-mun-hieu-qua_1024x10241.jpg', '2020-10-25 20:40:33', '1', '2020-10-25 20:40:33', '1', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_customer`
--

CREATE TABLE `db_customer` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(13) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_customer`
--

INSERT INTO `db_customer` (`id`, `fullname`, `username`, `password`, `address`, `phone`, `email`, `created`, `trash`, `status`) VALUES
(70, 'viethieu', 'doviethieu9999@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '0904517042', 'doviethieu9999@gmail.com', '2020-06-20 00:00:00', 1, 1),
(71, 'nguoi dung', 'nguoidung', 'e10adc3949ba59abbe56e057f20f883e', '', '03454572777', 'nguoidung@gmail.com', '2020-06-20 00:00:00', 1, 1),
(72, 'viethieu', 'doviethieu24061998@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '0123456789', 'doviethieu240619998@gmail.com', '2020-07-03 00:00:00', 1, 1),
(73, 'do viet hieu', 'nguoidungmoi', 'e10adc3949ba59abbe56e057f20f883e', '', '32165498798', 'doviethieu24061998@gmail.com', '2020-07-10 00:00:00', 1, 1),
(74, 'Thanh Hưng', '', '', '', '03132132646', '', '2020-07-13 21:57:20', 1, 1),
(75, 'Thanh Hưngsd', 'sadasdasdasd', 'e10adc3949ba59abbe56e057f20f883e', '', '0000002312', 'thanhhungsds@gmail.com', '2020-07-13 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_discount`
--

CREATE TABLE `db_discount` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mã giảm giá',
  `discount` int(11) NOT NULL COMMENT 'Số tiền',
  `limit_number` int(11) NOT NULL COMMENT 'giới hạn lượt mua',
  `number_used` int(11) NOT NULL COMMENT 'Số lượng đã nhập',
  `expiration_date` date NOT NULL COMMENT 'Ngày hết hạn',
  `payment_limit` int(11) NOT NULL COMMENT 'giới hạn đơn hàng tối thiểu',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mô tả',
  `created` date NOT NULL,
  `orders` int(11) NOT NULL,
  `trash` int(1) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_discount`
--

INSERT INTO `db_discount` (`id`, `code`, `discount`, `limit_number`, `number_used`, `expiration_date`, `payment_limit`, `description`, `created`, `orders`, `trash`, `status`) VALUES
(18, 'mixigaming', 100000, 50, 3, '2020-08-01', 5000000, 'Khi bạn là fan cứng của Độ Mixi.', '2020-06-01', 1, 1, 1),
(26, 'CSETLU', 100000, 20, 0, '2020-07-07', 1000000, '', '2020-07-06', 1, 1, 1);

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
-- Cấu trúc bảng cho bảng `db_order`
--

CREATE TABLE `db_order` (
  `id` int(11) NOT NULL,
  `orderCode` varchar(8) CHARACTER SET utf8 NOT NULL,
  `customerid` int(11) NOT NULL,
  `orderdate` datetime NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 NOT NULL,
  `money` int(12) NOT NULL,
  `price_ship` int(11) NOT NULL,
  `coupon` int(11) NOT NULL,
  `province` int(5) NOT NULL,
  `district` int(5) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1,
  `cmt` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_orderdetail`
--

CREATE TABLE `db_orderdetail` (
  `id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `count` int(10) NOT NULL,
  `price` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_producer`
--

CREATE TABLE `db_producer` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `trash` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_producer`
--

INSERT INTO `db_producer` (`id`, `name`, `code`, `keyword`, `created_at`, `created_by`, `modified`, `modified_by`, `status`, `trash`) VALUES
(7, 'Mỹ phẩm Hàn Quốc', 'TGDĐ', 'Han quoc, my pham han', '2020-06-01 21:49:28', 1, '2020-10-25 20:35:41', 1, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_product`
--

CREATE TABLE `db_product` (
  `id` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `sortDesc` text CHARACTER SET utf8 NOT NULL,
  `detail` text CHARACTER SET utf8 NOT NULL,
  `producer` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `number_buy` int(11) NOT NULL,
  `sale` int(3) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `price_sale` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'HDL',
  `modified` datetime NOT NULL,
  `modified_by` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'HDL',
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_product`
--

INSERT INTO `db_product` (`id`, `catid`, `name`, `alias`, `avatar`, `img`, `sortDesc`, `detail`, `producer`, `number`, `number_buy`, `sale`, `price`, `price_sale`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(91, 30, 'Gel Rửa Tay Khử Trùng Nha Đam – Forever Hand Sanitizer', 'gel-rua-tay-khu-trung-nha-dam-forever-hand-sanitizer', '472fc15cbdf1c58fa81ac73c16f12381.jpg', 'b3833b92fba1368e1dd01ccbae377c5f.jpg', '<p><span style=\"color:#60b809\">thi&ecirc;n nhi&ecirc;n<br />\r\n* Sản ph&acirc;̉m được sản xu&acirc;́t bởi c&ocirc;ng ngh&ecirc;̣ khép kín, hi&ecirc;̣n đại<br />\r\n* Sản ph&acirc;̉m được sử dụng ở hơn 160 qu&ocirc;́c gia, trong 40 năm qua<br />\r\n* Được đ&ocirc;̉i trả trong vòng 30 ngày</span><br />\r\n<span style=\"font-size:20px\"><span style=\"color:#000000\"><span style=\"font-family:Lato,sans-serif\"><span style=\"background-color:#ffffff\">------------------------------</span></span></span></span><br />\r\n<span style=\"color:#1e73be\">Ship h&agrave;ng to&agrave;n quốc -&nbsp;Tư vấn miễn ph&iacute;<br />\r\n-&nbsp;Thanh to&aacute;n đa dạng -&nbsp;Cam kết chất lượng</span><br />\r\n<span style=\"color:#74df00\">FOREVER LIVING - CHO BẠN SỨC KHỎE VÀ SẮC ĐẸP</span></p>\r\n', '<p>Gel rửa tay khử tr&ugrave;ng nha đam l&agrave; h&agrave;ng ph&ograve;ng thủ đầu ti&ecirc;n của bạn chống lại vi tr&ugrave;ng. Forever Hand Sanitizer&reg; rất gi&agrave;u nha đam gi&uacute;p cho b&agrave;n tay của bạn lu&ocirc;n mềm mại v&agrave; mịn m&agrave;ng sau khi vệ sinh. N&oacute; giết chết 99,99% vi tr&ugrave;ng v&agrave; c&oacute; k&iacute;ch thước ph&ugrave; hợp cho bạn mang theo đi du lịch, v&igrave; vậy bạn c&oacute; thể mang n&oacute; đi bất cứ đ&acirc;u.</p>\r\n\r\n<p><img src=\"https://myphamnhadamshop.com/wp-content/uploads/2020/07/kljkj-.jpg.webp\" style=\"height:441px; width:1020px\" /></p>\r\n\r\n<h3>Sức mạnh diệt vi tr&ugrave;ng l&agrave;m mềm v&agrave; hydrat h&oacute;a l&agrave;n da</h3>\r\n\r\n<p>&bull; Giết chết 99,99% vi tr&ugrave;ng<br />\r\n&bull; L&agrave;m mềm v&agrave; hydrat da<br />\r\n&bull; L&agrave;m h&agrave;i l&ograve;ng m&ugrave;i hương chanh v&agrave; hoa oải hương<br />\r\n&bull; Chất khử tr&ugrave;ng tay k&iacute;ch thước du lịch</p>\r\n\r\n<p>Bạn c&oacute; thể kh&ocirc;ng nh&igrave;n thấy ch&uacute;ng, nhưng vi tr&ugrave;ng c&oacute; ở khắp mọi nơi v&agrave; một số nơi ch&uacute;ng ta gh&eacute; thăm h&agrave;ng ng&agrave;y l&agrave; điểm n&oacute;ng để l&acirc;y lan vi khuẩn v&agrave; vi r&uacute;t.&nbsp;Nh&agrave; vệ sinh c&ocirc;ng cộng, nh&agrave; h&agrave;ng v&agrave; nơi l&agrave;m việc của bạn chỉ l&agrave; một v&agrave;i trong số những nơi vi tr&ugrave;ng muốn ẩn nấp.</p>\r\n\r\n<p>Gel rửa tay khử tr&ugrave;ng nha đam l&agrave; tuyến ph&ograve;ng thủ đầu ti&ecirc;n của bạn chống lại kẻ th&ugrave; v&ocirc; h&igrave;nh n&agrave;y. Tuy nhi&ecirc;n, nhiều chất khử tr&ugrave;ng tay c&oacute; thể khiến tay bạn bị kh&ocirc;, ngứa hoặc qu&aacute; khổ. Forever Hand Sanitizer&reg; l&agrave; giải ph&aacute;p l&yacute; tưởng. C&ocirc;ng thức n&agrave;y rất gi&agrave;u nha đam để giữ cho b&agrave;n tay của bạn cảm thấy mềm mại v&agrave; mịn m&agrave;ng sau khi vệ sinh.</p>\r\n\r\n<p>Kh&ocirc;ng thể thực hiện c&aacute;c th&oacute;i quen h&agrave;ng ng&agrave;y của ch&uacute;ng t&ocirc;i m&agrave; kh&ocirc;ng nhặt một số vi tr&ugrave;ng v&agrave; trong khi bạn kh&ocirc;ng thể tr&aacute;nh được kẻ th&ugrave; si&ecirc;u nhỏ n&agrave;y, bạn c&oacute; thể loại bỏ vi tr&ugrave;ng một c&aacute;ch nhanh ch&oacute;ng với Nước rửa tay khử tr&ugrave;ng nha đam &ndash; Forever Hand Sanitizer&reg;.</p>\r\n\r\n<p>Forever Hand Sanitizer&reg; được sản xuất với cả l&ocirc; hội v&agrave; mật ong để hydrat h&oacute;a v&agrave; l&agrave;m mềm da để mang lại cảm gi&aacute;c sảng kho&aacute;i, sạch sẽ v&agrave; ẩm mượt.&nbsp;Bạn sẽ th&iacute;ch m&ugrave;i hương dễ chịu, k&iacute;ch th&iacute;ch của chanh v&agrave; hoa oải hương.</p>\r\n\r\n<p>Bảo vệ bản th&acirc;n v&agrave; gia đ&igrave;nh của bạn với Nước rửa tay khử tr&ugrave;ng nha đam &ndash; Forever Hand Sanitizer&reg;., c&aacute;ch ho&agrave;n hảo để ti&ecirc;u diệt 99,99% vi tr&ugrave;ng, chai c&oacute; k&iacute;ch thước du lịch m&agrave; bạn c&oacute; thể mang đi bất cứ đ&acirc;u.</p>\r\n\r\n<p><img alt=\"gel-rua-tay-khu-trung-nha-dam-forever-hand-sanitizer\" src=\"https://myphamnhadamshop.com/wp-content/uploads/2020/07/rt.jpg.webp\" style=\"height:422px; width:389px\" /></p>\r\n\r\n<p><img src=\"https://myphamnhadamshop.com/wp-content/uploads/2020/07/jh-k.jpg.webp\" style=\"height:567px; width:567px\" /></p>\r\n\r\n<p><img src=\"https://myphamnhadamshop.com/wp-content/uploads/2020/07/Forever-Hand-Sanitizer-mit-Dermatest.jpg.webp\" style=\"height:800px; width:620px\" /></p>\r\n\r\n<p>SỬ DỤNG</p>\r\n\r\n<p>Hướng dẫn: L&agrave;m ướt tay kỹ với sản phẩm.&nbsp;Nhanh ch&oacute;ng ch&agrave; tay với nhau cho đến khi kh&ocirc;.&nbsp;Trẻ em dưới 6 tuổi n&ecirc;n được gi&aacute;m s&aacute;t khi sử dụng sản phẩm n&agrave;y.</p>\r\n\r\n<p>Cảnh b&aacute;o: Chỉ sử dụng ngo&agrave;i da.&nbsp;Dễ ch&aacute;y.&nbsp;Tr&aacute;nh xa ngọn lửa.&nbsp;Khi sử dụng sản phẩm n&agrave;y kh&ocirc;ng sử dụng trong hoặc gần mắt.&nbsp;Nếu tiếp x&uacute;c xảy ra, rửa kỹ bằng nước.&nbsp;Tr&aacute;nh tiếp x&uacute;c với da bị hỏng.&nbsp;Ngừng sử dụng v&agrave; hỏi b&aacute;c sĩ nếu ph&aacute;t ban hoặc k&iacute;ch ứng ph&aacute;t triển v&agrave; k&eacute;o d&agrave;i.&nbsp;Tr&aacute;nh xa tầm tay trẻ em.&nbsp;Nếu nuốt phải nhận trợ gi&uacute;p y tế hoặc li&ecirc;n hệ với Trung t&acirc;m kiểm so&aacute;t Poision ngay lập tức.</p>\r\n\r\n<p>Sử dụng tốt kết hợp với&nbsp;<a href=\"https://myphamnhadamshop.com/san-pham/sua-rua-mat-aloe-hand-face-soap/\">Sửa rửa mặt v&agrave; tay Aloe Hand Shoap</a></p>\r\n\r\n<h3>TH&Agrave;NH PHẦN</h3>\r\n\r\n<p><strong>Th&agrave;nh phần hoạt chất</strong>&nbsp;: Ethyl Alcohol 62%</p>\r\n\r\n<p><strong>Th&agrave;nh phần</strong>&nbsp;: Nước (Aqua), Nước &eacute;p l&aacute; Aloe Barbadensis (Gel Aloe Vera ổn định), Mật ong, Rượu Isopropyl, Hương thơm (Parfum), Glycerin, Tetrahydroxypropyl Ethylenediamine, Acrylates / C10-30 Acryl</p>\r\n\r\n<p>Th&agrave;nh Phần Ch&iacute;nh:</p>\r\n\r\n<p><img src=\"https://myphamnhadamshop.com/wp-content/uploads/2020/05/stabilized_aloe_vera_gel_-_ingredient_ingredient_256x256_1556303855250.png.webp\" style=\"height:256px; width:256px\" /></p>\r\n\r\n<h4>Nha Đam</h4>\r\n\r\n<p><img src=\"https://myphamnhadamshop.com/wp-content/uploads/2020/07/isopropyl_alcohol_-_ingredient_ingredient_352x352_1556224814808.png.webp\" style=\"height:256px; width:256px\" /></p>\r\n\r\n<h4>Rượu Isopropyl</h4>\r\n\r\n<p><img src=\"https://myphamnhadamshop.com/wp-content/uploads/2020/07/honey_-_ingredient_ingredient_256x256_1558437661470.png.webp\" style=\"height:256px; width:256px\" /></p>\r\n\r\n<h4>Mật Ong</h4>\r\n\r\n<p><iframe frameborder=\"0\" height=\"574\" src=\"https://www.youtube.com/embed/WGP1eXW-sIQ?feature=oembed\" title=\"Forever Living | Forever Hand Sanitizer\" width=\"1020\"></iframe></p>\r\n\r\n<h3>Xuất xứ của Gel rửa tay khử tr&ugrave;ng nha đam &ndash; Forever Hand Sanitizer&reg;:</h3>\r\n\r\n<p>Gel rửa tay khử tr&ugrave;ng nha đam &ndash; Forever Hand Sanitizer&reg;. được sản xuất tại C&ocirc;ng ty Aloe Vera of America, Inc. 13745 Jupiter Road Dallas, Texas 75238, Hoa Kỳ của tập đo&agrave;n Forever Living Products.</p>\r\n\r\n<p>C&ocirc;ng ty nhập khẩu : C&ocirc;ng ty TNHH Thương mại L&ocirc; Hội. 199 Nam Kỳ Khởi Nghĩa, P.7, Q.3, TP.Hồ Ch&iacute; Minh.</p>\r\n\r\n<p><strong><a href=\"https://thealoeveraco.shop/8r3j\">Mua sản phẩm tại Mỹ ở đ&acirc;y</a></strong></p>\r\n\r\n<p>Nước rửa tay khử tr&ugrave;ng nha đam &ndash; Forever Hand Sanitizer&reg;, được b&aacute;n tại Mỹ Phẩm Thi&ecirc;n Nhi&ecirc;n Nha Đam Shop &ndash; TP. Đồng Hới &ndash; T. Quảng B&igrave;nh; ĐT: 0941.378.678; Ship h&agrave;ng to&agrave;n quốc, miễn ph&iacute; ship với đơn h&agrave;ng tr&ecirc;n 500k; Mail: myphamnhadamshop@gmail.com</p>\r\n\r\n<h3><em>Mỹ Phẩm Thi&ecirc;n Nhi&ecirc;n Nha Đam Shop &ndash; V&igrave; Một Việt Nam Khỏe Mạnh. !</em></h3>\r\n', 7, 100, 0, 10, 250000, 225000, '2020-10-24 18:58:46', '1', '2020-10-24 18:58:46', '1', 1, 1),
(92, 30, 'Kem Làm Nóng Matxa Cơ Thể- Aloe Heart Lotion', 'kem-lam-nong-matxa-co-the-aloe-heart-lotion', 'cc803b4e96154796cd9b72b371fd44b0.png', '5e0311261de9b26a161f7b26f0f95eba.jpg#6b64066714c9b26daa98637071b73aa0.png#087aacad4695459bb0bfeb513da81d6d.jpg', '<p><span style=\"color:#60b809\">thi&ecirc;n nhi&ecirc;n<br />\r\n* Sản ph&acirc;̉m được sản xu&acirc;́t bởi c&ocirc;ng ngh&ecirc;̣ khép kín, hi&ecirc;̣n đại<br />\r\n* Sản ph&acirc;̉m được sử dụng ở hơn 160 qu&ocirc;́c gia, trong 40 năm qua<br />\r\n* Được đ&ocirc;̉i trả trong vòng 30 ngày</span><br />\r\n<span style=\"font-size:20px\"><span style=\"color:#000000\"><span style=\"font-family:Lato,sans-serif\"><span style=\"background-color:#ffffff\">------------------------------</span></span></span></span><br />\r\n<span style=\"color:#1e73be\">Ship h&agrave;ng to&agrave;n quốc -&nbsp;Tư vấn miễn ph&iacute;<br />\r\n-&nbsp;Thanh to&aacute;n đa dạng -&nbsp;Cam kết chất lượng</span><br />\r\n<span style=\"color:#74df00\">FOREVER LIVING - CHO BẠN SỨC KHỎE VÀ SẮC ĐẸP</span></p>\r\n', '<h2>Kem L&agrave;m N&oacute;ng Matxa Cơ Thể- Aloe Heart Lotion</h2>\r\n\r\n<p>Kem L&agrave;m N&oacute;ng Aloe Heat Lotion l&agrave; loại kem dưỡng da b&ocirc;i trơn c&acirc;n bằng độ pH được thiết kế để m&aacute;t-xa nhẹ nh&agrave;ng, thư gi&atilde;n. Sức mạnh th&acirc;m nhập s&acirc;u sắc của Aloe Vera sẽ gi&uacute;p l&agrave;m dịu cơ bắp của bạn sau khi thể thao hoặc tập luyện chăm chỉ!</p>\r\n\r\n<h2>Kem L&agrave;m N&oacute;ng Aloe Heat Lotion &ndash; Xoa B&oacute;p Cơ Bắp.</h2>\r\n\r\n<p>Tới ph&ograve;ng tập gym, xuống khu s&acirc;n chơi gần nh&agrave; bạn c&oacute; thấy kh&ocirc;ng? Người gi&agrave;, trẻ em, phụ nữ, nam giới họ cố gắng tập thể dục để hạn chế đau nhức, bớt sự mệt mỏi của cơ thể đ&oacute;. C&ograve;n bạn, bạn chẳng thể n&agrave;o c&oacute; thời gian m&agrave; l&agrave;m những việc đ&oacute;. C&ocirc;ng việc bận rộn, chăm lo cho gia đ&igrave;nh đ&atilde; chiếm hữu hết mọi thời gian, sự tập trung, sức lực của bạn. V&agrave; đ&oacute; l&agrave; l&yacute; do khiến bạn đau nhức mệt mỏi li&ecirc;n tục. Bạn thậm ch&iacute; c&ograve;n kh&ocirc;ng c&oacute; đủ thời gian m&agrave; mua thuốc, giảm thiểu những cơn đau.</p>\r\n\r\n<p>Ch&iacute;nh v&igrave; vậy bất cứ khi n&agrave;o bạn mệt mỏi, đau nhức h&atilde;y sử dụng&nbsp;<strong>Kem L&agrave;m N&oacute;ng Aloe Heat Lotion.</strong>&nbsp;Đừng mất c&ocirc;ng t&ograve; m&ograve;&nbsp;<strong>Aloe Heat Lotion</strong>&nbsp;c&oacute; t&aacute;c dụng g&igrave;, bạn chỉ cần y&ecirc;n t&acirc;m sử dụng th&ocirc;i! Bởi v&igrave; t&ograve; m&ograve; chỉ k&eacute;o d&agrave;i thời gian, khiến cơ thể k&ecirc;u la th&ecirc;m phần đau nhức.</p>\r\n\r\n<h3><em>&nbsp;<strong>Aloe Heat Lotion</strong>giảm đau mọi l&uacute;c, c&ocirc;ng dụng đa dạng si&ecirc;u hiệu quả.</em></h3>\r\n\r\n<p><strong>Aloe Heat Lotion</strong>&nbsp;đặc biệt trị đau nhức ,b&ocirc;i trơn, d&ugrave;ng để m&aacute;t &ndash; xa, l&agrave;m n&oacute;ng, l&agrave;m giảm đau v&agrave; thư gi&atilde;n l&agrave; c&ocirc;ng dụng của sản phẩm. Những tế b&agrave;o tổn thương được xoa dịu khiến cơ bắp c&oacute; th&ecirc;m năng lượng nhanh ch&oacute;ng hồi phục sau một khoảng thời gian l&agrave;m việc mệt mỏi hay chơi thể thao.</p>\r\n\r\n<h2>Th&agrave;nh phần c&oacute; trong sản phẩm Aloe Heat Lotion</h2>\r\n\r\n<p>Nước &eacute;p l&aacute; l&ocirc; hội Barbadensis, nước (Aqua), Methyl Salicylate, Glyceryl Stearate, Propanediol, Cetyl Alcohol, Arginine, Menthol, PEG-100 Stearate, tinh dầu l&aacute; khuynh diệp (Eucalptus Globulus), tinh dầu hạt quả mơ Prunus Armeniaca, tinh dầu hạt vừng Sesamum Indicum, Cetyl Ethylhexanoate, Carbomer, Allantoin, Ascorbic Acid, Disodium EDTA, Phenoxyethanol, Methylisothiazolinone.</p>\r\n\r\n<h2>&nbsp;Những t&aacute;c dụng vượt bậc của Aloe Heat Lotion</h2>\r\n\r\n<p>-L&agrave;m n&oacute;ng tăng tuần ho&agrave;n m&aacute;u.</p>\r\n\r\n<p>-Mọi căng thẳng, mệt mỏi được đẩy l&ugrave;i.</p>\r\n\r\n<p>&ndash; Mọi gi&aacute;c quan được đ&aacute;nh thức.</p>\r\n\r\n<p>-Phục hồi sức khỏe, giảm stress v&agrave; căng thẳng sau khi chơi thể thao hoặc l&agrave;m việc qu&aacute; sức.</p>\r\n\r\n<p>-Giảm sự mệt mỏi cơ bắp -Massage thư gi&atilde;n, đẩy l&ugrave;i mệt mỏi khi l&agrave;m việc qu&aacute; sức.</p>\r\n\r\n<p>-Giảm đau mọi nơi như: lưng, vai, khớp, xương.</p>\r\n\r\n<h2>Đối tượng sử dụng Aloe Heat Lotion</h2>\r\n\r\n<p>&ndash;&nbsp;<strong>Aloe Heat Lotion</strong>&nbsp;tốt cho mọi lứa tuổi</p>\r\n\r\n<p>-Kh&ocirc;ng ph&acirc;n biệt cơ thể, tuổi t&aacute;c,&nbsp;<strong>Aloe Heat Lotion</strong>&nbsp;tốt cho tất cả c&aacute;c đối tượng c&oacute; dấu hiệu: đau nhức cơ bắp, stress, mệt mỏi&hellip;</p>\r\n\r\n<p>&ndash; Đặc biệt&nbsp;<strong>Aloe Heat Lotion&nbsp;</strong>tốt cho người lớn tuổi bị đau xương khớp. Để điều trị tốt việc đau nhức ổ khớp ở người lớn tuổi ch&uacute;ng ta n&ecirc;n kết hợp c&aacute;c sản phẩm của Forever.</p>\r\n\r\n<h2>&nbsp;Hướng dẫn sử dụng Aloe Heat Lotion</h2>\r\n\r\n<p>T&ugrave;y từng bộ phận, loại đau nhức m&agrave; sử dụng&nbsp;<strong>Aloe Heat Lotion</strong>&nbsp;với c&aacute;ch kh&aacute;c nhau:</p>\r\n\r\n<p>Lấy một ch&uacute;t&nbsp;<strong>Aloe Heat Lotion</strong>&nbsp;thoa nhẹ l&ecirc;n v&ugrave;ng da bị tổn thương. Massage theo chuyển động tr&ograve;n v&agrave; để đến khi kem thẩm thấu v&agrave;o da.</p>\r\n\r\n<p>Người đau nhức b&igrave;nh thường: b&oacute;p nhẹ tu&yacute;p sản phẩm, xoa v&agrave;o chỗ đau nhức, massage một ch&uacute;t cho kem ngấm v&agrave; thư gi&atilde;n.</p>\r\n\r\n<p>Trị cảm c&uacute;m: đun nước s&ocirc;i, lấy một lượng nhỏ kem v&agrave; h&ograve;a tan, sau đ&oacute; x&ocirc;ng cho mồ h&ocirc;i độc ra hết l&agrave; sẽ giảm.</p>\r\n\r\n<p>Lưu &yacute;: kh&ocirc;ng d&ugrave;ng cho vết thương hở, kh&ocirc;ng để kem tiếp x&uacute;c với mắt. kh&ocirc;ng được nuốt hoặc xoa l&ecirc;n mắt. Trong trường hợp chẳng may để kem d&iacute;nh v&agrave;o mắt phải d&ugrave;ng ngay nước rửa sạch trong v&agrave;i ph&uacute;t loại bỏ những nguy cơ g&acirc;y hại, bảo vệ an to&agrave;n cho mắt.</p>\r\n\r\n<p>Thể t&iacute;ch thực: 4 Fl. Oz. (118ml).</p>\r\n\r\n<h2>Xuất xứ của&nbsp;Aloe Heat Lotion.</h2>\r\n\r\n<p><strong>Aloe Heat Lotion</strong>&nbsp;&nbsp;được sản xuất tại C&ocirc;ng ty Aloe Vera of America Hoa Kỳ thuộc tập đo&agrave;n Forever Living Products, 7501 East McCormick Parkway Scottsdale, Arizona 85250 USA.</p>\r\n', 7, 120, 0, 10, 350000, 325000, '2020-10-24 19:02:11', '1', '2020-10-24 19:02:11', '1', 1, 1),
(93, 30, 'Kem Dưỡng Chống Lão Hóa Da R3 Factor', 'kem-duong-chong-lao-hoa-da-r3-factor', 'f69531f82c45e61e8f8dbfbd40eb0fe4.jpg', 'c2b2d32db63e990f61e827f6eb8963fd.jpg#10a620f36e0cd316eb1f7ce1d47f3216.jpg', '<p><span style=\"color:#60b809\">* Hàng nh&acirc;̣p kh&acirc;̉u chính hãng USA - 100% hoàn toàn từ thi&ecirc;n nhi&ecirc;n<br />\r\n* Sản ph&acirc;̉m được sản xu&acirc;́t bởi c&ocirc;ng ngh&ecirc;̣ khép kín, hi&ecirc;̣n đại<br />\r\n* Sản ph&acirc;̉m được sử dụng ở hơn 160 qu&ocirc;́c gia, trong 40 năm qua<br />\r\n* Được đ&ocirc;̉i trả trong vòng 30 ngày</span><br />\r\n<span style=\"font-size:20px\"><span style=\"color:#000000\"><span style=\"font-family:Lato,sans-serif\"><span style=\"background-color:#ffffff\">------------------------------</span></span></span></span><br />\r\n<span style=\"color:#1e73be\">Ship h&agrave;ng to&agrave;n quốc -&nbsp;Tư vấn miễn ph&iacute;<br />\r\n-&nbsp;Thanh to&aacute;n đa dạng -&nbsp;Cam kết chất lượng</span><br />\r\n<span style=\"color:#74df00\">FOREVER LIVING - CHO BẠN SỨC KHỎE VÀ SẮC ĐẸP</span></p>\r\n', '<p>Kem dưỡng chống l&atilde;o h&oacute;a da R3 Factor Skin Defense Cream ch&iacute;nh l&agrave; một sự kết hợp giữa chất gel nha đam ( L&ocirc; Hội &ndash; Aloe Vera), chất collagen ho&agrave; tan, axit alpha-hydroxy v&agrave; được tăng cường th&ecirc;m vitamin A v&agrave; E &ndash; hai chất rất cần thiết để chăm s&oacute;c v&agrave; bảo vệ l&agrave;n da của bạn. -Kh&ocirc;ng những thế, chất AHA hay c&ograve;n gọi Alpha Hydroxy Acids chủ yếu được lấy từ nguồn thực vật thi&ecirc;n nhi&ecirc;n v&agrave; c&ograve;n được gọi l&agrave; axit tr&aacute;i c&acirc;y c&oacute; trong kem dưỡng n&agrave;y c&oacute; c&ocirc;ng dụng lấy đi c&aacute;c tế b&agrave;o chết tr&ecirc;n bề mặt của da.</p>\r\n\r\n<h3><strong>Kh&ocirc;i phục l&agrave;n da tươi trẻ của bạn Kem dưỡng chống l&atilde;o h&oacute;a da R3 Factor Skin Defense Cream&nbsp;</strong></h3>\r\n\r\n<p>&bull; Gi&uacute;p duy tr&igrave; m&agrave;u sắc, kết cấu v&agrave; cảm gi&aacute;c của da<br />\r\n&bull; Giữ, phục hồi v&agrave; đổi mới l&agrave;n da<br />\r\n&bull; Tăng cường vitamin A v&agrave; E<br />\r\n&bull; Th&acirc;n thiện với người ăn chay<br />\r\n&bull; Kh&ocirc;ng chứa gluten</p>\r\n\r\n<p>Gi&uacute;p l&agrave;n da của bạn giữ được độ ẩm tự nhi&ecirc;n, phục hồi khả năng phục hồi v&agrave; t&aacute;i tạo vẻ ngo&agrave;i với R3 Factor&reg; Skin Defense Creme &ndash; một sự kết hợp phong ph&uacute; của gel l&ocirc; hội ổn định, collagen h&ograve;a tan v&agrave; axit alpha-hydroxy, được tăng cường với vitamin A v&agrave; E, mỗi chất đều quan trọng để l&agrave;n da khỏe mạnh.</p>\r\n\r\n<p>Vitamin E l&agrave; một chất chống oxy h&oacute;a mạnh, trong khi vitamin A gi&uacute;p duy tr&igrave; l&agrave;n da khỏe mạnh v&agrave; c&oacute; lợi cho nhiều t&igrave;nh trạng da.</p>\r\n\r\n<p>Axit alpha hydroxy (AHA) đến từ c&aacute;c nguồn thực vật tự nhi&ecirc;n v&agrave; c&ograve;n được gọi l&agrave; axit tr&aacute;i c&acirc;y.&nbsp;C&ugrave;ng với nhau, c&aacute;c axit tr&aacute;i c&acirc;y n&agrave;y l&agrave; chất tẩy tế b&agrave;o chết gi&uacute;p loại bỏ c&aacute;c tế b&agrave;o chết khỏi bề mặt da bằng c&aacute;ch h&ograve;a tan c&aacute;c chất giống như keo tự nhi&ecirc;n v&agrave; giải ph&oacute;ng c&aacute;c tế b&agrave;o da chết.&nbsp;C&aacute;c tế b&agrave;o n&agrave;y tạo ra một r&agrave;o cản đối với kem dưỡng ẩm, v&igrave; vậy việc loại bỏ tế b&agrave;o chết một c&aacute;ch đồng đều đồng nghĩa với việc c&aacute;c tế b&agrave;o tươi mới hơn được tiếp x&uacute;c trong qu&aacute; tr&igrave;nh đổi mới của da.</p>\r\n\r\n<p>Khi qu&aacute; tr&igrave;nh đổi mới da diễn ra, bạn sẽ trải nghiệm to&agrave;n bộ lợi &iacute;ch của R3 Factor&reg; trong v&ograve;ng 21 ng&agrave;y.</p>\r\n\r\n<p>C&aacute;c loại kem axit tr&aacute;i c&acirc;y đ&atilde; được gọi l&agrave; chất chăm s&oacute;c da quan trọng nhất của thập kỷ. Bằng c&aacute;ch kết hợp AHA với l&ocirc; hội dịu nhẹ, R3 Factor Skin Defense Creme cung cấp lớp bảo vệ đầu ti&ecirc;n trong việc chống lại t&aacute;c động khắc nghiệt của thời gian để duy tr&igrave; vẻ tươi trẻ cho l&agrave;n da của bạn.</p>\r\n\r\n<p>Giữ lại, phục hồi v&agrave; l&agrave;m mới với axit alpha hydroxy, vitamin v&agrave; collagen để l&agrave;m mới l&agrave;n da của bạn.&nbsp;Forever R3 Factor&reg; tẩy tế b&agrave;o chết, gi&uacute;p loại bỏ c&aacute;c tế b&agrave;o da chết v&agrave; phục hồi với độ ẩm mạnh mẽ để mang lại lợi &iacute;ch ba trong một tối ưu.</p>\r\n\r\n<p><img alt=\"cong-nghe-aha-co-the-ban-chua-biet-voi-r3-factor-skin-defense-cream\" src=\"https://myphamnhadamshop.com/wp-content/uploads/2020/08/r3.jpg.webp\" style=\"height:781px; width:599px\" /></p>\r\n\r\n<p><strong>SỬ DỤNG</strong></p>\r\n\r\n<p>Sau khi rửa mặt sạch , thoa đều l&ecirc;n mặt, cổ v&agrave; c&aacute;c v&ugrave;ng kh&aacute;c nếu cần. Để c&oacute; kết quả tốt nhất, sử dụng cả s&aacute;ng v&agrave; tối. C&oacute; thể tiếp theo bằng Kem nền l&agrave;m săn chắc v&agrave; / hoặc trang điểm hoặc bằng Kem dưỡng phục hồi ban đ&ecirc;m v&agrave;o ban đ&ecirc;m, nếu muốn.</p>\r\n\r\n<p><strong>Danh s&aacute;ch th&agrave;nh phần</strong></p>\r\n\r\n<p>Aloe Barbadensis Gel (Gel l&ocirc; hội ổn định), Nước, Butylene Glycol, Squalane, Methyl Gluceth-20, Cetyl Dimethicone, Prunus Armeniaca (Mơ) Kernel Oil, Glyceryl Stearate, Polyacrylamide, C13-14 Isoparaffin, Laureth-7, Tocopheryl Linoleate, Sodium Hyaluronate, Tocopheryl Acetate, Glycolic Acid, Saccharum Officinarum (Sugar Cane) Extract, Citrus Medica Limonum (Lemon) Fruit Extract, Pyrus Malus (Apple) Extract, Camellia Sinensis Leaf Extract, Retinyl Palmitate, Soluble Collagen, PEG-100 Stearate, Ascorbic Axit, Triethanolamine, Diazolidinyl Ur&ecirc;, Methylparaben, Propylparaben, Hương thơm.</p>\r\n\r\n<p><strong>C&aacute;c chứng nhận:</strong></p>\r\n\r\n<p><img src=\"https://myphamnhadamshop.com/wp-content/uploads/2020/09/amino-acids_-_ingredient_ingredient_256x256_1558439706876.png.webp\" style=\"height:256px; width:256px\" /></p>\r\n\r\n<p><strong>Axit Alpha-Hydroxy</strong></p>\r\n\r\n<p><img src=\"https://myphamnhadamshop.com/wp-content/uploads/2020/09/collagen_-_ingredient_ingredient_256x256_1558436087423.png.webp\" style=\"height:256px; width:256px\" /></p>\r\n\r\n<p><strong>Collagen</strong></p>\r\n\r\n<p><img src=\"https://myphamnhadamshop.com/wp-content/uploads/2020/09/aloe_barbadensis_leaf_juice_-_ingredient_ingredient_256x256_1558445297088.png.webp\" style=\"height:256px; width:256px\" /></p>\r\n\r\n<p><strong>Gel nha đam ổn định</strong></p>\r\n\r\n<h3>Xuất xứ của Kem dưỡng chống l&atilde;o h&oacute;a da R3 Factor Skin Defense Cream</h3>\r\n\r\n<p>Xuất xứ: được sản xuất tại C&ocirc;ng ty Aloe Vera of America, Inc. 13745 Jupiter Road Dallas, Texas 75238, Hoa Kỳ.</p>\r\n\r\n<p>C&ocirc;ng ty nhập khẩu : C&ocirc;ng ty TNHH Thương mại L&ocirc; Hội. 199 Nam Kỳ Khởi Nghĩa, P.7, Q.3, TP.Hồ Ch&iacute; Minh.</p>\r\n\r\n<p>Ph&acirc;n phối tại: Mỹ Phẩm Thi&ecirc;n Nhi&ecirc;n Nha Đam Shop; Mail: myphamnhadamshop@gmail.com</p>\r\n\r\n<p><strong>MỸ PHẨM THI&Ecirc;N NHI&Ecirc;N NHA ĐAM SHOP &ndash; V&Igrave; MỘT VIỆT NAM KHỎE MẠNH !</strong></p>\r\n', 7, 100, 0, 10, 850000, 765000, '2020-10-24 21:22:03', '1', '2020-10-24 21:22:03', '1', 1, 1),
(95, 30, 'Huyết Thanh Làm Săn Chắc Da – Firming Serum', 'huyet-thanh-lam-san-chac-da-firming-serum', '2e77ed3bbd2167a6b1ba98110bd6ddd4.png', '5be52401fdfcc5b29493c3d3c3fddc0e.png', '<p><span style=\"color:#60b809\">* Hàng nh&acirc;̣p kh&acirc;̉u chính hãng USA - 100% hoàn toàn từ thi&ecirc;n nhi&ecirc;n<br />\r\n* Sản ph&acirc;̉m được sản xu&acirc;́t bởi c&ocirc;ng ngh&ecirc;̣ khép kín, hi&ecirc;̣n đại<br />\r\n* Sản ph&acirc;̉m được sử dụng ở hơn 160 qu&ocirc;́c gia, trong 40 năm qua<br />\r\n* Được đ&ocirc;̉i trả trong vòng 30 ngày</span><br />\r\n<span style=\"font-size:20px\"><span style=\"color:#000000\"><span style=\"font-family:Lato,sans-serif\"><span style=\"background-color:#ffffff\">------------------------------</span></span></span></span><br />\r\n<span style=\"color:#1e73be\">Ship h&agrave;ng to&agrave;n quốc -&nbsp;Tư vấn miễn ph&iacute;<br />\r\n-&nbsp;Thanh to&aacute;n đa dạng -&nbsp;Cam kết chất lượng</span><br />\r\n<span style=\"color:#74df00\">FOREVER LIVING - CHO BẠN SỨC KHỎE VÀ SẮC ĐẸP</span></p>\r\n', '<h4>Huyết Thanh L&agrave;m Săn Chắc Da &ndash; Firming Serum</h4>\r\n\r\n<p>Một peptide ba axit amin đ&atilde; được chứng minh l&acirc;m s&agrave;ng m&ocirc; phỏng qu&aacute; tr&igrave;nh tự nhi&ecirc;n của da để tăng vẻ săn chắc.&nbsp;C&aacute;c thử nghiệm l&acirc;m s&agrave;ng cho thấy c&aacute;c axit amin n&agrave;y l&agrave;m giảm sự xuất hiện của đường nhăn v&agrave; tăng độ đ&agrave;n hồi.</p>\r\n\r\n<p><strong>Đ&aacute;nh bay l&atilde;o h&oacute;a từ b&ecirc;n ngo&agrave;i với c&ocirc;ng thức đột ph&aacute; n&agrave;y</strong></p>\r\n\r\n<p>&bull; Giảm sự xuất hiện của đường nhăn v&agrave; nếp nhăn<br />\r\n&bull; Cải thiện cảm gi&aacute;c đ&agrave;n hồi v&agrave; săn chắc của da<br />\r\n&bull; Hỗ trợ tổng hợp collagen l&agrave;nh mạnh v&agrave; gi&uacute;p da kh&ocirc;ng đều m&agrave;u<br />\r\n&bull; C&oacute; th&agrave;nh phần ti&ecirc;n tiến, đ&atilde; được thử nghiệm l&acirc;m s&agrave;ng<br />\r\n&bull; Th&acirc;n thiện với người ăn chay<br />\r\n&bull; Kh&ocirc;ng chứa Gluten</p>\r\n\r\n<p>Chất tẩy mạnh n&agrave;y c&oacute; kết quả r&otilde; r&agrave;ng.</p>\r\n\r\n<p>N&oacute; c&oacute; t&iacute;nh năng cắt cạnh, thử nghiệm l&acirc;m s&agrave;ng th&agrave;nh phần trifluoracetyl tripepetide-2 l&agrave;m tăng sức mạnh của Aloe.&nbsp;Chỉ ri&ecirc;ng th&agrave;nh phần đ&oacute; c&oacute; thể l&agrave; sản phẩm của ri&ecirc;ng n&oacute;, nhưng ch&uacute;ng t&ocirc;i cũng kết hợp n&oacute; với hyaluronate natri thủy ph&acirc;n v&agrave; c&aacute;c chất dưỡng da.</p>\r\n\r\n<p>Serum l&agrave;m săn chắc mục ti&ecirc;u l&atilde;o h&oacute;a từ b&ecirc;n ngo&agrave;i với một trong những đột ph&aacute; th&uacute; vị nhất của khoa học da!&nbsp;v&ocirc; hạn bởi huyết thanh l&agrave;m săn chắc Forever &trade; l&agrave;m tăng sức mạnh của Aloe với một th&agrave;nh phần thử nghiệm l&acirc;m s&agrave;ng, trifluoracetyl tripepetide-2.&nbsp;Trong c&aacute;c thử nghiệm l&acirc;m s&agrave;ng th&agrave;nh phần đơn n&agrave;y cải thiện đ&aacute;ng kể độ đ&agrave;n hồi của da v&agrave; được biết l&agrave; chống lại progerin, một loại protein c&oacute; hại tăng l&ecirc;n khi bạn gi&agrave; đi v&agrave; t&agrave;n ph&aacute; l&agrave;n da của bạn.&nbsp;Bằng c&aacute;ch bắt chước c&aacute;c qu&aacute; tr&igrave;nh da tự nhi&ecirc;n, peptide ba axit amin n&agrave;y l&agrave;m tăng sự xuất hiện của sự săn chắc v&agrave; l&agrave;m giảm nếp nhăn v&agrave; nếp nhăn.</p>\r\n\r\n<p>Chỉ ri&ecirc;ng th&agrave;nh phần đ&oacute; c&oacute; thể l&agrave; sản phẩm của ri&ecirc;ng n&oacute;, nhưng ch&uacute;ng t&ocirc;i kh&ocirc;ng dừng ở đ&oacute;.&nbsp;Kết hợp với hyaluronate natri thủy ph&acirc;n, một chất giữ ẩm tự nhi&ecirc;n, để hỗ trợ độ ẩm v&agrave; điều h&ograve;a da, serum l&agrave;m săn chắc được b&agrave;o chế một c&aacute;ch khoa học để Aloe đạt được những lợi &iacute;ch tối ưu để l&agrave;m dịu v&agrave; mịn da.&nbsp;Chiết xuất nấm men gi&uacute;p hỗ trợ tổng hợp collagen v&agrave; bảo vệ da tự nhi&ecirc;n để giảm sự xuất hiện của t&ocirc;ng m&agrave;u da kh&ocirc;ng đồng đều trong khi protein whey phục hồi l&agrave;n da bằng c&aacute;ch tăng độ mịn, độ săn chắc v&agrave; độ d&agrave;y của l&agrave;n da.</p>\r\n\r\n<p>C&ocirc;ng thức xếp chồng n&agrave;y l&agrave; giấc mơ của c&aacute;c nh&agrave; khoa học da được củng cố bằng sức mạnh của thi&ecirc;n nhi&ecirc;n v&agrave; những ph&aacute;t hiện trong ph&ograve;ng th&iacute; nghiệm ti&ecirc;n tiến nhất gi&uacute;p bạn nh&igrave;n v&agrave; cảm nhận tốt nhất.</p>\r\n\r\n<p><strong>Infinite by Forever Firming Serum m&atilde; số #555, dung t&iacute;ch 118ml. Th&agrave;nh phần từ L&ocirc; hội v&agrave; chất men tự nhi&ecirc;n. L&agrave; c&ocirc;ng thức ri&ecirc;ng của FLP ( Firming Serum) t&aacute;c động l&ecirc;n da từ ngo&agrave;i, hồi phục vết rạn, gi&uacute;p da phẳng phiu, tăng độ săn chắc.#</strong></p>\r\n', 7, 150, 0, 10, 560000, 505000, '2020-10-25 08:23:16', '1', '2020-10-25 08:23:16', '1', 1, 1),
(96, 31, 'Phấn Mắt', 'phan-mat', 'f54ba5f483ccdbcf5378dabbc86fca69.jpg', '8d36cf152e9d660c8f1b41051ba68855.png#72a2f4c01fb769a86ba74d58db730fb2.jpg', '<p><span style=\"color:#60b809\">* Hàng nh&acirc;̣p kh&acirc;̉u chính hãng USA - 100% hoàn toàn từ thi&ecirc;n nhi&ecirc;n<br />\r\n* Sản ph&acirc;̉m được sản xu&acirc;́t bởi c&ocirc;ng ngh&ecirc;̣ khép kín, hi&ecirc;̣n đại<br />\r\n* Sản ph&acirc;̉m được sử dụng ở hơn 160 qu&ocirc;́c gia, trong 40 năm qua<br />\r\n* Được đ&ocirc;̉i trả trong vòng 30 ngày</span><br />\r\n<span style=\"font-size:20px\"><span style=\"color:#000000\"><span style=\"font-family:Lato,sans-serif\"><span style=\"background-color:#ffffff\">------------------------------</span></span></span></span><br />\r\n<span style=\"color:#1e73be\">Ship h&agrave;ng to&agrave;n quốc -&nbsp;Tư vấn miễn ph&iacute;<br />\r\n-&nbsp;Thanh to&aacute;n đa dạng -&nbsp;Cam kết chất lượng</span><br />\r\n<span style=\"color:#74df00\">FOREVER LIVING - CHO BẠN SỨC KHỎE VÀ SẮC ĐẸP</span></p>\r\n', '', 7, 130, 0, 10, 250000, 225000, '2020-10-25 08:27:42', '1', '2020-10-25 08:27:42', '1', 1, 1),
(97, 31, 'Chì Kẻ Môi', 'chi-ke-moi', '4cec0e845f8bfc5a231e8fe09b2480ee.jpg', '1a3fe453a03dece198ddecb66f4a1bc0.jpg#17a0b0a5b454b6c7fd09247cd479da79.jpg', '<p><span style=\"color:#60b809\">* Hàng nh&acirc;̣p kh&acirc;̉u chính hãng USA - 100% hoàn toàn từ thi&ecirc;n nhi&ecirc;n<br />\r\n* Sản ph&acirc;̉m được sản xu&acirc;́t bởi c&ocirc;ng ngh&ecirc;̣ khép kín, hi&ecirc;̣n đại<br />\r\n* Sản ph&acirc;̉m được sử dụng ở hơn 160 qu&ocirc;́c gia, trong 40 năm qua<br />\r\n* Được đ&ocirc;̉i trả trong vòng 30 ngày</span><br />\r\n<span style=\"font-size:20px\"><span style=\"color:#000000\"><span style=\"font-family:Lato,sans-serif\"><span style=\"background-color:#ffffff\">------------------------------</span></span></span></span><br />\r\n<span style=\"color:#1e73be\">Ship h&agrave;ng to&agrave;n quốc -&nbsp;Tư vấn miễn ph&iacute;<br />\r\n-&nbsp;Thanh to&aacute;n đa dạng -&nbsp;Cam kết chất lượng</span><br />\r\n<span style=\"color:#74df00\">FOREVER LIVING - CHO BẠN SỨC KHỎE VÀ SẮC ĐẸP</span></p>\r\n', '', 7, 320, 0, 10, 120000, 108000, '2020-10-25 08:29:51', '1', '2020-10-25 08:29:51', '1', 1, 1),
(98, 31, 'Chì Che Khuyết Điểm', 'chi-che-khuyet-diem', 'e1f13f0403ee9276bcfe69f5198bf3c9.jpg', '54b559e5aed37a67118ef2e227e06522.jpg#87ac118fe1c6d01caa25a66d56fc655f.jpg', '<p><span style=\"color:#60b809\">* Hàng nh&acirc;̣p kh&acirc;̉u chính hãng USA - 100% hoàn toàn từ thi&ecirc;n nhi&ecirc;n<br />\r\n* Sản ph&acirc;̉m được sản xu&acirc;́t bởi c&ocirc;ng ngh&ecirc;̣ khép kín, hi&ecirc;̣n đại<br />\r\n* Sản ph&acirc;̉m được sử dụng ở hơn 160 qu&ocirc;́c gia, trong 40 năm qua<br />\r\n* Được đ&ocirc;̉i trả trong vòng 30 ngày</span><br />\r\n<span style=\"font-size:20px\"><span style=\"color:#000000\"><span style=\"font-family:Lato,sans-serif\"><span style=\"background-color:#ffffff\">------------------------------</span></span></span></span><br />\r\n<span style=\"color:#1e73be\">Ship h&agrave;ng to&agrave;n quốc -&nbsp;Tư vấn miễn ph&iacute;<br />\r\n-&nbsp;Thanh to&aacute;n đa dạng -&nbsp;Cam kết chất lượng</span><br />\r\n<span style=\"color:#74df00\">FOREVER LIVING - CHO BẠN SỨC KHỎE VÀ SẮC ĐẸP</span></p>\r\n', '', 7, 1, 0, 0, 150000, 150000, '2020-10-25 08:31:33', '1', '2020-10-25 08:31:33', '1', 1, 1),
(99, 31, 'Bút Vẻ Lông Mi', 'but-ve-long-mi', '2857eb46090128afbd1b1f24c685b9d5.jpg', 'f772d4903040966744e70dd6c52f6bbb.jpg#cd80302c18199f3f2a6c922164d7eb07.jpg', '<p><span style=\"color:#60b809\">* Hàng nh&acirc;̣p kh&acirc;̉u chính hãng USA - 100% hoàn toàn từ thi&ecirc;n nhi&ecirc;n<br />\r\n* Sản ph&acirc;̉m được sản xu&acirc;́t bởi c&ocirc;ng ngh&ecirc;̣ khép kín, hi&ecirc;̣n đại<br />\r\n* Sản ph&acirc;̉m được sử dụng ở hơn 160 qu&ocirc;́c gia, trong 40 năm qua<br />\r\n* Được đ&ocirc;̉i trả trong vòng 30 ngày</span><br />\r\n<span style=\"font-size:20px\"><span style=\"color:#000000\"><span style=\"font-family:Lato,sans-serif\"><span style=\"background-color:#ffffff\">------------------------------</span></span></span></span><br />\r\n<span style=\"color:#1e73be\">Ship h&agrave;ng to&agrave;n quốc -&nbsp;Tư vấn miễn ph&iacute;<br />\r\n-&nbsp;Thanh to&aacute;n đa dạng -&nbsp;Cam kết chất lượng</span><br />\r\n<span style=\"color:#74df00\">FOREVER LIVING - CHO BẠN SỨC KHỎE VÀ SẮC ĐẸP</span></p>\r\n', '', 7, 1, 0, 0, 150000, 150000, '2020-10-25 08:34:25', '1', '2020-10-25 08:34:25', '1', 1, 1);

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
-- Cấu trúc bảng cho bảng `db_slider`
--

CREATE TABLE `db_slider` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 NOT NULL,
  `img` varchar(100) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'Supper Admin',
  `modified` datetime NOT NULL,
  `modified_by` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'Supper Admin',
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_slider`
--

INSERT INTO `db_slider` (`id`, `name`, `link`, `img`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(7, 'Sanpham', 'sanpham', 'banner21.png', '2020-06-01 21:50:59', '1', '2020-06-01 22:10:46', '', 0, 1),
(8, 'sanpham1', 'sanpham1', 'banner31.png', '2020-06-01 21:51:41', '1', '2020-06-01 22:02:29', '', 0, 1),
(9, 'sanpham2', 'sanpham2', 'banner121.png', '2020-06-01 21:51:52', '1', '2020-06-01 22:05:51', '', 0, 1),
(11, 'sanpham5', 'sanpham5', 'banner41.png', '2020-06-01 22:05:38', '1', '2020-06-01 22:05:38', '1', 0, 1),
(12, 'sanpham4', 'sanpham4', 'banner51.png', '2020-06-01 22:06:09', '1', '2020-06-01 22:06:09', '1', 0, 1),
(14, '1', '1', '21.jpg', '2020-10-25 20:29:21', '1', '2020-10-25 20:29:21', '1', 1, 1),
(15, '2', '2', '11.jpg', '2020-10-25 20:29:29', '1', '2020-10-25 20:29:29', '1', 1, 1),
(16, '3', '3', '41.png', '2020-10-25 20:29:37', '1', '2020-10-25 20:29:37', '1', 1, 1),
(17, '4', '4', '31.jpg', '2020-10-25 20:29:44', '1', '2020-10-25 20:29:44', '1', 1, 1),
(18, '5', '5', '411.png', '2020-10-25 20:30:04', '1', '2020-10-25 20:30:04', '1', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_user`
--

CREATE TABLE `db_user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8 NOT NULL,
  `username` varchar(225) CHARACTER SET utf8 NOT NULL,
  `password` varchar(64) CHARACTER SET utf8 NOT NULL,
  `role` int(11) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `gender` int(1) NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8 NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_user`
--

INSERT INTO `db_user` (`id`, `fullname`, `username`, `password`, `role`, `email`, `gender`, `phone`, `address`, `img`, `created`, `trash`, `status`) VALUES
(1, 'Chủ Gian Hàng', 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 'admin@gmail.com', 1, '0904517042', 'Hải Phòng', '8eafd3de1a535ecf5d700e0f19b08477.jpg', '2019-04-23 09:16:16', 1, 1),
(2, 'Quản lý', 'quanly', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'quanly@gmail.com', 1, '0345472777', 'Hai Phong', '22d09439456047d53bf912afc2f31fe9.png', '2019-04-25 22:08:18', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_usergroup`
--

CREATE TABLE `db_usergroup` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `access` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_usergroup`
--

INSERT INTO `db_usergroup` (`id`, `name`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `access`, `status`) VALUES
(1, 'Toàn quyền', '2020-06-20 23:29:15', 1, '2020-06-20 23:29:15', 4, 1, 1, 1),
(2, 'Nhân viên', '2020-06-20 23:29:21', 1, '2020-06-20 23:29:21', 4, 1, 1, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `db_category`
--
ALTER TABLE `db_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_config`
--
ALTER TABLE `db_config`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_contact`
--
ALTER TABLE `db_contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_content`
--
ALTER TABLE `db_content`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_customer`
--
ALTER TABLE `db_customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_discount`
--
ALTER TABLE `db_discount`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_district`
--
ALTER TABLE `db_district`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matp` (`provinceid`);

--
-- Chỉ mục cho bảng `db_order`
--
ALTER TABLE `db_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customerid` (`customerid`),
  ADD KEY `province` (`province`),
  ADD KEY `district` (`district`),
  ADD KEY `province_2` (`province`),
  ADD KEY `district_2` (`district`),
  ADD KEY `province_3` (`province`),
  ADD KEY `district_3` (`district`);

--
-- Chỉ mục cho bảng `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productid` (`productid`),
  ADD KEY `orderid` (`orderid`);

--
-- Chỉ mục cho bảng `db_producer`
--
ALTER TABLE `db_producer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_product`
--
ALTER TABLE `db_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producer` (`producer`),
  ADD KEY `catid` (`catid`);

--
-- Chỉ mục cho bảng `db_province`
--
ALTER TABLE `db_province`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_slider`
--
ALTER TABLE `db_slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_user`
--
ALTER TABLE `db_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`);

--
-- Chỉ mục cho bảng `db_usergroup`
--
ALTER TABLE `db_usergroup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `db_category`
--
ALTER TABLE `db_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `db_config`
--
ALTER TABLE `db_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `db_contact`
--
ALTER TABLE `db_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `db_content`
--
ALTER TABLE `db_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `db_customer`
--
ALTER TABLE `db_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT cho bảng `db_discount`
--
ALTER TABLE `db_discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `db_order`
--
ALTER TABLE `db_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT cho bảng `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT cho bảng `db_producer`
--
ALTER TABLE `db_producer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `db_product`
--
ALTER TABLE `db_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT cho bảng `db_slider`
--
ALTER TABLE `db_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `db_user`
--
ALTER TABLE `db_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `db_usergroup`
--
ALTER TABLE `db_usergroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `db_district`
--
ALTER TABLE `db_district`
  ADD CONSTRAINT `db_district_ibfk_1` FOREIGN KEY (`provinceid`) REFERENCES `db_province` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `db_order`
--
ALTER TABLE `db_order`
  ADD CONSTRAINT `db_order_ibfk_2` FOREIGN KEY (`province`) REFERENCES `db_province` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_order_ibfk_3` FOREIGN KEY (`district`) REFERENCES `db_district` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_order_ibfk_4` FOREIGN KEY (`customerid`) REFERENCES `db_customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD CONSTRAINT `db_orderdetail_ibfk_2` FOREIGN KEY (`productid`) REFERENCES `db_product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_orderdetail_ibfk_3` FOREIGN KEY (`orderid`) REFERENCES `db_order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `db_product`
--
ALTER TABLE `db_product`
  ADD CONSTRAINT `db_product_ibfk_1` FOREIGN KEY (`catid`) REFERENCES `db_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_product_ibfk_2` FOREIGN KEY (`producer`) REFERENCES `db_producer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `db_user`
--
ALTER TABLE `db_user`
  ADD CONSTRAINT `db_user_ibfk_1` FOREIGN KEY (`role`) REFERENCES `db_usergroup` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
