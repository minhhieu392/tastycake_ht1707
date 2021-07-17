-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 17, 2021 lúc 04:50 AM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webservice_btl`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `id` int(11) NOT NULL,
  `madonhang` int(11) NOT NULL,
  `masanpham` int(11) NOT NULL,
  `tensanpham` varchar(200) NOT NULL,
  `giasanpham` int(11) NOT NULL,
  `soluongsanpham` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`id`, `madonhang`, `masanpham`, `tensanpham`, `giasanpham`, `soluongsanpham`) VALUES
(1, 1, 8, 'Cupcake Hương Chanh', 75002, 2),
(2, 4, 47, 'Cup cake hạt óc chó', 135, 1),
(3, 6, 7, 'Trà Hoa Cúc ', 100000, 1),
(4, 7, 47, 'Cup cake hạt óc chó', 135000, 1),
(5, 8, 48, 'Macaron việt quất', 100000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `id` int(11) NOT NULL,
  `tenkhachhang` varchar(200) NOT NULL,
  `sdt` int(11) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`id`, `tenkhachhang`, `sdt`, `email`) VALUES
(1, 'hieu', 852, 'dmhieu392@gmail.com'),
(2, 'hieu', 852, 'dmhieu392@gmail.com'),
(3, 'hieu', 852, 'dmhieu392@gmail.com'),
(4, 'fgh', 558, 'trananh1985pt@gmail.com'),
(5, 'fgh', 558, 'trananh1985pt@gmail.com'),
(6, 'tyu', 522, 'ftyu'),
(7, 'tyu', 5225, 'tty'),
(8, 'tty', 5822, 'dmhieu392@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_sanpham`
--

CREATE TABLE `loai_sanpham` (
  `id` int(11) NOT NULL,
  `tenloaisanpham` varchar(200) NOT NULL,
  `hinhloai` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loai_sanpham`
--

INSERT INTO `loai_sanpham` (`id`, `tenloaisanpham`, `hinhloai`) VALUES
(1, 'Bánh Ngọt', 'https://raw.githubusercontent.com/minhhieu392/sourceimg/master/istockphoto-980473104-612x612.jpg'),
(2, 'Đồ Uống', 'https://raw.githubusercontent.com/minhhieu392/sourceimg/master/png-clipart-plastic-cup-illustration-bubble-tea-thai-tea-milk-cafe-thai-food-tea.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `tensanpham` varchar(200) NOT NULL,
  `giasanpham` int(15) NOT NULL,
  `hinhsanpham` varchar(200) NOT NULL,
  `motasp` varchar(2000) NOT NULL,
  `idloai` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `tensanpham`, `giasanpham`, `hinhsanpham`, `motasp`, `idloai`) VALUES
(7, 'Trà Hoa Cúc ', 100000, 'https://raw.githubusercontent.com/minhhieu392/sourceimg/master/16.jpg', 'Trà hoa Cúc có hương vị nồng nàn. Vị ngọt của mật ong, kỉ tử, táo đỏ đã tạo nên hương vị làm lòng người khó cưỡng. Trà hoa cúc có chứa vitamin A và nhiều khoáng chất thiết yếu cho cơ thể như kẽm, canxi, sắt, đồng, magie. Nhờ những lợi ích cho sức khỏe mà loại trà này đã được sử dụng từ hàng ngàn đời nay. Giúp cải thiện sức khỏe tim mạch, điều trị chứng mất ngủ, giúp da sạch, sáng mịn hơn. ', 2),
(8, 'Cupcake Hương Chanh', 150000, 'https://raw.githubusercontent.com/minhhieu392/sourceimg/master/15.jpg', 'Bánh cupcake hương chanh mang một hương vị độc đáo của chanh rất thơm mát, thưởng thức bánh vào mùa hè thì các bạn sẽ thấy cái nóng được hạ nhiệt ngay đấy. Khi ăn, bạn sẽ thấy bánh thật mềm, xốp, bánh có độ ngọt nhẹ nhàng cùng vị chua chua dịu của chanh vô cùng thú vị.', 1),
(9, 'Cupcake Dâu Tây', 150000, 'https://raw.githubusercontent.com/minhhieu392/sourceimg/master/1.jpg', 'Bánh cupcake dâu tây sữa chua rất phù hợp với các em nhỏ. Một chiếc bánh cupcake dâu tây sữa chua với vị ngọt ngọt, chua chua sẽ rất phù hợp làm món ăn nhẹ đầy dinh dưỡng.  Bánh cupcake đẹp lung linh với lớp kem trang trí nhiều màu sắc đem đến cảm giác mới lạ. Thưởng thức một chiếc cupcake sẽ làm cho bạn có cảm giác yêu đời hơn.', 1),
(10, 'Cupcake Socola Cream', 200000, 'https://raw.githubusercontent.com/minhhieu392/sourceimg/master/10.jpg', 'Bánh cupcake socola có lẽ là loại bánh quen thuộc nhất đối với chúng ta. Sẽ chẳng ai có thể quên được hương vị ngọt ngào của socola cùng vị béo mềm rất riêng của lớp kem tươi phủ lên phía trên. Dịp lễ quan trọng như Valentine, thay vì mua những món quà làm sẵn thì sao bạn không thử tự tay làm những chiếc bánh Cupcake chococate để tặng một nửa của mình.', 1),
(11, 'Bánh Maracon Dâu Tây', 130000, 'https://raw.githubusercontent.com/minhhieu392/sourceimg/master/11.jpg', 'Bánh Macaron được làm từ lòng trắng trứng, đường bột, đường cát, bột hạnh nhân, màu thực phẩm. Nó thường có kết cấu 3 phần. Phần vỏ bánh ở 2 bên và phần nhân kẹp ở giữa. Nhân bánh thường gồm mứt, ganache hoặc kem bơ. Ngày nay, bánh Macaron có khá nhiều hương vị từ truyền thống đến sáng tạo đổi mới như sô cô la, việt quất, caramel, vani, cam, trà xanh, hoa hồng,…. Hương vị dâu tây vô cùng đặc biệt.', 1),
(12, 'Bánh Kem Vị Matcha', 120000, 'https://raw.githubusercontent.com/minhhieu392/sourceimg/master/12.jpg', 'Matcha làm chúng ta nhớ đến rất nhiều thứ, trước tiên là hương tươi mát, thuần khiết, trong vắt. Việc ý thức trong cách thưởng thức trà matcha có nghĩa là buông lỏng cái khứu giác, cái vị giác gò bó để thưởng thức các mùi hương, các ấn tượng hòan tòan mới. Với bánh kem vị matcha mang đến cho người dùng những hương vị tươi mát, mới mẻ, vô cùng hấp dẫn.', 1),
(13, 'Cà Phê Kem', 50000, 'https://raw.githubusercontent.com/minhhieu392/sourceimg/master/13.jpg', 'Cà phê kem dẻo mịn, không dăm đá, vị cà phê nồng nàn quyện trong chút béo thơm của sữa và trứng gà khiến bất kỳ ai khi thưởng thức cũng không khỏi trầm trồ khen ngợi. Cà phê kem là loại thức uống thơm ngon và cũng rất dễ pha chế. Dành cho tín đồ của cafe. Được chế biến từ loại kem ngon, có độ sánh, mịn và hợp khẩu vị với người dùng, cà phê phải dùng loại nguyên chất. \r\n\r\n', 2),
(14, 'Cupcake Vị Dâu', 45000, 'https://raw.githubusercontent.com/minhhieu392/sourceimg/master/14.jpg', 'Bánh cupcake đẹp lung linh là quà tặng đầy ý nghĩa. Cupcake vẫn luôn chinh phục được những người yêu thực với lớp kem xốp, mềm. Đẹp lung linh với lớp kem trang trí nhiều màu sắc đem đến cảm giác mới lạ. Thưởng thức một chiếc cupcake sẽ làm cho bạn có cảm giác yêu đời hơn. Vị dâu tây sữa chua rất phù hợp với các em nhỏ. Một chiếc bánh cupcake dâu tây sữa chua với vị ngọt ngọt, chua chua sẽ rất phù hợp làm món ăn nhẹ đầy dinh dưỡng.', 1),
(15, 'Soda Dâu Tằm', 100000, 'https://raw.githubusercontent.com/minhhieu392/sourceimg/master/17.jpg', 'Bắt nguồn từ Mỹ vào khoảng thế kỷ 18, nước soda ngay khi ra đời đã tạo tiếng vang lớn và chễm chệ một vị trí đáng ngưỡng mộ trong văn hóa Mỹ và các quốc gia khác. Soda chứa nhiều khoáng chất, nguyên tố có lợi cho sức khỏe như kali, canxi, magie…, cùng với lượng calories trong soda không đường gần như bằng 0 nên là lựa chọn lý tưởng cho những ai muốn giảm cân. Soda dâu mát lạnh, ngọt ngào cùng màu sắc tươi mát, bắt mắt sẽ là món đồ uống giải nhiệt lý tưởng trong những ngày oi bức.', 2),
(16, 'Cupcake Socola Kem Dâu', 150000, 'https://raw.githubusercontent.com/minhhieu392/sourceimg/master/18.jpg', 'Bánh cupcake socola luôn là sự lựa chọn số 1 của những người yêu thích cupcake. Đây là một trong những loại cupcake đầu tiên. Cốt bánh cupcake kem tươi rất nhẹ, xốp và mềm không gây cảm giác ngán hòa quyện với vị socola ngọt ngào. Rất phù hợp với các em nhỏ. Một chiếc bánh cupcake dâu tây sữa chua với vị ngọt ngọt, chua chua sẽ rất phù hợp làm món ăn nhẹ đầy dinh dưỡng.  Bánh cupcake đẹp lung linh với lớp kem trang trí nhiều màu sắc đem đến cảm giác mới lạ. Thưởng thức một chiếc cupcake sẽ làm cho bạn có cảm giác yêu đời hơn.', 1),
(17, 'Cupcake Kem Hoa Quả', 160000, 'https://raw.githubusercontent.com/minhhieu392/sourceimg/master/19.jpg', 'Bánh cupcake đẹp lung linh là quà tặng đầy ý nghĩa. Cupcake vẫn luôn chinh phục được những người yêu thực với lớp kem xốp, mềm. Đẹp lung linh với lớp kem trang trí nhiều màu sắc đem đến cảm giác mới lạ. Thưởng thức một chiếc cupcake sẽ làm cho bạn có cảm giác yêu đời hơn. Vị dâu tây sữa chua rất phù hợp với các em nhỏ. Một chiếc bánh cupcake kem dâu hoa quả với vị ngọt ngọt, chua chua sẽ rất phù hợp làm món ăn nhẹ đầy dinh dưỡng.', 1),
(18, 'Kem Socola', 100000, 'https://raw.githubusercontent.com/minhhieu392/sourceimg/master/2.jpg', 'Những ly kem socola mát lạnh, thơm ngon luôn là lựa chọn của rất nhiều người, đặc biệt vào những ngày tiết trời oi nóng. Để làm được món kem socola đầy hấp dẫn này đòi hỏi bạn phải chuẩn bị khá nhiều nguyên liệu, trong đó có kem sữa tươi (hay còn gọi là whipping cream, một nguyên liệu thường có trong các công thức làm kem). ', 2),
(19, 'Cupcake Socola Dâu Tây', 120000, 'https://raw.githubusercontent.com/minhhieu392/sourceimg/master/20.jpg', 'Bánh cupcake dâu tây sữa chua rất phù hợp với các em nhỏ. Một chiếc bánh cupcake dâu tây sữa chua với vị ngọt ngọt, chua chua sẽ rất phù hợp làm món ăn nhẹ đầy dinh dưỡng.  Bánh cupcake đẹp lung linh với lớp kem trang trí nhiều màu sắc đem đến cảm giác mới lạ. Thưởng thức một chiếc cupcake sẽ làm cho bạn có cảm giác yêu đời hơn.', 1),
(20, 'Cupcake Vani', 100000, 'https://raw.githubusercontent.com/minhhieu392/sourceimg/master/21.jpg', 'Bánh cupcake đẹp lung linh là quà tặng đầy ý nghĩa. Cupcake vẫn luôn chinh phục được những người yêu thực với lớp kem xốp, mềm. Đẹp lung linh với lớp kem trang trí nhiều màu sắc đem đến cảm giác mới lạ. Thưởng thức một chiếc cupcake sẽ làm cho bạn có cảm giác yêu đời hơn. Vị vani rất phù hợp với các em nhỏ. Một chiếc bánh cupcake vani với vị ngọt ngọt sẽ rất phù hợp làm món ăn nhẹ đầy dinh dưỡng.\r\n', 1),
(21, 'Cupcake Hương Cam', 130000, 'https://raw.githubusercontent.com/minhhieu392/sourceimg/master/22.jpg', 'Bánh cupcake đẹp lung linh là quà tặng đầy ý nghĩa. Cupcake vẫn luôn chinh phục được những người yêu thực với lớp kem xốp, mềm. Đẹp lung linh với lớp kem trang trí nhiều màu sắc đem đến cảm giác mới lạ. Thưởng thức một chiếc cupcake sẽ làm cho bạn có cảm giác yêu đời hơn. Kem hương vị cam rất phù hợp với các em nhỏ. Một chiếc bánh cupcake cam với vị ngọt ngọt sẽ rất phù hợp làm món ăn nhẹ đầy dinh dưỡng.', 1),
(22, 'Cafe Macchiato', 120000, 'https://raw.githubusercontent.com/minhhieu392/sourceimg/master/23.jpg', 'Cà phê Macchiato mang trong mình những sự hấp dẫn khó cưỡng. Nó có thể làm người ta dường như mê mẩn chỉ sau một vài lần thưởng thức. Sở dĩ như vậy là vì Macchiato là một trong những thức uống “truyền thống” mà “hiện đại”, giữ nguyên vị cà phê nguyên bản nhưng cũng làm người ta phải chú ý bởi hương vị mạnh mẽ khác biệt của mình. Có phải bạn đang rất tò mò về Macchiato là gì và làm thế nào để có thể tự pha cho mình một tách Macchiato ngon đúng điệu đúng không nào? Hãy cùng tìm hiểu về Macchiato – loại cafe được ưa chuộng và đang làm “khuynh đảo” thế giới hiện nay!', 0),
(23, 'Soda Việt Quất', 50000, 'https://raw.githubusercontent.com/minhhieu392/sourceimg/master/24.jpg', 'Bắt nguồn từ Mỹ vào khoảng thế kỷ 18, nước soda ngay khi ra đời đã tạo tiếng vang lớn và chễm chệ một vị trí đáng ngưỡng mộ trong văn hóa Mỹ và các quốc gia khác. Soda chứa nhiều khoáng chất, nguyên tố có lợi cho sức khỏe như kali, canxi, magie…, cùng với lượng calories trong soda không đường gần như bằng 0 nên là lựa chọn lý tưởng cho những ai muốn giảm cân. Soda việt quất mát lạnh, ngọt ngào cùng màu sắc tươi mát, bắt mắt sẽ là món đồ uống giải nhiệt lý tưởng trong những ngày oi bức.', 2),
(24, 'Chanh Tuyết', 45000, 'https://raw.githubusercontent.com/minhhieu392/sourceimg/master/25.jpg', 'Chanh tuyết gợi cảm xúc cho người thưởng thức như lạc vào xứ sở cửa băng tuyết bởi cảm giác mát lạnh và hương thơm dịu mát, vị chua thanh. Đây chính là món đồ uống khá thích hợp cho chúng ta trong mùa hè oi bức. Mang theo vitamin C bổ sung dưỡng chất cho cơ thể, xoá tan cơn khát và cái nóng như thiêu như đốt của mùa hè. ', 2),
(25, 'Cupcake Việt Quất', 135000, 'https://raw.githubusercontent.com/minhhieu392/sourceimg/master/26.jpg', 'Bánh cupcake đẹp lung linh là quà tặng đầy ý nghĩa. Cupcake vẫn luôn chinh phục được những người yêu thực với lớp kem xốp, mềm. Đẹp lung linh với lớp kem trang trí nhiều màu sắc đem đến cảm giác mới lạ. Thưởng thức một chiếc cupcake sẽ làm cho bạn có cảm giác yêu đời hơn. Kem hương vị việt quất rất phù hợp với các em nhỏ. Một chiếc bánh cupcake việt quất với vị ngọt ngọt sẽ rất phù hợp làm món ăn nhẹ đầy dinh dưỡng.', 1),
(26, 'Sữa Chua Thạch', 75000, 'https://raw.githubusercontent.com/minhhieu392/sourceimg/master/27.jpg', 'Sữa chua dầm thạch vừa ngon vừa mát, màu sắc hấp dẫn lại rất bổ dưỡng thích hợp cho tất cả thành viên trong gia đình. Những ngày thời tiết nắng nóng, bổ sung năng lượng và giải nhiệt cơ thể bằng sữa chua dầm thạch là một lựa chọn tuyệt vời. Sữa chua khi được kết hợp với những miếng thạch dẻo giòn vừa mang đến cảm giác ngon miệng vừa vui miệng.', 2),
(27, 'Cupcake Đậu Đỏ', 90000, 'https://raw.githubusercontent.com/minhhieu392/sourceimg/master/28.jpg', 'Bánh cupcake đẹp lung linh là quà tặng đầy ý nghĩa. Cupcake vẫn luôn chinh phục được những người yêu thực với lớp kem xốp, mềm. Đẹp lung linh với lớp kem trang trí nhiều màu sắc đem đến cảm giác mới lạ. Thưởng thức một chiếc cupcake sẽ làm cho bạn có cảm giác yêu đời hơn. Kem hương vị đậu đỏ rất phù hợp với các em nhỏ. Một chiếc bánh cupcake đậu đỏ với vị ngọt ngọt sẽ rất phù hợp làm món ăn nhẹ đầy dinh dưỡng.', 1),
(28, 'Sinh tố Chanh Tuyết', 60000, 'https://raw.githubusercontent.com/minhhieu392/sourceimg/master/29.jpg', 'Chanh tuyết gợi cảm xúc cho người thưởng thức như lạc vào xứ sở cửa băng tuyết bởi cảm giác mát lạnh và hương thơm dịu mát, vị chua thanh. Đây chính là món đồ uống khá thích hợp cho chúng ta trong mùa hè oi bức. Mang theo vitamin C bổ sung dưỡng chất cho cơ thể, xoá tan cơn khát và cái nóng như thiêu như đốt của mùa hè. ', 2),
(29, 'Soda Quýt', 45000, 'https://raw.githubusercontent.com/minhhieu392/sourceimg/master/3.jpg', 'Bắt nguồn từ Mỹ vào khoảng thế kỷ 18, nước soda ngay khi ra đời đã tạo tiếng vang lớn và chễm chệ một vị trí đáng ngưỡng mộ trong văn hóa Mỹ và các quốc gia khác. Soda chứa nhiều khoáng chất, nguyên tố có lợi cho sức khỏe như kali, canxi, magie…, cùng với lượng calories trong soda không đường gần như bằng 0 nên là lựa chọn lý tưởng cho những ai muốn giảm cân. Soda quýt mát lạnh, ngọt ngào cùng màu sắc tươi mát, bắt mắt sẽ là món đồ uống giải nhiệt lý tưởng trong những ngày oi bức.', 2),
(30, 'Cupcake Oreo', 75000, 'https://raw.githubusercontent.com/minhhieu392/sourceimg/master/30.jpg', 'Bánh cupcake đẹp lung linh là quà tặng đầy ý nghĩa. Cupcake vẫn luôn chinh phục được những người yêu thực với lớp kem xốp, mềm. Đẹp lung linh với lớp kem trang trí nhiều màu sắc đem đến cảm giác mới lạ. Thưởng thức một chiếc cupcake sẽ làm cho bạn có cảm giác yêu đời hơn. Kem hương vị Oreo rất phù hợp với các em nhỏ. Một chiếc bánh cupcake oreo với vị mới mẻ, khác lạ, cũng rất phù hợp làm món ăn nhẹ đầy dinh dưỡng.', 1),
(31, 'Cupcake Vị Kẹo', 105000, 'https://raw.githubusercontent.com/minhhieu392/sourceimg/master/31.jpg', 'Bánh cupcake đẹp lung linh là quà tặng đầy ý nghĩa. Cupcake vẫn luôn chinh phục được những người yêu thực với lớp kem xốp, mềm. Đẹp lung linh với lớp kem trang trí nhiều màu sắc đem đến cảm giác mới lạ. Thưởng thức một chiếc cupcake sẽ làm cho bạn có cảm giác yêu đời hơn. Kem hương vị kẹo rất phù hợp với các em nhỏ. Một chiếc bánh cupcake kẹo với vị mới mẻ, khác lạ, cũng rất phù hợp làm món ăn nhẹ đầy dinh dưỡng.', 1),
(32, 'Cup cake socola', 75000, 'https://raw.githubusercontent.com/minhhieu392/sourceimg/master/32.jpg', 'Bánh ngọt\r\nLàm theo công thức Pháp \r\nCó thể làm món tráng miệng', 1),
(33, 'Cup cake vị chanh', 75000, 'https://raw.githubusercontent.com/minhhieu392/sourceimg/master/33.jpg', 'Bánh ngọt\r\nLàm theo công thức Pháp \r\nCó thể làm món tráng miệng', 1),
(34, 'Soda dưa hấu', 75000, 'https://raw.githubusercontent.com/minhhieu392/sourceimg/master/34.jpg', 'Trà giải nhiệt \r\nTốt cho sức khỏe', 2),
(35, 'Cuppuccino', 100000, 'https://raw.githubusercontent.com/minhhieu392/sourceimg/master/35.jpg', 'Xuất xứ từ Ý\r\nHương vị tình yêu chớm nở', 2),
(36, 'Trà dâu', 50000, 'https://raw.githubusercontent.com/minhhieu392/sourceimg/master/36.jpg', 'Thức uống mùa hè\r\nTốt cho sức khỏe', 2),
(37, 'Mochi khoai môn', 100000, 'https://raw.githubusercontent.com/minhhieu392/sourceimg/master/37.jpg', 'Bánh ngọt\r\nLàm theo công thức Nhật \r\nCó thể làm món tráng miệng', 1),
(38, 'Trà sữa', 55000, 'https://raw.githubusercontent.com/minhhieu392/sourceimg/master/38.jpg', 'Trà dành các bạn trẻ\r\nMột trong những đồ uống phổ biến\r\nDễ dàng pha chế', 2),
(39, 'Macaron', 100000, 'https://raw.githubusercontent.com/minhhieu392/sourceimg/master/39.jpg', 'Bánh ngọt\r\nPhù hợp làm món tráng miệng\r\n\r\n', 1),
(40, 'Soda dâu tằm', 30000, 'https://raw.githubusercontent.com/minhhieu392/sourceimg/master/40.jpg', 'Tốt cho sức khỏe\r\nGiải nhiệt mùa hè', 2),
(41, 'Soda mâm xôi', 45000, 'https://raw.githubusercontent.com/minhhieu392/sourceimg/master/40.jpg', 'Tốt cho sức khỏe\r\nGiải nhiệt mùa hè', 2),
(42, 'Muffin socola dâu', 90000, 'https://raw.githubusercontent.com/minhhieu392/sourceimg/master/41.jpg', 'Tốt cho sức khỏe\r\nGiải nhiệt mùa hè', 1),
(43, 'Bánh kem lạnh', 150000, 'https://raw.githubusercontent.com/minhhieu392/sourceimg/master/43.jpg', 'Bánh sinh nhật \r\nCó thể tự làm \r\nTrang trí theo ý thích', 1),
(44, 'Macchito', 140000, 'https://raw.githubusercontent.com/minhhieu392/sourceimg/master/5.jpg', 'Đồ uống thơm ngon\r\nTốt cho sức khỏe', 2),
(45, 'Sinh tố kiwi dâu', 100000, 'https://raw.githubusercontent.com/minhhieu392/sourceimg/master/6.jpg', 'Đồ bổ dưỡng, tốt cho da\r\nCách pha chế đơn giản', 2),
(46, 'Cup cake ', 30000, 'https://raw.githubusercontent.com/minhhieu392/sourceimg/master/7.jpg', 'Bánh ngọt \r\nLàm theo công thức Pháp\r\nCó thể làm món tráng miệng', 1),
(47, 'Cup cake hạt óc chó', 135000, 'https://raw.githubusercontent.com/minhhieu392/sourceimg/master/8.jpg', 'Bánh ngọt \r\nLàm theo công thức Pháp\r\nCó thể làm món tráng miệng', 1),
(48, 'Macaron việt quất', 100000, 'https://raw.githubusercontent.com/minhhieu392/sourceimg/master/9.jpg', 'Bánh ngọt \r\nCó thể làm món tráng miệng', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loai_sanpham`
--
ALTER TABLE `loai_sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `loai_sanpham`
--
ALTER TABLE `loai_sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
