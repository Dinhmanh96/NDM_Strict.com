-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 19, 2017 lúc 02:11 SA
-- Phiên bản máy phục vụ: 10.1.21-MariaDB
-- Phiên bản PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `strict`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id` int(10) NOT NULL,
  `anh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id`, `anh`, `title`, `description`, `status`) VALUES
(1, 'banner.jpg', 'STRICT 1', 'Strict 1 is a responsive theme with & a clean and minimal look.', 'show'),
(2, 'banner1.2.jpg', 'STRICT 2', 'Strict 2 is a responsive theme with & a clean and minimal look.', 'show'),
(4, 'banner1.3.jpg', 'STRICT 3', 'Strict 3 is a responsive theme with & a clean and minimal look.', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `message`
--

CREATE TABLE `message` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `time_cmt` datetime NOT NULL,
  `subscribe` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `message`
--

INSERT INTO `message` (`id`, `name`, `email`, `message`, `time_cmt`, `subscribe`) VALUES
(81, 'Mạnh Nguyễn Đình', 'dinhmanh96@gmail.com', 'Test message', '2017-06-16 13:53:58', 'No'),
(83, 'Nguyễn Văn Tới', 'toinguyenvan@gmail.com', 'Hello Strict', '2017-06-16 13:57:40', 'No'),
(85, 'Nguyễn Văn Nam', 'namnguyenvan@gmail.com', 'Xin chao Strict', '2017-06-16 14:30:10', 'Yes'),
(86, 'Nguyễn Văn Nam', 'namnguyenvan@gmail.com', 'Xin chao Strict', '2017-06-16 14:40:16', 'Yes'),
(87, 'Nguyễn Văn Nam', 'namnguyenvan@gmail.com', 'Xin chao Strict', '2017-06-16 14:40:50', 'Yes'),
(88, 'Mạnh Nguyễn Đình', 'dinhmanh96@gmail.com', 'session.cookie_httponly Boolean\r\nĐánh dấu cookie là chỉ truy cập qua giao thức HTTP. Điều này có nghĩa là cookie sẽ không thể truy cập được bằng cách viết các ngôn ngữ, chẳng hạn như JavaScript. Cài đặt này có thể giúp giảm bớt hành vi trộm danh tính thông qua các cuộc tấn công XSS (mặc dù nó không được hỗ trợ bởi tất cả các trình duyệt).\r\nsession.cache_limiter chuỗi\r\nSession.cache_limiter xác định phương pháp kiểm soát bộ nhớ cache được sử dụng cho các trang phiên. Nó có thể là một trong các giá trị sau: nocache , private , private_no_expire hoặc public . Mặc định là nocache . Xem thêm tài liệu session_cache_limiter () để biết thông tin về những giá trị này có ý nghĩa gì.\r\nsession.cache_expire Số nguyên\r\nSession.cache_expire xác định thời gian sống động cho các trang phiên lưu trữ trong bộ nhớ trong vài phút, điều này không ảnh hưởng đến giới hạn nocache. Mặc định là 180 . Xem thêm session_cache_expire () .\r\nsession.use_trans_sid Boolean\r\nSession.use_trans_sid cho dù hỗ trợ sid minh bạch được kích hoạt hay không. Mặc định là 0 (vô hiệu hóa).', '2017-06-16 15:14:09', 'Yes');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `showcase`
--

CREATE TABLE `showcase` (
  `id` int(10) NOT NULL,
  `name_project` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `anh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link_project` text COLLATE utf8_unicode_ci NOT NULL,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `showcase`
--

INSERT INTO `showcase` (`id`, `name_project`, `description`, `anh`, `link_project`, `date_add`) VALUES
(1, 'Project 1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'pic1.jpg', 'http:/abc.xyz1', '2017-06-14 00:00:00'),
(2, 'Project 2', '222', 'pic2.jpg', 'http:/abc.xyz2', '2017-06-15 00:00:00'),
(4, 'Project 3', '333', 'pic3.jpg', 'http:abc.xyz3', '2017-06-14 00:00:00'),
(7, 'Project 4', '444', 'pic4.jpg', 'http:abc.xyz4', '2017-06-14 02:40:05'),
(8, 'Project 5', '555', 'pic5.jpg', 'http:abc.xyz5', '2017-06-14 02:40:46'),
(11, 'Project 6', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'pic6.jpg', 'http:abc.xyz6', '2017-06-16 12:52:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `simple`
--

CREATE TABLE `simple` (
  `id` int(10) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `anh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `simple`
--

INSERT INTO `simple` (`id`, `title`, `description`, `anh`, `time_add`) VALUES
(1, 'Optimized for all devices', 'STRICT has been design to be fully responsive on all devices.', 'icon1.jpg', '2017-06-21 00:00:00'),
(2, 'Clean & Minimal Design', 'This multipurpose theme is espacially created to be used for different projects.', 'icon2.jpg', '2017-06-14 00:00:00'),
(8, 'STRICT 5', 'Strict 5 is a responsive theme with & a clean and minimal look.', 'icon3.jpg', '2017-06-16 14:39:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `social`
--

CREATE TABLE `social` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `social`
--

INSERT INTO `social` (`id`, `name`, `link`, `class`) VALUES
(1, 'Facebook', 'https://www.facebook.com/manh.nguyendinh.948', 'facebook'),
(2, 'Google+', 'https://www.google.com1', 'google-plus'),
(3, 'Twitter', 'https://twitter.com', 'twitter'),
(4, 'Linkedin', 'https://linkdin.com', 'linkedin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`) VALUES
(1, 'Nguyễn Đình Mạnh', 'dinhmanh96@gmail.com', '12345');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `showcase`
--
ALTER TABLE `showcase`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `simple`
--
ALTER TABLE `simple`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `social`
--
ALTER TABLE `social`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `message`
--
ALTER TABLE `message`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT cho bảng `showcase`
--
ALTER TABLE `showcase`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT cho bảng `simple`
--
ALTER TABLE `simple`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT cho bảng `social`
--
ALTER TABLE `social`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
