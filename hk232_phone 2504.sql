-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 24, 2024 lúc 07:24 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hk232_phone`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`id`, `username`, `password`, `email`, `image`) VALUES
(13, 'admin', '12345', 'admin@gmail.com', '2113518_AnhTheSinhVien.jpg.jpg'),
(14, 'huyquang123', '12345678', 'huy.nguyenquangk21ce@hcmut.edu.vn', '66222a01d3208.jpg'),
(15, 'quan123', '987654321', '222@gmail.com', 'avatar.jpg'),
(17, 'khanh.trankiwi', '12345', 'dsadada@gmail.com', 'avatar.jpg'),
(18, 'khanh.trankiwi2', '123452', 'dsadada2@gmail.com', 'phone2.jpg'),
(20, 'La Minh Duc', '12345', 'laminhduc2003@gmail.com', 'HN.jpg'),
(21, 'huynguyen16103', '12345', 'huy1508@gmail.com', '6627634f6b374.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `brand_image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`brand_id`, `brand_name`, `brand_image`) VALUES
(1, 'Asus', 'Không có'),
(3, 'Apple', 'Không có');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `new`
--

CREATE TABLE `new` (
  `new_id` int(11) NOT NULL,
  `new_title` text NOT NULL,
  `new_tag` text NOT NULL,
  `new_img` text NOT NULL,
  `new_content` text NOT NULL,
  `view_count` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `new`
--

INSERT INTO `new` (`new_id`, `new_title`, `new_tag`, `new_img`, `new_content`, `view_count`, `date`) VALUES
(7, 'Lộ diện thêm hình ảnh màu sắc mới rõ nét iPhone 15 series', 'Công nghệ', './thumbnail/iphone15.jpg', '<p>Một điều chắc chắn về iPhone 15 đ&oacute; l&agrave; n&oacute; sẽ được ph&aacute;t h&agrave;nh trong th&aacute;ng 9. Ch&uacute;ng ta biết điều n&agrave;y v&igrave; Apple lu&ocirc;n rất đều đặn khi ra mắt iPhone, thường v&agrave;o th&aacute;ng 9. D&ugrave; c&oacute; thể sẽ c&oacute; sự chậm trễ trong việc ph&aacute;t h&agrave;nh sản phẩm cho người d&ugrave;ng, th&igrave; sự kiện ra mắt ch&iacute;nh thức vẫn sẽ diễn ra trong th&aacute;ng 9. Giống như thời gian ph&aacute;t h&agrave;nh, Apple cũng sử dụng cấu tr&uacute;c thiết bị v&agrave; phương thức đặt t&ecirc;n giống nhau cho c&aacute;c mẫu iPhone trong một khoảng thời gian gần đ&acirc;y. Dự kiến, Apple sẽ ra mắt bốn mẫu iPhone 15, bao gồm hai phi&ecirc;n bản iPhone 15 Pro v&agrave; hai phi&ecirc;n bản ti&ecirc;u chuẩn. Như iPhone 14, Apple dự kiến sẽ cho ra đời hai cặp điện thoại, bao gồm iPhone 15, iPhone 15 Plus, iPhone 15 Pro v&agrave; iPhone 15 Pro Max. C&ugrave;ng l&uacute;c đ&oacute; iPhone Pro Max mới dự kiến sẽ c&oacute; 2 m&agrave;u mới gồm m&agrave;u Blue v&agrave; m&agrave;u Đỏ thắm. Mặc d&ugrave; t&ecirc;n gọi c&oacute; thể kh&aacute;c nhau, nhưng k&iacute;ch thước v&agrave; kiểu thiết bị sẽ giống như trước đ&acirc;y. C&aacute;c m&ocirc; h&igrave;nh CAD, c&aacute;c mẫu in 3D v&agrave; phi&ecirc;n bản kim loại đều cho thấy k&iacute;ch thước m&agrave;n h&igrave;nh 6,1 inch v&agrave; 6,7 inch sẽ được sử dụng. C&oacute; thể sẽ c&oacute; những thay đổi cho d&ograve;ng sản phẩm iPhone 15 Pro, với những tin đồn về thiết kế viền bo tr&ograve;n hơn v&agrave; th&acirc;n m&aacute;y được sản xuất từ titanium thay v&igrave; th&eacute;p. Điều n&agrave;y c&oacute; thể gi&uacute;p giảm trọng lượng của c&aacute;c mẫu Pro một c&aacute;ch đ&aacute;ng kể. Trong khi đ&oacute;, kh&ocirc;ng c&oacute; th&ocirc;ng tin li&ecirc;n quan đến iPhone 15, cho thấy n&oacute; sẽ được sản xuất bằng vật liệu nh&ocirc;m th&ocirc;ng thường. Trong khi đ&oacute;, m&agrave;n h&igrave;nh của iPhone 15 series c&oacute; thể sẽ kh&ocirc;ng thay đổi nhiều so với iPhone 14. Trong th&aacute;ng 4, một b&aacute;o c&aacute;o cho biết m&agrave;n h&igrave;nh OLED của iPhone 15 sẽ sử dụng c&aacute;c vật liệu tương tự như iPhone 14, với sự thay đổi dự kiến sẽ xảy ra ở iPhone 16. C&aacute;c m&ocirc; h&igrave;nh cho thấy c&aacute;c viền của k&iacute;nh mặt trước của iPhone 15 Pro Max sẽ rất mỏng, điều n&agrave;y cũng được nhiều người đồn đại.&nbsp;</p>', 16, '2024-04-24'),
(9, 'PS5 Pro sẽ nhanh gấp 3 lần PS5 khi ra mắt vào cuối năm nay', 'Công nghệ', './thumbnail/ps5.jpg', '<p>Một điều chắc chắn về iPhone 15 đ&oacute; l&agrave; n&oacute; sẽ được ph&aacute;t h&agrave;nh trong th&aacute;ng 9. Ch&uacute;ng ta biết điều n&agrave;y v&igrave; Apple lu&ocirc;n rất đều đặn khi ra mắt iPhone, thường v&agrave;o th&aacute;ng 9. D&ugrave; c&oacute; thể sẽ c&oacute; sự chậm trễ trong việc ph&aacute;t h&agrave;nh sản phẩm cho người d&ugrave;ng, th&igrave; sự kiện ra mắt ch&iacute;nh thức vẫn sẽ diễn ra trong th&aacute;ng 9. Giống như thời gian ph&aacute;t h&agrave;nh, Apple cũng sử dụng cấu tr&uacute;c thiết bị v&agrave; phương thức đặt t&ecirc;n giống nhau cho c&aacute;c mẫu iPhone trong một khoảng thời gian gần đ&acirc;y. Dự kiến, Apple sẽ ra mắt bốn mẫu iPhone 15, bao gồm hai phi&ecirc;n bản iPhone 15 Pro v&agrave; hai phi&ecirc;n bản ti&ecirc;u chuẩn. Như iPhone 14, Apple dự kiến sẽ cho ra đời hai cặp điện thoại, bao gồm iPhone 15, iPhone 15 Plus, iPhone 15 Pro v&agrave; iPhone 15 Pro Max. C&ugrave;ng l&uacute;c đ&oacute; iPhone Pro Max mới dự kiến sẽ c&oacute; 2 m&agrave;u mới gồm m&agrave;u Blue v&agrave; m&agrave;u Đỏ thắm. Mặc d&ugrave; t&ecirc;n gọi c&oacute; thể kh&aacute;c nhau, nhưng k&iacute;ch thước v&agrave; kiểu thiết bị sẽ giống như trước đ&acirc;y. C&aacute;c m&ocirc; h&igrave;nh CAD, c&aacute;c mẫu in 3D v&agrave; phi&ecirc;n bản kim loại đều cho thấy k&iacute;ch thước m&agrave;n h&igrave;nh 6,1 inch v&agrave; 6,7 inch sẽ được sử dụng. C&oacute; thể sẽ c&oacute; những thay đổi cho d&ograve;ng sản phẩm iPhone 15 Pro, với những tin đồn về thiết kế viền bo tr&ograve;n hơn v&agrave; th&acirc;n m&aacute;y được sản xuất từ titanium thay v&igrave; th&eacute;p. Điều n&agrave;y c&oacute; thể gi&uacute;p giảm trọng lượng của c&aacute;c mẫu Pro một c&aacute;ch đ&aacute;ng kể. Trong khi đ&oacute;, kh&ocirc;ng c&oacute; th&ocirc;ng tin li&ecirc;n quan đến iPhone 15, cho thấy n&oacute; sẽ được sản xuất bằng vật liệu nh&ocirc;m th&ocirc;ng thường. Trong khi đ&oacute;, m&agrave;n h&igrave;nh của iPhone 15 series c&oacute; thể sẽ kh&ocirc;ng thay đổi nhiều so với iPhone 14. Trong th&aacute;ng 4, một b&aacute;o c&aacute;o cho biết m&agrave;n h&igrave;nh OLED của iPhone 15 sẽ sử dụng c&aacute;c vật liệu tương tự như iPhone 14, với sự thay đổi dự kiến sẽ xảy ra ở iPhone 16. C&aacute;c m&ocirc; h&igrave;nh cho thấy c&aacute;c viền của k&iacute;nh mặt trước của iPhone 15 Pro Max sẽ rất mỏng, điều n&agrave;y cũng được nhiều người đồn đại.&nbsp;</p>', 5, '2024-04-24'),
(10, 'Công Phượng ghi dấu ấn trong lần đầu đá chính tại Nhật Bản', 'Thể Thao', './thumbnail/cong phuong 2.png', '<p>Trong lần đầu đ&aacute; ch&iacute;nh tại Nhật Bản,&nbsp;<a href=\"https://znews.vn/tieu-diem/cau-thu-cong-phuong.html\">C&ocirc;ng Phượng</a>&nbsp;c&oacute; m&agrave;n thể hiện kh&aacute; ổn. Tuyển thủ Việt Nam được chơi 68 ph&uacute;t. Anh c&oacute; 1 c&uacute; s&uacute;t tr&uacute;ng đ&iacute;ch, 3 lần tạo cơ hội từ chấm đ&aacute; phạt g&oacute;c v&agrave; nhận một thẻ v&agrave;ng. Sau tiếng c&ograve;i khai cuộc, Yokohama d&agrave;nh cho Okayama bất ngờ, khi dồn kh&aacute; nhiều b&oacute;ng cho C&ocirc;ng Phượng, người được bố tr&iacute; ở vị tr&iacute; tiền vệ tấn c&ocirc;ng lệch phải. Ngay ph&uacute;t thứ 5, cựu sao HAGL đ&atilde; c&oacute; cơ hội đối mặt thủ m&ocirc;n. Anh tung c&uacute; s&uacute;t căng nhưng kh&ocirc;ng đủ hiểm để mở tỷ số. Chỉ 2 ph&uacute;t sau, C&ocirc;ng Phượng tiếp tục ghi dấu ấn với pha treo b&oacute;ng kh&oacute; chịu, buộc thủ m&ocirc;n đội chủ nh&agrave; phải vất vả lao ra đấm b&oacute;ng giải nguy. Sau khoảng 10 ph&uacute;t bị C&ocirc;ng Phượng g&acirc;y kh&oacute; khăn, Okayama chấn chỉnh lại đội h&igrave;nh v&agrave; bịt khoảng trống b&ecirc;n c&aacute;nh phải. Ng&ocirc;i sao của tuyển Việt Nam bị k&egrave;m chặt v&agrave; kh&ocirc;ng c&oacute; th&ecirc;m cơ hội dứt điểm. Ph&uacute;t 29, C&ocirc;ng Phượng tạo ra t&igrave;nh huống s&oacute;ng gi&oacute; trong v&ugrave;ng cấm đội chủ nh&agrave; bằng một pha đ&aacute; phạt g&oacute;c. B&oacute;ng được số 28 treo đến đ&uacute;ng vị tr&iacute; của Katsuya Iwatake. Tuy nhi&ecirc;n, số 22 của Yokohama lại kh&ocirc;ng dứt điểm m&agrave; chọn phương &aacute;n l&agrave;m tường, để rồi bị h&agrave;ng thủ chủ nh&agrave; ngăn chặn. Trong lần đầu đ&aacute; ch&iacute;nh tại Nhật Bản, C&ocirc;ng Phượng để lại nhiều dấu ấn ở mặt trận tấn c&ocirc;ng. Tuy nhi&ecirc;n, anh vẫn để lộ điểm yếu về thể lực v&agrave; khả năng tranh chấp, do đ&atilde; trải qua qu&atilde;ng thời gian d&agrave;i kh&ocirc;ng được thi đấu.&nbsp;Hiệp một c&oacute; 2 b&agrave;n thắng được ghi. Yudai Tanaka mở tỷ số cho Okayama sau một pha đệm cận th&agrave;nh ở ph&uacute;t 15. Đến ph&uacute;t 42, Yokohama gỡ h&ograve;a 1-1, sau si&ecirc;u phẩm s&uacute;t xa của Hinata Ogura. Nhờ khả năng đột biến từ những pha b&oacute;ng cố định, C&ocirc;ng Phượng tiếp tục được giữ tr&ecirc;n s&acirc;n ở hiệp hai. Ph&uacute;t 53, cầu thủ gốc Nghệ An su&yacute;t c&oacute; pha kiến tạo đầu ti&ecirc;n. T&igrave;nh huống đ&aacute; phạt g&oacute;c của số 28 tạo cơ hội cho Solomon Sakuragawa băng v&agrave;o dứt điểm cận th&agrave;nh. Tuy nhi&ecirc;n, anh lại đ&aacute; hụt b&oacute;ng đ&aacute;ng tiếc. Đến ph&uacute;t 68, C&ocirc;ng Phượng được thay ra nghỉ, qua đ&oacute; kh&eacute;p lại ng&agrave;y thi đấu kh&aacute; tốt. Những c&aacute;i t&ecirc;n được HLV đưa v&agrave;o thay C&ocirc;ng Phượng đều kh&ocirc;ng thể gi&uacute;p Yokohama tạo kh&aacute;c biệt.&nbsp;Hai đội h&ograve;a 2-2 trong 90 ph&uacute;t, để rồi phải thi đấu th&ecirc;m hiệp phụ. Okayama vượt l&ecirc;n dẫn trước nhưng Yokohama kịp gỡ h&ograve;a 3-3 nhờ c&ocirc;ng của Caprini, cầu thủ v&agrave;o thay C&ocirc;ng Phượng. Trong loạt lu&acirc;n lưu, Yokohama gi&agrave;nh chiến thắng với tỷ số 5-3, qua đ&oacute; gi&agrave;nh quyền v&agrave;o v&ograve;ng 32 đội. C&ocirc;ng Phượng sẽ tiếp tục c&oacute; cơ hội ra s&acirc;n ở những trận tiếp theo</p>', 3, '2024-04-24'),
(11, 'Counter-Strike 2 tiếp tục khiến người chơi khó chịu, yêu cầu thêm hàng loạt tính năng, chỉnh sửa', 'Game', './thumbnail/cs2.jpg', '<p>Kể từ khi nh&aacute; h&agrave;ng sự xuất hiện của Counter-Strike 2, Valve đ&atilde; khiến cộng đồng m&ograve;n mỏi ng&oacute;ng chờ v&agrave; cũng gi&uacute;p cho dự &aacute;n thu về v&ocirc; số sự kỳ vọng. Thế n&ecirc;n, cũng dễ hiểu khi ở thời điểm Counter-Strike 2 được c&ocirc;ng bố c&aacute;ch đ&acirc;y chưa l&acirc;u, mọi &aacute;nh mắt đ&atilde; đổ dồn v&agrave;o bom tấn n&agrave;y v&agrave; mong chờ những đổi mới chất lượng, th&uacute; vị. Tuy vậy, c&oacute; vẻ như cũng giống với rất nhiều bom tấn kh&aacute;c, Counter-Strike 2 đang thiếu đi v&ocirc; số t&iacute;nh năng v&agrave; khiến đa số c&aacute;c game thủ phải cảm thấy kh&oacute; chịu. Đầu ti&ecirc;n chắc chắn phải kể tới việc trong Counter-Strike 2, người chơi đ&atilde; kh&ocirc;ng thể chỉnh sửa, thay đổi tay cầm s&uacute;ng như trước m&agrave; lu&ocirc;n cố định ở tay phải. Điều n&agrave;y tạo ra sự kh&ocirc;ng thoải m&aacute;i nhất định đối với một bộ phận người chơi vốn đ&atilde; qu&aacute; quen thuộc với việc sử dụng tay tr&aacute;i khi chiến đấu của m&igrave;nh. Ngo&agrave;i ra, đ&oacute; c&ograve;n l&agrave; một số vấn đề li&ecirc;n quan tới hiệu suất cũng khiến c&aacute;c game thủ cảm thấy phiền l&ograve;ng. V&agrave; mới đ&acirc;y th&ocirc;i, c&aacute;c game thủ lại tiếp tục bất b&igrave;nh trước một điều nữa, đ&oacute; l&agrave; thật kh&oacute; để c&oacute; thể đầu h&agrave;ng trong một trận đấu. Cụ thể, kh&ocirc;ng &iacute;t &yacute; kiến cho rằng mặc d&ugrave; họ c&oacute; đa số phiếu bầu, nhưng vẫn kh&ocirc;ng thể lựa chọn đầu h&agrave;ng, tho&aacute;t khỏi trận đấu để tiết kiệm thời gian v&igrave; một vấn đề rất kh&oacute; chịu: kh&ocirc;ng đủ th&agrave;nh vi&ecirc;n. Theo đ&oacute;, ngay cả khi một người chơi đ&atilde; ngắt kết nối, hoặc tệ hơn l&agrave; rời bỏ tr&ograve; chơi, c&aacute;c th&agrave;nh vi&ecirc;n c&ograve;n lại vẫn kh&ocirc;ng được ph&eacute;p đầu h&agrave;ng m&agrave; buộc phải tiếp tục game đấu trong điều kiện bất lợi, thiếu c&ocirc;ng bằng v&agrave; g&acirc;y l&atilde;ng ph&iacute; thời gian cực độ. C&oacute; vẻ như Valve coi người chơi đ&atilde; rời khỏi l&agrave; một phiếu trắng v&agrave; việc bỏ phiếu đầu h&agrave;ng sẽ trở n&ecirc;n v&ocirc; hiệu lực. Nhiều người c&ograve;n cảm thấy h&agrave;i hước hơn khi biết rằng c&aacute;ch đ&acirc;y chưa l&acirc;u, Counter-Strike 2 cũng từng ph&aacute;t sinh lỗi chỉ cần một người chơi đồng &yacute; đầu h&agrave;ng, trận đấu sẽ tự động kết th&uacute;c v&agrave; những người kh&aacute;c bị xử thua. Hiện tại, Valve vẫn chưa đưa ra bất kỳ th&ocirc;ng b&aacute;o n&agrave;o li&ecirc;n quan tới vấn đề n&agrave;y cũng như chưa đề cập tới việc sẽ v&aacute;, sửa c&aacute;c lỗi ph&aacute;t sinh n&agrave;y ra sao. D&ugrave; vậy, hy vọng trong tương lai gần, sẽ c&oacute; một phi&ecirc;n bản cập nhật mới sớm được tung ra để mang tới những trải nghiệm ho&agrave;n hảo nhất cho c&aacute;c game thủ Counter-Strike 2.&nbsp;</p>\r\n<div id=\"admzone474524\"></div>', 6, '2024-04-24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `new_tag`
--

CREATE TABLE `new_tag` (
  `tag_id` int(11) NOT NULL,
  `tag_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `new_tag`
--

INSERT INTO `new_tag` (`tag_id`, `tag_name`) VALUES
(1, 'Công nghệ'),
(3, 'Thể Thao'),
(4, 'Game');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` int(5) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `image` char(255) NOT NULL,
  `image_desc_1` varchar(255) NOT NULL,
  `image_desc_2` varchar(255) NOT NULL,
  `image_desc_3` varchar(255) NOT NULL,
  `price` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `brand_id` int(5) NOT NULL,
  `discount` varchar(100) NOT NULL,
  `rating_tb` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `image`, `image_desc_1`, `image_desc_2`, `image_desc_3`, `price`, `description`, `brand_id`, `discount`, `rating_tb`) VALUES
(4, 'alo123', 'không có', 'không có', 'không có', 'không có', '345232', '3123131', 1, '3123131', '2');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Chỉ mục cho bảng `new`
--
ALTER TABLE `new`
  ADD PRIMARY KEY (`new_id`);

--
-- Chỉ mục cho bảng `new_tag`
--
ALTER TABLE `new_tag`
  ADD PRIMARY KEY (`tag_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `new`
--
ALTER TABLE `new`
  MODIFY `new_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `new_tag`
--
ALTER TABLE `new_tag`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
