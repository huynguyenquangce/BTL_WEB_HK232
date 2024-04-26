-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 26, 2024 lúc 08:00 AM
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
(17, 'khanh.trankiwi', '12345', 'dsadada@gmail.com', 'avatar.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(5) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `brand_image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`brand_id`, `brand_name`, `brand_image`) VALUES
(1, 'Apple', 'https://images.fpt.shop/unsafe/fit-in/108x40/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2020/8/26/637340490193124614_iPhone-Apple@2x.jpg'),
(2, 'Samsung', 'https://images.fpt.shop/unsafe/fit-in/108x40/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2020/8/26/637340490904217021_Samsung@2x.jpg'),
(3, 'Oppo', 'https://images.fpt.shop/unsafe/fit-in/108x40/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2020/8/26/637340491304997311_Oppo@2x.jpg'),
(4, 'Xiaomi', 'https://images.fpt.shop/unsafe/fit-in/108x40/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/6/2/637582325361253577_Xiaomi@2x.jpg'),
(10, 'Realme\r\n', 'https://images.fpt.shop/unsafe/fit-in/108x40/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2020/8/26/637340491898745716_Realme@2x.jpg'),
(11, 'Vivo', 'https://images.fpt.shop/unsafe/fit-in/108x40/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2022/8/22/637967768466618842_vivo-icon.jpg'),
(14, 'Nokia', 'https://images.fpt.shop/unsafe/fit-in/108x40/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2020/8/26/637340493755614653_Nokia@2x.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `products_id` int(5) NOT NULL,
  `products_name` varchar(255) NOT NULL,
  `image` char(255) NOT NULL,
  `image_desc_1` varchar(255) NOT NULL,
  `image_desc_2` varchar(255) NOT NULL,
  `image_desc_3` varchar(255) NOT NULL,
  `price` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `brand_id` int(5) NOT NULL,
  `discount` varchar(100) NOT NULL,
  `rating_tb` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`products_id`, `products_name`, `image`, `image_desc_1`, `image_desc_2`, `image_desc_3`, `price`, `description`, `brand_id`, `discount`, `rating_tb`) VALUES
(14, 'iPhone 15 Pro Max', 'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2023/10/30/638342502751589917_ip-15-pro-max-dd-bh-2-nam.jpg', 'https://images.fpt.shop/unsafe/fit-in/665x374/filters:quality(100):fill(white)/fptshop.com.vn/Uploads/Originals/2023/10/12/638327041739564335_iphone-15-pro-max-5.jpg', 'https://images.fpt.shop/unsafe/fit-in/665x374/filters:quality(100):fill(white)/fptshop.com.vn/Uploads/Originals/2023/10/12/638327041739877048_iphone-15-pro-max-2.jpg', 'https://images.fpt.shop/unsafe/fit-in/665x374/filters:quality(100):fill(white)/fptshop.com.vn/Uploads/Originals/2023/10/12/638327041738940000_iphone-15-pro-max-12.jpg', '29.590.000', 'Không', 1, '34.990.000', '4.7'),
(16, 'iPhone 15 Plus', 'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2023/10/30/638342507329455238_ip-15-plus-dd-bh-2-nam.jpg', 'https://images.fpt.shop/unsafe/fit-in/665x374/filters:quality(100):fill(white)/fptshop.com.vn/Uploads/Originals/2023/9/13/638302007166386978_1_iPhone_15_Plus_Lineup_Screen__WWEN.jpg', 'https://images.fpt.shop/unsafe/fit-in/665x374/filters:quality(100):fill(white)/fptshop.com.vn/Uploads/Originals/2023/9/13/638302007167793202_5_VN_iPhone_15_Plus_Blue_PDP_Image_Position-4_Design_Detail_Colors.jpg', 'https://images.fpt.shop/unsafe/fit-in/665x374/filters:quality(100):fill(white)/fptshop.com.vn/Uploads/Originals/2023/9/13/638302007254013075_iPhone_15_Plus_iPhone_15_Pink_Combo_Screen__WWEN.jpg', '22.590.000', 'Không', 1, '25.990.000', '4'),
(17, 'iPhone 14 Plus', 'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2024/2/20/638440340613418500_iphone-14-plus-dd-bh.jpg', 'https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/02/iPhone-14-Plus.jpg', 'https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/02/Camera-iPhone-14-Plus.jpg', 'https://images.fpt.shop/unsafe/fit-in/960x640/filters:quality(90):fill(white):upscale()/fptshop.com.vn/Uploads/Originals/2022/10/28/638025684533145896_iPhone%2014%20Plus%20(14).jpg', '19.890.000', 'Không', 1, '24.990.000', '0'),
(18, 'iPhone 13', 'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2023/1/11/638090353746989186_iphone-13-dd-bh.jpg', 'https://images.fpt.shop/unsafe/fit-in/960x640/filters:quality(90):fill(white):upscale()/fptshop.com.vn/Uploads/Originals/2022/4/4/637846768629201772_iphone-13-all.jpg', 'https://images.fpt.shop/unsafe/fit-in/960x640/filters:quality(90):fill(white):upscale()/fptshop.com.vn/Uploads/Originals/2022/7/28/637946196746975426_iPhone%2013%20(2).jpg', 'https://images.fpt.shop/unsafe/fit-in/960x640/filters:quality(90):fill(white):upscale()/fptshop.com.vn/Uploads/Originals/2022/7/28/637946196746819159_iPhone%2013%20(1).jpg', '13.790.000', 'Không', 1, '18.990.000', '0'),
(19, 'Samsung Galaxy Z Flip5 5G', 'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2024/3/28/638472349027667377_samsung-galaxy-zflip-5-dd-ai.jpg', 'https://images.fpt.shop/unsafe/fit-in/960x640/filters:quality(90):fill(white):upscale()/fptshop.com.vn/Uploads/Originals/2023/8/23/638283840025352313_Samsung-Z-Flip5-19.jpg', 'https://images.fpt.shop/unsafe/fit-in/960x640/filters:quality(90):fill(white):upscale()/fptshop.com.vn/Uploads/Originals/2023/8/23/638283839972007494_Samsung-Z-Flip5-5.jpg', 'https://images.fpt.shop/unsafe/fit-in/960x640/filters:quality(90):fill(white):upscale()/fptshop.com.vn/Uploads/Originals/2023/8/23/638283840049060409_Samsung-Z-Flip5-24.jpg', '16.990.000', 'Khong', 2, '25.990.000', '0'),
(20, 'Samsung Galaxy Z Fold5 5G', 'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2024/3/28/638472349027667377_samsung-galaxy-zfold-5-dd-ai.jpg', 'https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/hongtt34/Samsung-Galaxy-Z-Fold5.jpg', 'https://images.fpt.shop/unsafe/fit-in/960x640/filters:quality(90):fill(white):upscale()/fptshop.com.vn/Uploads/Originals/2023/8/23/638283859706287261_Samsung-Z-Fold5-18.jpg', 'https://images.fpt.shop/unsafe/fit-in/960x640/filters:quality(90):fill(white):upscale()/fptshop.com.vn/Uploads/Originals/2023/8/23/638283859721462553_Samsung-Z-Fold5-29.jpg', '29.990.000', 'Không', 2, '40.990.000', '0'),
(21, 'Samsung Galaxy A55 5G', 'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2024/3/11/638457515829366961_samsung-galaxy-a55-dd.jpg', 'https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/0511/Samsung-Galaxy-A55-5G-2.jpg', 'https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/0511/camera-Samsung-Galaxy-A55-5G.jpg', 'https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/0511/camera-Samsung-Galaxy-A55-5G-7.jpg', '9.690.000', 'Không', 2, '9.990.000', '0'),
(22, 'Vivo Y22s', 'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2022/9/9/637983398315589960_vivo-y22s-xanh-dd.jpg', 'https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/vivo-y22s-1.jpg', 'https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/man-hinh-vivo-y22s.png', 'https://images.fpt.shop/unsafe/fit-in/960x640/filters:quality(90):fill(white):upscale()/fptshop.com.vn/Uploads/Originals/2022/8/19/637965269604575631_vivo-y22-s-21.jpg', '4.990.000', 'Không', 11, '5.990.000', '0'),
(24, 'Samsung Galaxy S23 Ultra 5G ', 'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2024/3/27/638471599704942918_samsung-galaxy-s23-ultra-xanh-dd-AI.jpg', 'https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/02/Samsung-Galaxy-S23-Ultra-1(1).jpg', 'https://images.fpt.shop/unsafe/fit-in/960x640/filters:quality(90):fill(white):upscale()/fptshop.com.vn/Uploads/Originals/2023/2/16/638121659825996462_DSC09673.JPG', 'https://images.fpt.shop/unsafe/fit-in/960x640/filters:quality(90):fill(white):upscale()/fptshop.com.vn/Uploads/Originals/2023/2/16/638121659917202806_DSC09683.JPG', '24.990.000', 'Không', 2, '31.990.000', '0'),
(31, 'OPPO Find N3 Flip 5G', 'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2023/11/7/638349536350266653_oppo-find-n3-5g-vang-8.jpg', 'https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/hongtt34/OPPO-Find-N3-Flip.jpg', 'https://images.fpt.shop/unsafe/fit-in/960x640/filters:quality(90):fill(white):upscale()/fptshop.com.vn/Uploads/Originals/2023/10/24/638337593642086343_OPPO-FIND-N3-FLIP-15.jpg', 'https://images.fpt.shop/unsafe/fit-in/960x640/filters:quality(90):fill(white):upscale()/fptshop.com.vn/Uploads/Originals/2023/10/24/638337593633638745_OPPO-FIND-N3-FLIP-08.jpg', '22.990.000', 'k', 3, '24.900.000', '0'),
(32, 'OPPO Reno10 5G', 'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2023/7/19/638253719457391276_oppo-reno10-5g-xanh-5.jpg', 'https://images.fpt.shop/unsafe/fit-in/960x640/filters:quality(90):fill(white):upscale()/fptshop.com.vn/Uploads/Originals/2024/2/23/638442767026181500_OPPO-RENO10-7.jpg', 'https://images.fpt.shop/unsafe/fit-in/960x640/filters:quality(90):fill(white):upscale()/fptshop.com.vn/Uploads/Originals/2024/2/23/638442767066176994_OPPO-RENO10-10.jpg', 'https://images.fpt.shop/unsafe/fit-in/960x640/filters:quality(90):fill(white):upscale()/fptshop.com.vn/Uploads/Originals/2024/2/23/638442767107178820_OPPO-RENO10-19.jpg', '8.490.000', 'l', 3, '9.990.000', '5'),
(33, 'OPPO Reno8 T 4G', 'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2023/3/27/638155148198300095_oppo-reno8-t-4g-dd.jpg', 'https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/02/OPPO-Reno8-T-4G(1).jpg', 'https://images.fpt.shop/unsafe/fit-in/960x640/filters:quality(90):fill(white):upscale()/fptshop.com.vn/Uploads/Originals/2023/2/13/638118865556859059_HASP-Oppo%20Reno%208T%20(24).JPG', 'https://images.fpt.shop/unsafe/fit-in/960x640/filters:quality(90):fill(white):upscale()/fptshop.com.vn/Uploads/Originals/2023/2/13/638118865730340913_HASP-Oppo%20Reno%208T%20(35).JPG', '6.990.000', 'k', 3, ' 8.490.000', '0'),
(34, 'OPPO A78', 'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2023/7/5/638241536485031136_oppo-a78-den-dd.jpg', 'https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/02/OPPO-A78-1.jpg', 'https://images.fpt.shop/unsafe/fit-in/800x800/filters:quality(90):fill(white):upscale()/fptshop.com.vn/Uploads/Originals/2022/3/1/637817435459912672_acer-nitro-gaming-an515-58-den-2.jpg', 'https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/02/Man-hinh-OPPO-A78.jpg', '6.990.000', '', 3, '8.440.000', '0'),
(35, 'Xiaomi 14', 'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2024/3/26/638470498770132071_xiaomi-14-dd-bh.jpg', 'https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/ThienNDDD/xiaomi-14-2.jpg', 'https://images.fpt.shop/unsafe/fit-in/800x800/filters:quality(90):fill(white):upscale()/fptshop.com.vn/Uploads/Originals/2020/11/12/637407982638531818_mba-2020-gray-2.png', 'https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/ThienNDDD/xiaomi-14-3.jpg', '20.990.000', 'Không', 4, '22.990.000', '0'),
(36, 'Xiaomi Redmi Note 13 Pro+ 5G', 'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2024/1/29/638421257525766915_xiaomi-redmi-note-13-pro-plus-dd-bh.jpg', 'https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/ThienNDDD/redmi-note-13-pro-plus-2(1).jpg', 'https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/ThienNDDD/redmi-note-13-pro-plus-1(1).jpg', 'https://images.fpt.shop/unsafe/fit-in/960x640/filters:quality(90):fill(white):upscale()/fptshop.com.vn/Uploads/Originals/2024/1/17/638411060669109424_7.jpg', '10.490.000', 'Không', 4, '10.990.000', '0'),
(37, 'Xiaomi Poco M6 Pro ', 'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2024/1/25/638417729562660990_xiaomi-poco-m6-pro-dd-docquyen-bh.jpg', 'https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/ThienNDDD/poco-m6-pro-1.jpg', 'https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/ThienNDDD/poco-m6-pro-2.jpg', 'https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/ThienNDDD/poco-m6-pro-10.jpg', '5.990.000', 'Kohng', 4, '6.490.000', '0'),
(38, 'Xiaomi Redmi Note 13 Pro ', 'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2024/2/19/638439585124761983_xiaomi-redmi-note-13-pro-dd.jpg', 'https://images.fpt.shop/unsafe/fit-in/960x640/filters:quality(90):fill(white):upscale()/fptshop.com.vn/Uploads/Originals/2024/2/26/638445367234718780_Xiaomi%20Redmi%2013%20Pro-4.jpg', 'https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/ThienNDDD/redmi-note-13-pro-1.jpg', 'https://images.fpt.shop/unsafe/fit-in/960x640/filters:quality(90):fill(white):upscale()/fptshop.com.vn/Uploads/Originals/2024/2/26/638445367240863682_Xiaomi%20Redmi%2013%20Pro-8.jpg', '6.890.000', 'K', 4, '7.290.000', '0'),
(39, 'Realme C51', 'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2024/2/1/638423850797799428_realme-c51-dd-doimoi.jpg', 'https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/AnhNQ/04082023/realme-c51-1.jpg', 'https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/AnhNQ/04082023/realme-c51-9.jpg', 'https://images.fpt.shop/unsafe/fit-in/960x640/filters:quality(90):fill(white):upscale()/fptshop.com.vn/Uploads/Originals/2024/2/23/638442761954000475_4.jpg', '4.090.000', 'k', 10, '4.490.000', '0'),
(40, 'Vivo V25e', 'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2022/9/14/637987654083012579_vivo-v25e-vang-dd.jpg', 'https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/ThienNDDD/vivo-V25e-1.png', 'https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/ThienNDDD/vivo-V25e-3.png', 'https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/ThienNDDD/vivo-V25e-8.png', '5.490.000', 'k', 11, '8.490.000', '0'),
(41, 'Nokia 110 DS Pro 4G', 'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2023/8/14/638276301133266677_nokia-110-ds-pro-4g-dd.jpg', 'https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/ThienNDDD/nokia-110-ds-pro-4g.png', 'https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/ThienNDDD/nokia-110-ds-pro-4g-1.png', 'https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/ThienNDDD/nokia-110-ds-pro-4g-2.png', '', '720.000', 14, '900.000', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reviews`
--

CREATE TABLE `reviews` (
  `cmt_id` int(10) NOT NULL,
  `pr_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `rating` int(10) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `reviews`
--

INSERT INTO `reviews` (`cmt_id`, `pr_id`, `name`, `rating`, `comment`, `time`) VALUES
(127, 14, 'Admin', 5, 'Ổn', '2023-04-25 16:51:29'),
(128, 14, 'Admin', 5, 'Tốt', '2023-04-25 16:53:09'),
(129, 14, 'Chu Lợi', 4, 'Xấu', '2023-04-25 16:55:39'),
(130, 16, 'Admin', 5, 'Tốt', '2023-04-26 07:37:38'),
(133, 32, 'ngoquanghai', 5, 'test', '2024-04-16 11:50:15'),
(134, 16, 'admin', 3, 'Trung bình', '2024-04-26 10:58:23');

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
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`products_id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- Chỉ mục cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`cmt_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `products_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `reviews`
--
ALTER TABLE `reviews`
  MODIFY `cmt_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
