-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2023 at 06:04 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webbanhang`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`, `admin_status`) VALUES
(1, 'trungadmin', '202cb962ac59075b964b07152d234b70', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id_cart` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `cart_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`id_cart`, `id_khachhang`, `code_cart`, `cart_status`) VALUES
(30, 8, '4789', 0),
(31, 9, '4406', 1),
(32, 1, '3328', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart_chitiet`
--

CREATE TABLE `tbl_cart_chitiet` (
  `id_cart_chitiet` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_cart_chitiet`
--

INSERT INTO `tbl_cart_chitiet` (`id_cart_chitiet`, `code_cart`, `id_sanpham`, `soluongmua`) VALUES
(43, '4789', 48, 2),
(44, '4789', 52, 2),
(45, '4406', 41, 2),
(46, '3328', 59, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dangky`
--

CREATE TABLE `tbl_dangky` (
  `id_dangky` int(11) NOT NULL,
  `tenkhachhang` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `dienthoai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`id_dangky`, `tenkhachhang`, `email`, `diachi`, `matkhau`, `dienthoai`) VALUES
(1, 'Lê Hoàng Trung', 'letrung041201@gmail.com', '46/7 tân hòa 2', 'e10adc3949ba59abbe56e057f20f883e', '0908093551'),
(2, 'Lê Hoàng Trui', 'letrung041222@gmail.com', '46/7 tân hòa 3', 'e10adc3949ba59abbe56e057f20f883e', '0908093554'),
(3, 'Lê Hoàng A', 'letrung1201@gmail.com', '46/7 tân hòa 4', 'e10adc3949ba59abbe56e057f20f883e', '0908093534'),
(4, 'Lê Hoàng Q', 'letrung041222@gmail.com', '46/7 tân hòa 5', '202cb962ac59075b964b07152d234b70', '0908093553'),
(5, 'Lê Hoàng A', 'letrung04112201@gmail.com', '46/7 tân hòa 7', '202cb962ac59075b964b07152d234b70', '0908093554'),
(6, 'Lê Hoàng Traaaa', 'letrung04123@gmail.com', '46/7 tân hòa 123', 'e10adc3949ba59abbe56e057f20f883e', '090809354'),
(7, 'Huỳnh Nga', 'huynhnga564@gmail.com', 'ktx cần thơ', '202cb962ac59075b964b07152d234b70', '0838385369'),
(8, 'Lê Hoàng TTTTT', 'letrung042001@gmail.com', '46/7 tân hòa 12', '202cb962ac59075b964b07152d234b70', '0908093564'),
(9, 'Minh Triet', 'lyhuynhminhtriet1@gmail.com', 'Dong Nai', '202cb962ac59075b964b07152d234b70', '0838385312');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `tendanhmuc`, `thutu`) VALUES
(9, 'Adidas', 3),
(22, 'Nike', 2),
(32, 'New Balance', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(150) NOT NULL,
  `masp` varchar(100) NOT NULL,
  `giasp` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `tomtat` tinytext NOT NULL,
  `noidung` text NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `masp`, `giasp`, `soluong`, `hinhanh`, `tomtat`, `noidung`, `tinhtrang`, `id_danhmuc`) VALUES
(39, 'adidas2', '02', '4444444', 33, 'adidas2.webp', 'dddfffffff', 'sssssssss', 1, 9),
(41, 'adidas4', '04', '267676', 5, 'adidas3.webp', 'qưeq', 'qưe', 1, 9),
(46, 'adidas11', '07', '222222', 3, 'giay5.webp', 'vvvvvv', 'sssss', 1, 9),
(48, 'adidas13', '09', '24323', 2, 'giay14.webp', 'qqqqqq', 'vvvvvvv', 1, 9),
(50, 'Nike1', '01', '23000', 2, 'nike1.webp', 'aaa', 'ddddd', 1, 22),
(51, 'Nike2', '02', '22222', 3, 'nike2.webp', '3333333', 'vvvvvvv', 1, 22),
(52, 'Nike3', '03', '267676', 3, 'nike3.jpg', 'dddddd', 'gggg', 1, 22),
(53, 'Nike4', '04', '4444444', 2, 'nike4.webp', 'cccccc', 'aaaaaa', 1, 22),
(54, 'New Balance 1', '01', '250000', 1, 'new1.webp', 'Giay xin', 'aaa', 1, 32),
(55, 'New Balance 2', '02', '23000', 1, 'new2.webp', 'aaaaaa', 'new', 1, 32),
(59, 'New Balance 3', '03', '24323', 3, 'new3.webp', 'aaaa', 'sssssss', 1, 32),
(60, 'New Balance 4', '04', '4444444', 3, 'new4.webp', 'zzzzzzzz', 'sssssss', 1, 32);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indexes for table `tbl_cart_chitiet`
--
ALTER TABLE `tbl_cart_chitiet`
  ADD PRIMARY KEY (`id_cart_chitiet`);

--
-- Indexes for table `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  ADD PRIMARY KEY (`id_dangky`);

--
-- Indexes for table `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Indexes for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbl_cart_chitiet`
--
ALTER TABLE `tbl_cart_chitiet`
  MODIFY `id_cart_chitiet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  MODIFY `id_dangky` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
