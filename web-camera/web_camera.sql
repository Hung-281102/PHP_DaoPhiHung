-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 23, 2023 lúc 12:59 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_camera`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`) VALUES
(2, 'admin', 'c4ca4238a0b923820dcc509a6f75849b');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart_detail`
--

CREATE TABLE `tbl_cart_detail` (
  `id_cart_detail` int(11) NOT NULL,
  `code_cart` varchar(11) NOT NULL,
  `id_sanPham` int(11) NOT NULL,
  `soLuongMua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart_detail`
--

INSERT INTO `tbl_cart_detail` (`id_cart_detail`, `code_cart`, `id_sanPham`, `soLuongMua`) VALUES
(1, '6243', 3, 2),
(2, '9078', 8, 1),
(11, '7544', 11, 2),
(12, '8326', 12, 1),
(13, '66', 12, 1),
(14, '6450', 12, 1),
(15, '8489', 11, 1),
(16, '5223', 12, 1),
(17, '8795', 12, 1),
(18, '8795', 11, 1),
(19, '4783', 19, 2),
(20, '2096', 3, 1),
(21, '5800', 14, 1),
(22, '9011', 18, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_dangky`
--

CREATE TABLE `tbl_dangky` (
  `id_khachHang` int(11) NOT NULL,
  `hoVaTen` varchar(250) NOT NULL,
  `taiKhoan` varchar(100) NOT NULL,
  `matKhau` varchar(100) NOT NULL,
  `soDienThoai` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `diaChi` text NOT NULL,
  `chucVu` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`id_khachHang`, `hoVaTen`, `taiKhoan`, `matKhau`, `soDienThoai`, `email`, `diaChi`, `chucVu`) VALUES
(8, 'Bùi Huy Nam', 'HuyNam', '202cb962ac59075b964b07152d234b70', 987643298, 'buihuynam30102003@gmail.com', 'Ha noi', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhMuc` int(11) NOT NULL,
  `tenDanhMuc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thuTu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhMuc`, `tenDanhMuc`, `thuTu`) VALUES
(2, 'Máy ảnh', 1),
(4, 'Phụ kiện ', 3),
(5, 'Ống kính', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_giohang`
--

CREATE TABLE `tbl_giohang` (
  `id_cart` int(11) NOT NULL,
  `id_khachHang` int(11) NOT NULL,
  `code_cart` varchar(11) NOT NULL,
  `cart_status` int(11) NOT NULL,
  `cart_payment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_giohang`
--

INSERT INTO `tbl_giohang` (`id_cart`, `id_khachHang`, `code_cart`, `cart_status`, `cart_payment`) VALUES
(1, 2, '6243', 1, 'Tiền Mặt'),
(2, 2, '9078', 0, 'Tiền Mặt'),
(10, 5, '7544', 1, 'Tiền Mặt'),
(11, 6, '8326', 1, 'Tiền Mặt'),
(12, 1, '66', 1, 'Tiền Mặt'),
(13, 1, '6450', 1, 'Chuyển Khoảng'),
(14, 1, '8489', 1, 'Tiền Mặt'),
(15, 1, '5223', 1, 'Tiền Mặt'),
(16, 1, '8795', 1, 'Chuyển Khoảng'),
(17, 7, '4783', 1, 'Tiền Mặt'),
(18, 8, '2096', 1, 'Tiền Mặt'),
(19, 8, '5800', 1, 'Chuyển Khoảng'),
(20, 8, '9011', 1, 'Tiền Mặt');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanPham` int(11) NOT NULL,
  `tenSanPham` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `maSanPham` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `giaSanPham` int(11) NOT NULL,
  `soLuong` int(11) NOT NULL,
  `hinhAnh` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tomTat` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `noiDung` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_danhMuc` int(11) NOT NULL,
  `trangThai` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `id_cart` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanPham`, `tenSanPham`, `maSanPham`, `giaSanPham`, `soLuong`, `hinhAnh`, `tomTat`, `noiDung`, `id_danhMuc`, `trangThai`, `id_admin`, `id_cart`) VALUES
(2, 'Máy ảnh Sony ZV-1 ', 'SP01', 13990000, 10, 'SONY_ZV1.jpg', 'Thông tin nổi bật\r\nCảm biến: BSI CMOS 1 inch\r\nDải ISO: 100 đến 12800 (Mở rộng: 64 đến 25600)\r\nĐộ phân giải: 20MP\r\nKết nối không dây: WiFi, bluetooth\r\n', 'Quay Vlog giờ đây đã trở nên cực kỳ dễ dàng với Sony ZV-1 chiếc máy ảnh compact nhỏ gọn được sinh ra để dành riêng cho các Vlogger sáng tạo nội dung video hay những người hay livestream để bán hàng, sản xuất video chơi game... Tốc độ lấy nét nhanh, Eye AF liên tục và một thiết kế nhỏ gọn để bạn có thể mang tới bất cứ nơi đâu trong chuyến đi của mình.', 2, 1, 0, 0),
(3, 'Máy ảnh Fujifilm X-T30 Mark II', 'SP02', 20490000, 32, 'X-T30.jpg', 'Thông tin nổi bật\r\nCảm biến 26.1MP APS-C X-Trans BSI CMOS 4\r\nHỗ trợ định dạng video F-Log\r\nISO mở rộng 80-51200\r\nKính ngắm điện tử OLED\r\n', 'Fujifilm X-T30 Mark II được thiết kế với kiểu dáng nhỏ gọn, trang bị cảm biến APS-C thế hệ mới nhất để phù hợp với các nhiếp ảnh gia. Bên cạnh đó, máy ảnh Fujifilm X-T30 Mark II cũng trang bị các tính năng tiên tiến để hỗ trợ tốt nhất cho quá trình quay chụp, giúp tăng trải nghiệm của người dùng.', 2, 1, 0, 0),
(4, 'Máy ảnh Nikon Z fc ', 'SP03', 25400000, 11, 'Nikon.jpg', 'Thông tin nổi bật\r\nBộ xử lý hình ảnh EXPEED 6\r\nCảm biến CMOS định dạng DX 20.9MP\r\nISO 100-51200, chụp tối đa 11 khung hình / giây\r\nMàn hình LCD\r\n', 'Máy ảnh Nikon Z fc có thiết kế pha trộn giữa vẻ đẹp cổ điển và hiện đại với chất lượng hình ảnh ấn tượng. Với 6 màu sắc khác nhau, máy ảnh được tối ưu hóa giúp cho việc quay chụp trở nên dễ dàng, phù hợp với những người sáng tạo nội dung.', 2, 1, 0, 0),
(5, 'Máy ảnh Canon EOS 850D', 'SP04', 19490000, 34, 'EOS.jpg', 'Thông tin nổi bật\r\n5 trục Digital chống rung, ổn định\r\nCảm biến CMOS APS-C 24.1MP/Bộ xử lý Digic 8\r\nKết nối Wifi và Bluetooth\r\nQuay phim 4K UHD 25fps\r\n', 'Canon EOS 850D là mẫu máy ảnh hoàn hảo cho những nhiếp ảnh gia chuyên nghiệp. Theo đó, máy ảnh DSLR này kết hợp cảm biến CMOS APS-C 24,1MP với chế độ quay 4K chuyên nghiệp. Trên kính ngắm có tất cả 45 điểm lấy nét, màn hình live view sử dụng Dual Pixel CMOS AF. Ngoài ra, máy ảnh còn có khả năng kết nối Wifi cùng giao diện thân thiện với người dùng.', 2, 0, 0, 0),
(6, 'Máy ảnh Canon M50 Mark II', 'SP05', 14990000, 98, 'M50.jpg', 'Thông tin nổi bật\r\nBộ xử lý hình ảnh DIGIC 8\r\nCảm biến CMOS APS-C 24.1MP\r\nLấy nét Dual Pixel CMOS AF với Eye Detect AF\r\nQuay video UHD 4K and HD 720p120\r\n', 'Canon EOS M50 Mark II là một chiếc máy ảnh đa phương tiện, linh hoạt với bộ tính năng video và ảnh toàn diện. Bên cạnh khả năng lấy nét, ghi nhớ và chia sẻ hình ảnh được cải thiện. Chiếc M50 Mark II vẫn giữ nguyên cảm biến CMOS APS – C 24.1 MP và bộ xử lý hình ảnh DIGIC 8 cho phép tốc độ chụp ảnh nhanh với 10 khung hình/giây', 2, 1, 0, 0),
(7, 'Máy ảnh Sony Alpha A6400', 'SP06', 17490000, 44, 'A6400.jpg', 'Thông tin nổi bật\r\nCảm biến: APS-C\r\nDải ISO: 100 - 32000 (mở rộng 100 - 104200)\r\nĐộ phân giải: 24.2MP\r\nKết nối không dây: WiFi, bluetooth\r\n', 'Sony A6400 được coi là chiếc máy ảnh có tốc độ lấy nét nhanh nhất thế giới tại thời điểm ra mắt khi sở hữu tốc độ lấy nét chỉ 0.02 giây. Đây là thế hệ tiếp theo của chiếc Sony A6300, máy được cải tiến về màn hình có thể lật 180 độ để chụp ảnh tự sướng và quay vlog dễ dàng hơn.\r\n\r\n', 2, 1, 0, 0),
(8, 'Ống kính Viltrox AF 24mm f/1.8 For Sony E', 'OK01', 7690000, 122, 'OK-AF-24.jpg', 'Thông tin nổi bật:\r\n•	2 thấu kính phi cầu, 3 thấu kính ED\r\n•	Hệ thống lấy nét tự động STM\r\n•	Khoảng cách lấy nét tối thiểu: 30cm\r\n•	Kích thước bộ lọc phía trước 55mm\r\n', 'Ống kính Viltrox AF 24mm f1.8 cung cấp trường nhìn rộng và khẩu độ sáng f/1.8 thích hợp để chụp ảnh chân dung, phong cảnh, nội thất, kiến trúc và thiên văn. Lens được thiết kế với công nghệ quang học mới giúp cải thiện chất lượng hình ảnh tối ưu. Cùng với cấu trúc thân nhỏ gọn, chắc chắn, ống kính không chỉ đảm bảo độ bền cao mà còn hỗ trợ người dùng lắp ráp và cài đặt một cách nhanh chóng, chính xác nhất.', 5, 1, 0, 0),
(9, 'Ngàm chuyển Canon EF-EOS R', 'PK01', 2990000, 12, 'EF R.jpg', 'Dùng cho ống kính Canon ngàm EF/EF-S gắn lên máy ảnh EOS R\r\nGiữ nguyên tính năng lấy nét tự động và ổn định hình ảnh\r\n', '', 4, 1, 0, 0),
(10, 'Máy ảnh Sony ZV-1 II', 'SP07', 18990000, 34, 'ZV-1.jpg', 'Thông tin nổi bật\r\nCảm biến 20.1MP 1\r\nChế độ ghi Cinematic Vlog, quay S&Q\r\nDành cho Vlogger, Content Creator\r\nKiểm soát lấy nét & phơi sáng bằng cảm ứng trực quan\r\n', 'Máy ảnh Sony ZV-1 II là chiếc máy ảnh vlog nhỏ gọn với phần ống kính zoom góc rộng có độ dài tiêu cự 18-50mm, cảm biến Exmor RS 1.0, bộ lọc ND, khả năng lấy nét tự động chất lượng, quay video 4K ở tốc độ 30 khung hình/giây hoặc 1080p/120fps', 2, 0, 0, 0),
(11, 'Máy ảnh Canon EOS RP', 'SP08', 27480000, 5, 'RP.jpg', 'Thông tin nổi bật\r\nCảm biến: Full-Frame\r\nDải ISO: 100 - 40000 (mở rộng 50 - 102400)\r\nĐộ phân giải: 26.2MP\r\nKết nối không dây: WiFi\r\n', 'Với cảm biến full-frame bên trong một thân hình nhỏ gọn, cùng với đó là hàng loạt các tính năng mới vô cùng hiện đại, Canon EOS RP xứng đáng là một trong những chiếc máy ảnh tốt nhất trong phân khúc giá dưới 1000USD.', 2, 1, 0, 0),
(12, 'Ống kính Sigma 30mm DC DN Sony E-mount', 'OK02', 6190000, 45, 'OKDN.jpg', 'Thông tin nổi bật: \r\n•	Chống rung: Không\r\n•	Khẩu độ: F/1.4-16\r\n•	Khoảng cách lấy nét gần nhất: 30cm\r\n•	Kích thước Filter: 52mm\r\n', 'Sigma 30mm F1.4 DC DN là ống kính mirroless có khẩu độ lớn mang đến cơ hội trải nghiệm thú vị cho người dùng khi chụp những bức ảnh rộng. Thân máy có thiết kế nhỏ gọn với kích thước 64.8 x 73.3 mm và trọng lượng 265g, các nút ấn trên ống kính được đặt ở vị trí thuận tiện, dễ dàng giúp người dùng thao tác một cách thoải mái. Bên cạnh đó, ống kính cũng được trang bị lens hood giúp hạn chế ánh sáng chiếu vào làm cho hình ảnh bị mờ.', 5, 1, 0, 0),
(13, 'Ống kính Viltrox AF 24mm f/1.8 For NiKon Z', 'OK3', 7690000, 30, 'OK_AF.jpg', 'Thông tin nổi bật\r\n•	2 thấu kính phi cầu, 3 thấu kính ED\r\n•	Hệ thống lấy nét tự động STM\r\n•	Khoảng cách lấy nét tối thiểu: 30cm\r\n•	Kích thước bộ lọc phía trước 55mm\r\n', 'Ống kính Viltrox AF 24mm f1.8 cung cấp trường nhìn rộng và khẩu độ sáng f/1.8 thích hợp để chụp ảnh chân dung, phong cảnh, nội thất, kiến trúc và thiên văn. Lens được thiết kế với công nghệ quang học mới giúp cải thiện chất lượng hình ảnh tối ưu. Cùng với cấu trúc thân nhỏ gọn, chắc chắn, ống kính không chỉ đảm bảo độ bền cao mà còn hỗ trợ người dùng lắp ráp và cài đặt một cách nhanh chóng, chính xác nhất. ', 5, 1, 0, 0),
(14, 'Ống kính Viltrox AF 50mm f/1.8 For NiKon Z', 'OK4', 6990000, 15, 'OK_AF2.jpg', 'Thông tin nổi bật\r\n•	Động cơ lấy nét tự động STM\r\n•	Khoảng cách lấy nét tối thiểu: 55cm\r\n•	Lá khẩu: 9\r\n•	Lớp phủ HD Nano chống flare và ghost\r\n', 'Viltrox AF 50mm f/1.8 là ống kính một tiêu cự lấy nét tự động có thiết kế nhỏ gọn, linh hoạt. Sở hữu độ dài tiêu cự trung bình, ống kính phù hợp để quay chụp nhiều đối tượng, từ chân dung đến phóng sự. Cùng với khẩu độ f/1.8, nó có thể làm việc hiệu quả ngay cả trong điều kiện ánh sáng yếu. Kết hợp với thành phần quang học chất lượng cao, ống kính có thể ghi lại hình ảnh chân thực, sắc nét với độ tương phản cao trong nhiều tình huống khác nhau.', 5, 1, 0, 0),
(15, 'Ống kính Fujifilm XF 23mm f/2 R WR', 'OK5', 10490000, 11, 'OK-XF.jpg', 'Thông tin nổi bật\r\n•	Chống rung: Không\r\n•	Khẩu độ: F/2-16\r\n•	Khoảng cách lấy nét gần nhất: 22cm\r\n•	Kích thước Filter: 43mm\r\n', 'Fujifilm XF 23mm f/2 R WR là chiếc ống kính mirrorless thỏa mãn cả hai tiêu chí vừa cho chất lượng quay chụp tối ưu vừa mang lại sự tiện lợi khi người dùng liên tục phải di chuyển. Với tính di động này, Fujifilm XF 23mm f/2 R WR chính là người bạn đồng hành không thể thiếu trong mỗi chuyến đi.', 5, 1, 0, 0),
(16, 'Ống kính Sigma 50mm f/1.4 DG HSM Art for Sony E', 'OK6', 17900000, 20, 'OK-HSM.jpg', 'Thông tin nổi bật: \r\n•	Chống rung: Không\r\n•	Khẩu độ: F/2.8-22\r\n•	Khoảng cách lấy nét gần nhất: 28cm\r\n•	Kích thước Filter: 77mm\r\n', 'Sigma 50mm f/1.4 DG HSM Art là ống kính thuộc dòng Art chất lượng cao của Sigma. Sử dụng những công nghệ hàng đầu, Sigma hứa hẹn mang đến chất lượng hình ảnh rõ nét, màu sắc sống động với hiệu suất quang học đáng chú ý.', 5, 1, 0, 0),
(17, 'Ống kính Sigma 100-400mm f/5-6.3 ', 'OK7', 18990000, 5, 'OK-DG.jpg', 'Thông tin nổi bật:\r\n•	01 thấu kinh FLD và 04 thấu kính SLD\r\n•	Hyper Sonic Motor\r\n•	Khẩu độ f/5 - f/29\r\n•	Thiết kế cho Mirrorless E-mount Full-frame\r\n', 'Sigma vừa cho ra mắt ống kính Sigma 100-400mm f/5-6.3 DG DN OS HSM © dành cho dòng máy Mirrorless FullFrame. Bằng việc sử dụng các thấu kính cao cấp có chất lượng quang học cao, đi kèm hệ thống chống rung cùng motor lấy nét Hyper Sonic Motor (HSM) sẽ mang đến cho bạn sự kiểm soát nhanh chóng.', 5, 1, 0, 0),
(18, 'Ống kính Canon RF 50mm f/1.8 STM', 'OK8', 6090000, 8, 'OK-STM.jpg', 'Thông tin nổi bật:\r\n•	Lớp phủ Super Spectra Coating\r\n•	Một thấu kính phi cầu PMo\r\n•	Ống kính full-frame ngàm RF\r\n•	Phạm vi khẩu độ: f/1.8 đến f/22\r\n', 'Mới đây, Canon đã bổ sung thêm cho dòng ống kính RF mới của mình một chiếc Canon RF 50mm f/1.8 STM. Với trọng lượng chỉ 160g, dài 40,5mm đã giúp chiếc ống kính có tiêu cự tiêu chuẩn này dễ dàng mang theo đến mọi nơi. 50mm là tiêu cự phổ thông để có thể chụp mọi thể loại như đường phố, chân dung, du lịch và nhiều hơn nữa.', 5, 1, 0, 0),
(19, 'Dây đeo tay Peak Design Cuff - CF-AS-3  ', 'PK2', 850000, 9, 'CF-AS.jpg', 'Thông tin nổi bật:\r\n•	Có thể điều chỉnh theo kích thước cổ tay\r\n•	Đầu nối máy ảnh đa năng, bền\r\n•	Giữ máy ảnh hoặc ống nhòm chắc chắn\r\n•	Vải nylon thoải mái\r\n', 'Dây đeo tay Peak Design Cuff - CF-AS-3 là phụ kiện hỗ trợ việc quay, chụp với chiếc máy ảnh trở nên thoải mái và chắc chắn hơn. Bằng cách đeo dây đeo vào cổ tay, người dùng có thể yên tâm sáng tạo ra những khung hình ấn tượng mà không lo rơi, tuột máy ảnh khỏi tay.', 4, 1, 0, 0),
(20, 'Máy ảnh Canon EOS 5D Mark IV (Body Only)', 'SP09', 41990000, 9, 'MA-5D.jpg', 'Thông tin nổi bật\r\nCảm biến: Full-Frame\r\nDải ISO: 100 - 32000 (mở rộng 50 - 102400)\r\nĐộ phân giải: 30.4MP\r\nKết nối không dây: WiFi\r\n', 'Với mức giá 2500USD, Canon EOS 5D Mark IV là dòng máy ảnh cao cấp của Canon hướng tới đối tượng nhiếp ảnh gia chuyên nghiệp. Thiết kế cao cấp đi kèm với rất nhiều công nghệ tân tiến, đây sẽ là sự lựa chọn hoàn hảo cho những nhiếp ảnh gia hàng đầu hiện nay.', 2, 1, 0, 0),
(21, 'Máy ảnh Nikon D850 (Body Only)', 'SP10', 51990000, 11, 'D50.jpg', 'Thông tin nổi bật\r\n•	Cảm biến: Full-frame độ phân giải: 45.7MP\r\n•	Dải ISO: 64 - 25600 (mở rộng 32 - 102400)\r\n•	Kết nối không dây: WiFi, bluetooth\r\n•	Màn hình LCD cảm ứng 3.2\r\n', 'Nikon D850 được kỳ vọng là chiếc máy ảnh FullFrame đầu tiên của Nikon có khả năng tối ưu giữa độ phân giải hình ảnh cao, tốc độ xử lý và hiệu suất hoạt động. Đây cũng là chiếc máy ảnh FullFrame đầu tiên trên thế giới có khả năng quay video Timelapse độ phân giải 8K cho độ sắc nét đạt tới đỉnh cao.', 2, 1, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `id_shipping` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(250) NOT NULL,
  `note` varchar(250) NOT NULL,
  `id_dangKy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`id_shipping`, `name`, `phone`, `address`, `note`, `id_dangKy`) VALUES
(0, 'Bùi Huy Nam', '0987643298', 'Hà Nội', '', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Chỉ mục cho bảng `tbl_cart_detail`
--
ALTER TABLE `tbl_cart_detail`
  ADD PRIMARY KEY (`id_cart_detail`);

--
-- Chỉ mục cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  ADD PRIMARY KEY (`id_khachHang`);

--
-- Chỉ mục cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_danhMuc`);

--
-- Chỉ mục cho bảng `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanPham`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_cart_detail`
--
ALTER TABLE `tbl_cart_detail`
  MODIFY `id_cart_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  MODIFY `id_khachHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhMuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanPham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
