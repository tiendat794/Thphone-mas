-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th3 04, 2020 lúc 10:23 AM
-- Phiên bản máy phục vụ: 5.7.25
-- Phiên bản PHP: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `thphone-mas`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `img` text NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id`, `img`, `trangthai`) VALUES
(1, 's20_696x404.png', 1),
(2, 'banner-note-10-lite-didongviet.png', 0),
(3, 'banner-valentine-ip11.11pro.11promax_696x404.png', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `mabl` int(10) NOT NULL,
  `idnd` int(11) NOT NULL,
  `idsp` int(10) NOT NULL,
  `noidung` varchar(250) NOT NULL,
  `ngayBinhluan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`mabl`, `idnd`, `idsp`, `noidung`, `ngayBinhluan`) VALUES
(13, 86, 9, 'sản phẩm tuyệt vời', '2020-02-04'),
(14, 83, 19, 'dat', '2020-03-04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `mahd` int(11) NOT NULL,
  `tensp` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` int(11) NOT NULL,
  `id_hdct` int(10) NOT NULL,
  `idsp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`mahd`, `tensp`, `soluong`, `gia`, `id_hdct`, `idsp`) VALUES
(31, 'sản phẩm a', 1, 4000000, 19, 7),
(32, 'Sạc nhanh Samsung', 1, 500000, 20, 10),
(32, 'Huawai Nova', 1, 10000000, 21, 13);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `madm` int(11) NOT NULL,
  `tendm` varchar(50) NOT NULL,
  `dequi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`madm`, `tendm`, `dequi`) VALUES
(1, 'Điện thoại', 0),
(2, 'Phụ kiện', 2),
(3, 'Tai nghe', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `mahd` int(11) NOT NULL,
  `idnd` int(11) NOT NULL,
  `hoten` varchar(50) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `dienthoai` varchar(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ngaydathang` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`mahd`, `idnd`, `hoten`, `diachi`, `dienthoai`, `email`, `ngaydathang`) VALUES
(31, 86, 'Nguyen Van B', 'Nguyễn Thị Tú', '090987645', 'minhkhoa@gmail.com', '2020-03-03'),
(32, 83, 'nguyễn thị thảo nguyên', 'xã thạnh mỹ,huyện thanh hóa , tỉnh nghệ an', '3622776374', 'nguyennttps08870@fpt.edu.vn', '2020-03-04'),
(33, 83, 'nguyễn thị thảo nguyên', 'xã thạnh mỹ,huyện thanh hóa , tỉnh nghệ an', '3622776374', 'nguyennttps08870@fpt.edu.vn', '2020-03-04'),
(34, 83, 'nguyễn thị thảo nguyên', 'xã thạnh mỹ,huyện thanh hóa , tỉnh nghệ an', '03622776374', 'nguyennttps08870@fpt.edu.vn', '2020-03-04'),
(35, 83, 'nguyễn thị thảo nguyên', 'xã thạnh mỹ,huyện thanh hóa , tỉnh nghệ an', '03622776374', 'nguyennttps08870@fpt.edu.vn', '2020-03-04'),
(36, 83, 'nguyễn thị thảo nguyên', 'xã thạnh mỹ,huyện thanh hóa , tỉnh nghệ an', '03622776374', 'nguyennttps08870@fpt.edu.vn', '2020-03-04'),
(37, 83, 'nguyễn thị thảo nguyên', 'xã thạnh mỹ,huyện thanh hóa , tỉnh nghệ an', '03622776374', 'nguyennttps08870@fpt.edu.vn', '2020-03-04'),
(38, 83, 'nguyễn thị thảo nguyên', 'xã thạnh mỹ,huyện thanh hóa , tỉnh nghệ an', '03622776374', 'nguyennttps08870@fpt.edu.vn', '2020-03-04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hotro`
--

CREATE TABLE `hotro` (
  `maht` int(11) NOT NULL,
  `tennd` varchar(255) NOT NULL,
  `email` varchar(250) NOT NULL,
  `noidung` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `idnd` int(11) NOT NULL,
  `tennd` varchar(255) COLLATE utf8_bin NOT NULL,
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(50) COLLATE utf8_bin NOT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `dienthoai` varchar(11) COLLATE utf8_bin NOT NULL,
  `diachi` varchar(255) COLLATE utf8_bin NOT NULL,
  `phanquyen` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`idnd`, `tennd`, `username`, `password`, `email`, `dienthoai`, `diachi`, `phanquyen`) VALUES
(1, 'kkkkkkk', 'user1jjjj', '123', 'trannguyenwwf@gmail.com', '', '', 1),
(83, 'nguyễn thị thảo nguyên', 'thaonguyen', '123456', 'nguyennttps08870@fpt.edu.vn', '03622776374', 'xã thạnh mỹ,huyện thanh hóa , tỉnh nghệ an', 0),
(86, 'ccccccc', 'ccccccc', '', 'cccccccccc', '', '', 3),
(87, 'Nguyen Van A', 'user1', '123', 'trannguyenwwf@gmail.com', '', '', 1),
(88, 'Nguyen Van A', 'user1', '123', 'trannguyenwwf@gmail.com', '', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `idsp` int(11) NOT NULL,
  `tensp` varchar(250) NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `chitietngan` varchar(1000) NOT NULL,
  `soluong` int(11) NOT NULL,
  `daban` int(11) NOT NULL,
  `gia` int(11) NOT NULL,
  `khuyenmai` int(11) NOT NULL,
  `chitiet` varchar(1000) NOT NULL,
  `trangthai` int(11) NOT NULL,
  `madm` int(11) NOT NULL,
  `dungluong` varchar(250) NOT NULL,
  `mausac` varchar(250) NOT NULL,
  `mota` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`idsp`, `tensp`, `hinhanh`, `chitietngan`, `soluong`, `daban`, `gia`, `khuyenmai`, `chitiet`, `trangthai`, `madm`, `dungluong`, `mausac`, `mota`) VALUES
(7, 'Bluetooth JBL', '1.jpg', '', 20, 40, 400000, 30, '', 5, 3, '', '', ''),
(8, 'Bluetooth Mizood', '2.jpg', '', 50, 40, 400000, 10, '', 5, 3, '', '', ''),
(9, 'Bao da Clear', 'bao-da-clear-view-galaxy-note10-ef-zn975.jpg', '', 79, 40, 500000, 40, '', 6, 2, '', '', ''),
(10, 'Sạc nhanh Samsung', 'b-sac-nhanh-usb-c-samsung-travel-adapter-45w-ep-ta845x.jpg', '', 40, 30, 500000, 20, '', 6, 2, '', '', ''),
(11, 'Đế sạc nhanh', 'de-sac-nhanh-khong-day-samsung-wireless-charger-stand-15w-ep-n5200.jpg', '', 79, 40, 500000, 10, '', 6, 2, '', '', ''),
(12, 'Sạc nhanh không dây', 'pin-d-phong-khong-day-samsung-wireless-charger-eb-u1200-10000-mah.jpg', '', 40, 30, 500000, 50, '', 6, 2, '', '', ''),
(13, 'Huawai Nova', 'huawei-nova-5t-blue-600x600-400x400.jpg', '', 60, 50, 10000000, 50, '', 1, 1, '', '', ''),
(14, 'Vilo LX', 'realme-5i-blue-amee-thumb-400x400.jpg', '', 70, 60, 5000000, 40, '', 1, 1, '', '', ''),
(15, 'Samsung Fold', 'samsung-galaxy-fold-2-z-flip-400x400.jpg', '', 60, 50, 3000000, 20, '', 1, 1, '', '', ''),
(16, 'Samsung Y91', 'vivo-y19-white-quanghai-400x400.jpg', '', 70, 60, 5000000, 40, '', 1, 1, '', '', ''),
(17, 'Samsung A51', 'samsung-galaxy-a51-white-400x400.jpg', '', 90, 60, 5000000, 10, '', 1, 1, '', '', ''),
(18, 'Samsung S20', 'samsung-galaxy-s20-ultra-600x600-1-400x400.jpg', '', 90, 60, 6000000, 40, '', 1, 1, '', '', ''),
(19, 'Oppo A5', 'oppo-a5-2020-white-400x400.jpg', 'là một điện thoại tốt', 90, 60, 7000000, 30, 'điện thoại giá rẻ nhất  thị trường', 7, 1, '', '', ''),
(20, 'Samsung Galaxy 01', 'samsung-galaxy-a01-600x600-4-400x400.jpg', '', 90, 60, 5000000, 20, '', 7, 1, '', '', ''),
(22, 'Iphone 11', 'iphone-11-red-400x400.jpg', '', 60, 30, 6000000, 40, '', 7, 1, '', '', ''),
(23, 'Realme', 'realme-5s-red-400x400.jpg', '', 60, 30, 6000000, 20, '', 7, 1, '', '', ''),
(24, 'Nokia', 'nokia-c1-600x600-1-400x400.jpg', '', 90, 40, 5000000, 20, '', 7, 1, '', '', ''),
(25, 'Samsung Galaxy A01', 'samsung-galaxy-a01-600x600-4-400x400.jpg', '', 60, 30, 6000000, 20, '', 7, 1, '', '', ''),
(26, 'Xiaomi redmi 8', 'xiaomi-redmi-8-64gb-red-400x400.jpg', '', 90, 40, 5000000, 20, '<h3>Camera được đầu tư mạnh mẽ</h3>\r\n\r\n<p>Cụm camera tr&ecirc;n OPPO Reno2 F đ&atilde; được n&acirc;ng cấp r&otilde; rệt với camera ch&iacute;nh độ ph&acirc;n giải 48 MP c&ugrave;ng ống k&iacute;nh thứ 2 vẫn l&agrave; 8 MP chụp ảnh g&oacute;c si&ecirc;u rộng, một ống k&iacute;nh 2 MP d&ugrave;ng để chụp ảnh ch&acirc;n dung x&oacute;a ph&ocirc;ng v&agrave; một ống k&iacute;nh 2 MP hỗ trợ chụp ảnh đen trắng.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/209800/oppo-reno2-f-tgdd6.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại OPPO Reno2 F | Giao diện chụp ảnh\" src=\"https://cdn.tgdd.vn/Products/Images/42/209800/oppo-reno2-f-tgdd6.jpg\" /></a></p>\r\n\r\n<p>Với bộ 4 camera th&igrave; OPPO Reno2 F đ&aacute;p ứng cho bạn hầu hết c&aacute;c nhu cầu trong sử dụng hằng ng&agrave;y từ chụp ảnh x&oacute;a ph&ocirc;ng hay chụp phong cảnh trong những chuyến đi chơi xa.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&lt;</p>\r\n', 0, 1, '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

CREATE TABLE `tintuc` (
  `idtt` int(150) NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `img` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `content_ttct` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `ngaydang` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `tintuc`
--

INSERT INTO `tintuc` (`idtt`, `content`, `img`, `title`, `content_ttct`, `ngaydang`) VALUES
(1, 'Huawei Nova 5T có những ưu điểm gì để thuyết phục người dùng chọn mua và nhất là phải mua vào thời điểm này? Đối với những ai thích thời trang, Nova 5T được xem là sự lựa chọn phù hợp, bạn sẽ thích thú với mặt lưng bằng kính tạo ra hiệu ứng ánh sáng ', 'huawei-nova-5t-tu-van_800x450-600x400.jpg', '5 lý do nên đặt mua ngay Huawei Nova 5T vào thời điểm này\r\n                        ', '<h1>&nbsp;</h1>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"\" src=\"https://cdn.tgdd.vn/Files/2020/02/13/1236249/xiaomi-mi-10-series_800x450.jpg\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style=\"font-size:18px;color:black;line-height:2\">Xiaomi Mi 10 và Mi 10 Pro vừa chính thức ra mắt tại Trung Quốc thông qua một sự kiện online. Xiaomi cũng cho biết hai chiếc smartphone flagship này sẽ sớm được công bố trên toàn cầu.\r\nCả Xiaomi Mi 10 và Mi 10 Pro đều có màn hình AMOLED Full HD+ cong 6.67 inch với tốc độ làm tươi 90 Hz và tần số lấy mẫu cảm ứng 180 Hz. Ở góc trên bên trái màn hình có một lỗ khoét chứa camera selfie 20 MP và cảm biến vân tay cũng được nhúng dưới màn hình.\r\n\r\nBộ đôi smartphone flagship mới này của Xiaomi dùng chip Qualcomm Snapdragon 865, hỗ trợ 5G, RAM tối đa 12 GB và bộ nhớ trong 512 GB. Đáng chú ý, Mi 10 lại sở hữu pin 4.780 mAh hỗ trợ sạc nhanh có dây 30 W, còn Mi 10 Pro chỉ có pin 4.500 mAh nhưng lại song hành cùng công nghệ sạc nhanh 50 W. Cả hai máy đều được tích hợp sạc không dây 30 W và sạc ngược không dây 10 W.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"\" src=\" src=\"https://cdn.tgdd.vn/Files/2020/02/13/1236249/xiaomi-mi-10_830x467-800-resize.jpg\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style=\"font-size:18px;color:black;line-height:2\">Bốn camera sau của Xiaomi Mi 10 bao gồm cảm biến chính ISOCELL Bright HMX 108 MP của Samsung + 2 cảm biến 2 MP với khẩu độ f/2.4 + ống kính góc rộng 13 MP f/2.4. Về phần Mi 10 Pro có camera chính 108 MP + ống kính tele ngắn 12 MP + ống kính tele dài 8 MP + ống kính góc cực rộng 20 MP.\r\n\r\nXiaomi tuyên bố Mi 10 Pro đã đạt được 124 điểm trên DxOMark, dẫn đầu bảng xếp hạng camera-phone chụp ảnh tốt nhất hiện nay. Cả hai model đều hỗ trợ quay video 8K giống như trên dòng Galaxy S20 của Samsung.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"\" src=\"src=\"https://cdn.tgdd.vn/Files/2020/02/13/1236249/xiaomi-mi-10-pro-dxomark_800x481.png\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style=\"font-size:18px;color:black;line-height:2\">Các tính năng còn lại của dòng Xiaomi Mi 10 bao gồm: Chạy Android 10 với giao diện MIUI 11, cổng USB Type-C, Wi-Fi 6, Bluetooth 5.1 và công nghệ âm thanh Hi-Res Audio.\r\n\r\nXiaomi Mi 10 sẽ được bán tại Trung Quốc vào ngày 14/2 với giá 3.999 Yuan (khoảng 13.3 triệu đồng) cho phiên bản RAM 8 GB + ROM 128 GB. Còn Mi 10 Pro được bán vào ngày 18/2 với giá 4.999 Yuan (khoảng 16.6 triệu đồng) cho phiên bản RAM 8 GB + ROM 256 GB.\r\n\r\nBạn nhận xét thế nào về thiết kế, cấu hình và giá bán của dòng Xiaomi Mi 10?</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n', '2020-03-01 12:29:50'),
(2, 'Mua hàng Thế Giới Di Động luôn có ưu đãi tốt, đặc biệt là trong dịp năm mới. Chào năm 2020, khách hàng mua điện thoại mới tại Thế Giới Di Động sẽ có cơ hội trúng 2020 chuột vàng, tổng trị giá giải thưởng lên đến 8.6 tỷ đồng.', 'publicpreview_800x458-600x400.png', '(KẾT QUẢ) Thế Giới Di Động \'chơi lớn\' tặng 2020 chuột vàng', '<h1>&nbsp;</h1>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"\" src=\"https://cdn.tgdd.vn/Files/2020/02/21/1237855/k30pro2_800x449.jpg\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style=\"font-size:18px;color:black;line-height:2\">Xiaomi đã cho ra mắt Redmi K30 tại quê nhà Trung Quốc và đang lên kế hoạch chuẩn bị giới thiệu phiên bản Pro của chiếc điện thoại này. Sau khi đạt được nhiều chứng nhận quan trọng, Redmi K30 Pro còn được giám đốc điều hành của Xiaomi hé lộ nhiều thông tin về cấu hình và thiết kế.\r\nTrong một phát biểu mới nhất, chủ tịch Xiaomi - Lu Weibing xác nhận flagship Redmi sắp ra mắt sẽ có thiết kế ấn tượng, cùng hiệu năng và cấu hình mạnh mẽ. \r\n\r\nLu Wei Chan còn tổ chức một cuộc thăm dò trên Weibo xem cơ chế đặt camera selfie nào được người dùng mong muốn nhất trên Redmi K30 Pro và phần lớn người dùng chọn camera selfie pop-up (bật lên).\r\n\r\nThú vị hơn khi hình ảnh báo chí mới rò rỉ của Redmi K30 Pro cho thấy điện thoại sẽ có camera selfie được tích hợp theo cơ chế thò thụt, tương tự như thế hệ tiền nhiệm Redmi K20 Pro.\r\n\r\n</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"\" src=\"https://cdn.tgdd.vn/Files/2020/02/21/1237855/2_800x543.jpg\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style=\"font-size:18px;color:black;line-height:2\">Mới đây, hai thiết bị của Xiaomi có số model M2001J11E và M2001J11C đã đạt được chứng nhận từ cơ quan 3C của Trung Quốc, được xác định là mẫu Redmi K30 Pro. Ngoài ra, thiết bị được đồn đại sở hữu viên pin 4.700 mAh và hỗ trợ công nghệ sạc nhanh 33 W.\r\n\r\nMột báo cáo khác cho rằng Redmi K30 Pro sẽ có màn hình OLED tràn viền. Về khả năng nhiếp ảnh, máy sẽ được trang bị mô-đun bốn cảm biến, một trong số đó là cảm biến Sony IMX686.\r\n\r\nRedmi K30 Pro cũng đã xuất hiện trên Geekbench, từ đó tiết lộ trang bị chip Snapdragon 865, hỗ trợ 5G băng tần SA / NSA và tích hợp RAM 8 GB LPDDR5.\r\n\r\nBạn mong chờ thêm điều gì trên Redmi K30 Pro?</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n\r\n\r\n', '2020-03-01 12:30:01'),
(4, 'Vào rạng sáng ngày hôm nay (12/02), Samsung đã giới thiệu bộ ba Galaxy S20, Galaxy S20+, Galaxy S20 Ultra và một thiết bị màn hình gập Galaxy Z Flip. Thú vị hơn khi toàn bộ sự kiện Unpacked 2020 tổ chức tại San Francisco đều được quay và phát trực ti', '1_800x450-600x400.jpg', 'Galaxy S20 series chính thức ra mắt tại Việt Nam', '<h1>&nbsp;</h1>\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"\"  src=\"https://znews-photo.zadn.vn/w660/Uploaded/neg_wpeczyr/2020_02_19/86461625_145176349932317_5915999309127483392_n.jpg\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style=\"font-size:18px;color:black;line-height:2\">Ngày 19/2, Samsung Việt Nam ra mắt bộ ba sản phẩm Galaxy S20 tại thị trường Việt Nam với giá từ 21,5 triệu đồng.\r\nMột tuần sau sự kiện Unpacked diễn ra tại New York, Galaxy S20 series đã có mặt tại Việt Nam.\r\n\r\nGalaxy S20 series có 3 phiên bản gồm S20 tiêu chuẩn, S20+ và S20 Ultra cao cấp nhất. Galaxy S20 có màn hình 6,2 inch, Galaxy S20+ với 6,7 inch. Trong khi, Galaxy S20 Ultra có màn hình 6,9 inch, được làm cong nhẹ.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"\" src=\"https://znews-photo.zadn.vn/w660/Uploaded/fcivbqmv/2020_02_12/galaxy_s20_zing_3120.jpg\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style=\"font-size:18px;color:black;line-height:2\">CÔNG NGHỆ\r\n\r\nGalaxy S20 series ra mắt tại Việt Nam, giá cao nhất 30 triệu đồng\r\nTrọng Hưng15:19 19/02/2020Ngày 19/2, Samsung Việt Nam ra mắt bộ ba sản phẩm Galaxy S20 tại thị trường Việt Nam với giá từ 21,5 triệu đồng.\r\nMột tuần sau sự kiện Unpacked diễn ra tại New York, Galaxy S20 series đã có mặt tại Việt Nam.\r\n\r\nGalaxy S20 series có 3 phiên bản gồm S20 tiêu chuẩn, S20+ và S20 Ultra cao cấp nhất. Galaxy S20 có màn hình 6,2 inch, Galaxy S20+ với 6,7 inch. Trong khi, Galaxy S20 Ultra có màn hình 6,9 inch, được làm cong nhẹ.\r\n\r\nGalaxy S20 series ra mat tai Viet Nam, gia cao nhat 30 trieu dong hinh anh 1 86461625_145176349932317_5915999309127483392_n.jpg\r\nGalaxy S20, S20 Plus và S 20 Ultra ra mắt tại Việt Nam.\r\nMàn hình của của 3 máy đều có độ phân giải Quad HD+, tích hợp công nghệ màn hình Dynamic AMOLED, đạt chuẩn HDR10+. Phần camera đục lỗ ở giữa màn hình giờ đây cũng được làm nhỏ gọn hơn so với chiếc Note10.\r\n\r\nNgoài ra, cả 3 máy đều được trang bị màn hình tần số quét 120 Hz, cho ra hình ảnh chuyển động mịn và mượt mà hơn. Bên cạnh đó, Galaxy S mới còn sở hữu vân tay siêu âm dưới màn hình cho tốc độ mở khóa nhanh.\r\n\r\nGalaxy S20 và S20+ đều có camera chính 12 MP, ống kính tele 64 MP và camera góc rộng 12 MP ở mặt lưng. Cụm camera sau của Galaxy S20 Ultra bao gồm ống kính chính 108 MP, camera tele 48 MP, góc rộng 12 MP. Galaxy S20+ và Galaxy 20 Ultra có thêm camera Depth Vision, đảm nhận đo độ sâu trường ảnh.\r\n\r\n</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n', '2020-03-01 12:30:06'),
(5, ' Samsung vừa chính thức ra mắt tại Trung Quốc thông qua một sự kiện online. Xiaomi cũng cho biết hai chiếc smartphone flagship này sẽ sớm được công bố trên toàn cầu. Bạn nhận xét thế nào về thiết kế           ', 's20u_800x450-600x400.jpg', 'Vượt qua nhiều đối thủ sừng sỏ khác, Samsung Galaxy S20 Ultra đã xuất sắc', '<h1>&nbsp;</h1>\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"\"  src=\"https://cdn.tgdd.vn/Files/2020/02/18/1237326/s20u_800x450.jpg\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style=\"font-size:18px;color:black;line-height:2\">Tại sự kiện Unpacked 2020, Samsung đã chính thức giới thiệu Galaxy S20 series với rất nhiều cải tiến so với thế hệ tiền nhiệm. Cụ thể hơn, DisplayMate đã đánh giá Galaxy S20 Ultra là smartphone có màn hình xuất sắc nhất thế giới tính tới thời điểm hiện tại.\r\n\r\nGalaxy S20 Ultra được trang bị màn hình 6.9 inch, tấm nền Dynamic AMOLED, độ phân giải 2K+, tốc độ làm tươi 120 Hz cùng hàng hoạt các tiêu chuẩn hình ảnh, màu sắc khác.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"\" src=\"https://cdn.tgdd.vn/Files/2020/02/18/1237326/samsung-galaxy-s20-1_800x536.jpg\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style=\"font-size:18px;color:black;line-height:2\">S20 Ultra đã được DisplayMate đánh giá điểm A+, đồng thời smartphone này còn phá thêm 12 kỷ lục về các tiêu chuẩn đánh giá màn hình. Những yếu tố được đánh giá cao nhất bao gồm độ chính xác màu, độ sáng toàn màn hình, độ sáng tối đa, độ tương phản và độ phân giải hiển thị.\r\n\r\n“Điều quan trọng và cũng rất ấn tượng phải đề cập đến là Samsung đã liên tục cải tiến chất lượng màn hình OLED trên mọi thế hệ Galaxy từ năm 2010 – là thời điểm chúng tôi bắt đầu phân tích tấm nền OLED” – DisplayMate đề cập trong bài đánh giá.\r\n\r\nBạn thấy chất lượng hiển thị của Galaxy S20 Ultra như thế nào, đã đủ xứng đáng để “xưng bá top 1” chưa?\r\n\r\n</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '2020-03-01 12:30:13'),
(6, 'Mặc dù chưa được Apple xác nhận nhưng nguồn đáng tin cậy vừa chia sẻ thông tin cho biết, iPhone SE 2 sẽ ra mắt vào ngày 31/3. Thời điểm này nghe có vẻ hợp lý bởi thông thường, Apple cũng sẽ tung ra 1 vài sản phẩm trong tháng 3, trong khi dòng iPhone cao cấp hơn sẽ ra mắt trong tháng 9.', '3_1280x720-600x400.jpg', 'Apple chính thức đăng ảnh sự kiện quan trọng vào tháng 3 lên Instagram', '<h1>&nbsp;</h1>\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"\"  src=\"https://cdn.tgdd.vn/Files/2020/02/18/1237321/3_1280x720-800-resize.jpg\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style=\"font-size:18px;color:black;line-height:2\">Nhiều báo cáo trước đây cho rằng, Apple sẽ ra mắt 1 chiếc iPhone giá rẻ vào năm 2020, trước thềm sự kiện WWDC 2020 (tháng 6/2020).\r\nMặc dù chưa được Apple xác nhận nhưng nguồn đáng tin cậy vừa chia sẻ thông tin cho biết, iPhone SE 2 sẽ ra mắt vào ngày 31/3. Thời điểm này nghe có vẻ hợp lý bởi thông thường, Apple cũng sẽ tung ra 1 vài sản phẩm trong tháng 3, trong khi dòng iPhone cao cấp hơn sẽ ra mắt trong tháng 9.\r\n\r\nĐáng chú ý là Apple trước đây đã ra mắt iPhone SE thế hệ đầu tiên vào khoảng thời gian tháng 3 năm 2016. Điều này sẽ giúp cho iPhone SE không gặp nhiều đối thủ. Nói cách khác, iPhone SE 2 sẽ tránh mặt được nhiều mẫu flagship từ các hãng khác.\r\n\r\n.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"\" src=\"https://cdn.tgdd.vn/Files/2020/02/18/1237321/2_1280x720-800-resize.jpg\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style=\"font-size:18px;color:black;line-height:2\">Hơn nữa, báo cáo cũng cho biết, iPhone SE 2 sẽ lên kệ từ ngày 3/4/2020. Thiết bị sẽ dùng chip Apple A13 tương tự như iPhone 11 và có giá bán là 399 USD (khoảng 9.2 triệu đồng). Vì đây là một sản phẩm giá rẻ, nên nhà Táo có thể cắt giảm chi phí bằng việc sử dụng màn hình LCD độ phân giải HD, thậm chí là có thể tái chế từ bộ khung vỏ của iPhone 8.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '2020-03-01 12:30:20'),
(7, 'Mẫu smartphone tầm trung Galaxy M31 sẽ ra mắt vào ngày 25/2 tới đây, việc ra mắt vẫn còn 1 tuần nữa nhưng hầu như mọi thứ về thiết bị đã lộ diện. Bây giờ là cả thông số kỹ thuật đầy đủ kèm nhiều hình ảnh báo chí sắc nét.\r\n                ', '0_1280x720-600x400.jpg', 'Galaxy M31 lộ đầy đủ cấu hình', '<h1>&nbsp;</h1>\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"\"  src=\"https://cdn.tgdd.vn/Files/2020/02/19/1237468/0_1280x720-800-resize.jpg\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style=\"font-size:18px;color:black;line-height:2\">Mẫu smartphone tầm trung Galaxy M31 sẽ ra mắt vào ngày 25/2 tới đây, việc ra mắt vẫn còn 1 tuần nữa nhưng hầu như mọi thứ về thiết bị đã lộ diện. Bây giờ là cả thông số kỹ thuật đầy đủ kèm nhiều hình ảnh báo chí sắc nét.\r\nRò rỉ mới nhất đến từ Sudhanshu Ambhore (@Sudhanshu1414), bài đăng trên Twitter của leaker này cho biết, Galaxy M31 sẽ dùng chip Exynos 9611, đây là bộ vi xử lý đã sử dụng trên Galaxy M30s. Máy có bộ nhớ RAM 6 GB, ROM 128 GB và có khe cắm thẻ nhớ microSD để mở rộng thêm 512 GB nếu cần thiết.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"\" src=\"https://cdn.tgdd.vn/Files/2020/02/19/1237468/1-_3301x1223-800-resize.jpg\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style=\"font-size:18px;color:black;line-height:2\">Bên cạnh thông số kỹ thuật, Sudhanshu Ambhore cũng chia sẻ thêm nhiều hình ảnh báo chí của 3 màu sắc khác nhau, bao gồm màu Xanh, Đen và màu Đỏ. Hình ảnh cho thấy mặt sau với cụm camera có phần lồi lên 1 chút. Bạn cũng có thể thấy máy quét vân tay mặt sau, cổng cắm tai nghe 3.5 mm ở cạnh dưới.\r\n\r\n</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '2020-03-01 12:30:23'),
(8, 'dddssss', '100.jpg', 'Giảm 50% các loại sách', '<h3>Camera được đầu tư mạnh mẽ</h3>\r\n\r\n<p>Cụm camera tr&ecirc;n OPPO Reno2 F đ&atilde; được n&acirc;ng cấp r&otilde; rệt với camera ch&iacute;nh độ ph&acirc;n giải 48 MP c&ugrave;ng ống k&iacute;nh thứ 2 vẫn l&agrave; 8 MP chụp ảnh g&oacute;c si&ecirc;u rộng, một ống k&iacute;nh 2 MP d&ugrave;ng để chụp ảnh ch&acirc;n dung x&oacute;a ph&ocirc;ng v&agrave; một ống k&iacute;nh 2 MP hỗ trợ chụp ảnh đen trắng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Với bộ 4 camera th&igrave; OPPO Reno2 F đ&aacute;p ứng cho bạn hầu hết c&aacute;c nhu cầu trong sử dụng hằng ng&agrave;y từ chụp ảnh x&oacute;a ph&ocirc;ng hay chụp phong cảnh trong những chuyến đi chơi xa.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://cdn.tgdd.vn/Products/Images/42/209800/oppo-reno2-f-tgdd-10.jpg\" />Ảnh chụp g&oacute;c thường tr&ecirc;n điện thoại Oppo Reno2 F</p>\r\n\r\n<p><img src=\"https://cdn.tgdd.vn/Products/Images/42/209800/oppo-reno2-f-tgdd-3.jpg\" />Ảnh chụp g&oacute;c rộng x&oacute;a ph&ocirc;ng tr&ecirc;n điện thoại Oppo Reno2 F</p>\r\n\r\n<p><img src=\"https://cdn.tgdd.vn/Products/Images/42/209800/oppo-reno2-f-tgdd-4.jpg\" />Ảnh chụp chế độ ban đ&ecirc;m tr&ecirc;n điện thoại Oppo Reno2 F</p>\r\n\r\n<p><img src=\"https://cdn.tgdd.vn/Products/Images/42/209800/oppo-reno2-f-tgdd-5.jpg\" />Ảnh chụp chế độ ban đ&ecirc;m tr&ecirc;n điện thoại Oppo Reno2 F</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute; với&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/chup-anh-bang-ai-ban-da-biet-het-cong-dung--cac-ung-dung-hay-ho-nay--1150253\" target=\"_blank\">c&ocirc;ng nghệ AI Camera</a>&nbsp;đi k&egrave;m gi&uacute;p Reno2 F c&oacute; thể nhận diện được c&aacute;c vật thể kh&aacute;c nhau để c&oacute; thể điều chỉnh m&agrave;u sắc, độ tương phản v&agrave; độ s&aacute;ng sao cho ph&ugrave; hợp.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/209800/oppo-reno2-f-tgdd-9.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại OPPO Reno2 F | Ảnh chụp chế độ macro\" src=\"https://cdn.tgdd.vn/Products/Images/42/209800/oppo-reno2-f-tgdd-9.jpg\" /></a></p>\r\n\r\n<p>Camera selfie tr&ecirc;n những chiếc m&aacute;y OPPO vẫn lu&ocirc;n được đ&aacute;nh gi&aacute; cao v&agrave; lần n&agrave;y cũng kh&ocirc;ng phải ngoại lệ.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/209800/oppo-reno2-f-tgdd7.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại OPPO Reno2 F | Camera trước\" src=\"https://cdn.tgdd.vn/Products/Images/42/209800/oppo-reno2-f-tgdd7.jpg\" /></a></p>\r\n\r\n<p>Với độ ph&acirc;n giải 16 MP k&egrave;m t&iacute;nh năng l&agrave;m đẹp bằng AI &quot;trứ danh&quot; th&igrave; chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd-oppo\" target=\"_blank\">smartphone OPPO</a>&nbsp;n&agrave;y tự tin l&agrave;m h&agrave;i l&ograve;ng cả những người d&ugrave;ng kh&oacute; t&iacute;nh nhất.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://cdn.tgdd.vn/Products/Images/42/209800/oppo-reno2-f-tgdd-6.jpg\" />Ảnh chụp selfie tr&ecirc;n điện thoại Oppo Reno2 F</p>\r\n\r\n<p><img src=\"https://cdn.tgdd.vn/Products/Images/42/209800/oppo-reno2-f-tgdd-7.jpg\" />Ảnh chụp selfie x&oacute;a ph&ocirc;ng tr&ecirc;n điện thoại Oppo Reno2 F</p>\r\n\r\n<p><img src=\"https://cdn.tgdd.vn/Products/Images/42/209800/oppo-reno2-f-tgdd-8.jpg\" />Ảnh chụp selfie với bộ lọc m&agrave;u tr&ecirc;n điện thoại Oppo Reno2 F</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>M&agrave;n h&igrave;nh tr&agrave;n viền kh&ocirc;ng khuyết điểm</h3>\r\n\r\n<p>OPPO Reno2 F được trang bị m&agrave;n h&igrave;nh AMOLED 6.5 inch c&oacute; độ ph&acirc;n giải 2.340 x 1.080 pixels kh&ocirc;ng bị khuyết bởi tai thỏ hay giọt nước.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/209800/oppo-reno2-f-tgdd5.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại OPPO Reno2 F | Màn hình\" src=\"https://cdn.tgdd.vn/Products/Images/42/209800/oppo-reno2-f-tgdd5.jpg\" /></a></p>\r\n\r\n<p>M&agrave;n h&igrave;nh lớn n&agrave;y sẽ mang đến một trải nghiệm tuyệt vời cho người d&ugrave;ng khi xem c&aacute;c bộ phim bom tấn Hollywood hay chơi c&aacute;c tựa game mobile.</p>\r\n', '2020-02-29 17:00:00');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`mabl`),
  ADD KEY `bl-sp` (`idsp`),
  ADD KEY `bl-kh` (`idnd`);

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`id_hdct`),
  ADD KEY `cthd-sp` (`idsp`),
  ADD KEY `hd-cthd` (`mahd`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`madm`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`mahd`),
  ADD KEY `hd-kh` (`idnd`);

--
-- Chỉ mục cho bảng `hotro`
--
ALTER TABLE `hotro`
  ADD PRIMARY KEY (`maht`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`idnd`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`idsp`),
  ADD KEY `dm-sp` (`madm`);

--
-- Chỉ mục cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`idtt`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `mabl` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `id_hdct` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `madm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `mahd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `hotro`
--
ALTER TABLE `hotro`
  MODIFY `maht` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `idnd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `idsp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `idtt` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `bl-kh` FOREIGN KEY (`idnd`) REFERENCES `khachhang` (`idnd`),
  ADD CONSTRAINT `bl-sp` FOREIGN KEY (`idsp`) REFERENCES `sanpham` (`idsp`);

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `cthd-sp` FOREIGN KEY (`idsp`) REFERENCES `sanpham` (`idsp`),
  ADD CONSTRAINT `hd-cthd` FOREIGN KEY (`mahd`) REFERENCES `hoadon` (`mahd`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `kh-hd` FOREIGN KEY (`idnd`) REFERENCES `khachhang` (`idnd`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `dm-sp` FOREIGN KEY (`madm`) REFERENCES `danhmuc` (`madm`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
