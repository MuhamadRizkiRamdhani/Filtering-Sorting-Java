-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 15, 2025 at 01:51 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `kode_buku` char(6) NOT NULL,
  `kode_kategori` char(3) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `pengarang` varchar(100) NOT NULL,
  `penerbit` varchar(100) NOT NULL,
  `tahun` smallint NOT NULL,
  `edisi` tinyint NOT NULL,
  `tahun_pengadaan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`kode_buku`, `kode_kategori`, `judul`, `pengarang`, `penerbit`, `tahun`, `edisi`, `tahun_pengadaan`) VALUES
('B00001', '700', 'Panduan Musik', 'Hana', 'Media Edukasi', 2007, 1, '2015-02-08'),
('B00002', '200', 'Analisis Teknik', 'Joko Dr.', 'Pustaka Ilmu', 2000, 5, '2017-10-05'),
('B00003', '200', 'Strategi Matematika', 'Citra S.', 'Pustaka Ilmu', 2010, 1, '2023-06-05'),
('B00004', '700', 'Dasar-Dasar Ekonomi', 'Eko Dr.', 'Media Edukasi', 2010, 2, '2022-10-13'),
('B00005', '900', 'Analisis Teknik', 'Joko S.', 'Pustaka Ilmu', 1992, 1, '2023-08-06'),
('B00006', '200', 'Analisis Bahasa', 'Fitri', 'Media Edukasi', 2018, 5, '2017-02-22'),
('B00007', '100', 'Pengenalan Sejarah', 'Fitri Dr.', 'Tiga Serangkai', 2004, 5, '2013-11-28'),
('B00008', '900', 'Praktik Musik', 'Dewi S.', 'Erlangga', 2011, 1, '2023-03-12'),
('B00009', '500', 'Studi Kasus Teknik', 'Citra S.', 'Gramedia', 2007, 1, '2021-11-24'),
('B00010', '300', 'Teori Sejarah', 'Fitri', 'Media Edukasi', 2014, 4, '2018-06-24'),
('B00011', '200', 'Analisis Agama', 'Citra', 'Erlangga', 2018, 2, '2024-07-07'),
('B00012', '200', 'Studi Kasus Matematika', 'Gilang M.', 'Erlangga', 2004, 3, '2018-08-15'),
('B00013', '700', 'Dasar-Dasar Ekonomi', 'Hana M.', 'Erlangga', 2006, 1, '2019-11-12'),
('B00014', '800', 'Studi Kasus Sastra', 'Hana M.', 'Gramedia', 2022, 4, '2010-07-16'),
('B00015', '700', 'Pengenalan Sejarah', 'Dewi Dr.', 'Erlangga', 2008, 1, '2010-07-26'),
('B00016', '900', 'Panduan Komputer', 'Gilang', 'Gramedia', 1992, 4, '2017-11-09'),
('B00017', '900', 'Panduan Sastra', 'Dewi Dr.', 'Pustaka Ilmu', 1991, 3, '2018-06-03'),
('B00018', '300', 'Analisis Filsafat', 'Andi M.', 'Gramedia', 2020, 4, '2020-01-07'),
('B00019', '500', 'Strategi Matematika', 'Imam Dr.', 'Pustaka Ilmu', 2005, 4, '2018-08-08'),
('B00020', '000', 'Teori Komputer', 'Hana', 'Pustaka Ilmu', 2004, 2, '2013-04-24'),
('B00021', '100', 'Dasar-Dasar Musik', 'Andi Dr.', 'Pustaka Ilmu', 2023, 3, '2019-05-27'),
('B00022', '900', 'Dasar-Dasar Sastra', 'Citra S.', 'Media Edukasi', 2000, 2, '2011-05-10'),
('B00023', '500', 'Studi Kasus Ekonomi', 'Gilang M.', 'Erlangga', 2006, 3, '2014-11-26'),
('B00024', '600', 'Pengenalan Filsafat', 'Eko M.', 'Media Edukasi', 2010, 2, '2019-06-10'),
('B00025', '900', 'Analisis Komputer', 'Gilang', 'Tiga Serangkai', 2001, 1, '2014-05-23'),
('B00026', '800', 'Analisis Ekonomi', 'Gilang', 'Tiga Serangkai', 2009, 1, '2021-07-07'),
('B00027', '100', 'Pengenalan Bahasa', 'Joko S.', 'Erlangga', 1997, 3, '2017-10-28'),
('B00028', '400', 'Strategi Komputer', 'Imam', 'Media Edukasi', 2023, 1, '2024-11-28'),
('B00029', '500', 'Praktik Ekonomi', 'Imam S.', 'Tiga Serangkai', 2022, 5, '2010-09-23'),
('B00030', '600', 'Panduan Bahasa', 'Joko Dr.', 'Pustaka Ilmu', 2018, 3, '2023-02-01'),
('B00031', '900', 'Pengenalan Sejarah', 'Citra S.', 'Erlangga', 1990, 3, '2024-08-13'),
('B00032', '300', 'Analisis Sejarah', 'Dewi Dr.', 'Tiga Serangkai', 1990, 3, '2010-05-22'),
('B00033', '800', 'Pengenalan Bahasa', 'Citra', 'Erlangga', 1990, 3, '2019-07-02'),
('B00034', '600', 'Studi Kasus Teknik', 'Joko S.', 'Erlangga', 2001, 5, '2011-06-23'),
('B00035', '500', 'Analisis Komputer', 'Andi Dr.', 'Media Edukasi', 2003, 4, '2021-01-24'),
('B00036', '700', 'Pengenalan Ekonomi', 'Dewi M.', 'Pustaka Ilmu', 1997, 3, '2019-11-01'),
('B00037', '700', 'Studi Kasus Filsafat', 'Citra S.', 'Pustaka Ilmu', 2012, 1, '2022-09-17'),
('B00038', '700', 'Strategi Sejarah', 'Imam M.', 'Erlangga', 1998, 5, '2023-04-23'),
('B00039', '000', 'Studi Kasus Filsafat', 'Hana M.', 'Gramedia', 1990, 2, '2012-05-09'),
('B00040', '100', 'Panduan Bahasa', 'Eko', 'Media Edukasi', 2011, 1, '2010-11-16'),
('B00041', '500', 'Dasar-Dasar Filsafat', 'Gilang S.', 'Erlangga', 1990, 3, '2015-03-17'),
('B00042', '000', 'Teori Bahasa', 'Dewi Dr.', 'Gramedia', 2020, 5, '2010-07-08'),
('B00043', '400', 'Strategi Sastra', 'Andi Dr.', 'Erlangga', 2008, 5, '2011-11-25'),
('B00044', '100', 'Teori Bahasa', 'Andi', 'Pustaka Ilmu', 2009, 4, '2012-09-24'),
('B00045', '500', 'Pengenalan Bahasa', 'Budi', 'Media Edukasi', 2022, 3, '2023-07-24'),
('B00046', '000', 'Strategi Agama', 'Imam S.', 'Media Edukasi', 2013, 2, '2011-04-03'),
('B00047', '500', 'Panduan Musik', 'Eko M.', 'Gramedia', 2023, 4, '2023-03-03'),
('B00048', '300', 'Analisis Teknik', 'Citra M.', 'Gramedia', 2006, 3, '2019-03-11'),
('B00049', '300', 'Teori Teknik', 'Gilang', 'Erlangga', 2021, 1, '2017-08-27'),
('B00050', '100', 'Pengenalan Musik', 'Joko Dr.', 'Gramedia', 2014, 3, '2016-03-25'),
('B00051', '400', 'Teori Agama', 'Andi S.', 'Gramedia', 2014, 3, '2011-11-05'),
('B00052', '700', 'Praktik Agama', 'Hana S.', 'Pustaka Ilmu', 2014, 2, '2023-05-08'),
('B00053', '100', 'Pengenalan Filsafat', 'Andi', 'Gramedia', 2005, 1, '2022-09-21'),
('B00054', '500', 'Studi Kasus Komputer', 'Dewi Dr.', 'Media Edukasi', 2003, 2, '2024-04-24'),
('B00055', '300', 'Analisis Agama', 'Gilang Dr.', 'Erlangga', 2023, 5, '2021-10-21'),
('B00056', '800', 'Praktik Komputer', 'Fitri M.', 'Tiga Serangkai', 1991, 2, '2021-11-18'),
('B00057', '600', 'Strategi Sastra', 'Gilang', 'Erlangga', 2008, 5, '2010-11-01'),
('B00058', '200', 'Studi Kasus Komputer', 'Imam M.', 'Erlangga', 1992, 4, '2012-10-24'),
('B00059', '800', 'Teori Bahasa', 'Hana S.', 'Gramedia', 2011, 1, '2019-07-10'),
('B00060', '700', 'Praktik Musik', 'Joko Dr.', 'Erlangga', 1990, 1, '2024-12-05'),
('B00061', '500', 'Panduan Matematika', 'Budi', 'Media Edukasi', 2000, 5, '2011-06-28'),
('B00062', '400', 'Panduan Agama', 'Eko S.', 'Gramedia', 2009, 1, '2019-01-02'),
('B00063', '800', 'Studi Kasus Matematika', 'Fitri M.', 'Media Edukasi', 2008, 2, '2016-12-04'),
('B00064', '200', 'Teori Bahasa', 'Imam M.', 'Gramedia', 2000, 1, '2014-05-23'),
('B00065', '500', 'Pengenalan Agama', 'Dewi', 'Tiga Serangkai', 1993, 4, '2022-06-27'),
('B00066', '000', 'Dasar-Dasar Bahasa', 'Joko M.', 'Gramedia', 2022, 4, '2012-09-24'),
('B00067', '500', 'Analisis Musik', 'Andi M.', 'Pustaka Ilmu', 1990, 4, '2017-04-07'),
('B00068', '100', 'Praktik Musik', 'Budi M.', 'Erlangga', 1993, 3, '2019-06-20'),
('B00069', '400', 'Pengenalan Musik', 'Joko M.', 'Tiga Serangkai', 2008, 4, '2021-08-21'),
('B00070', '100', 'Pengenalan Ekonomi', 'Hana Dr.', 'Erlangga', 1995, 3, '2020-01-25'),
('B00071', '200', 'Analisis Agama', 'Citra M.', 'Gramedia', 2011, 5, '2024-04-05'),
('B00072', '900', 'Analisis Filsafat', 'Joko Dr.', 'Tiga Serangkai', 2017, 5, '2022-09-23'),
('B00073', '000', 'Praktik Sastra', 'Citra Dr.', 'Pustaka Ilmu', 1996, 4, '2023-07-03'),
('B00074', '200', 'Pengenalan Musik', 'Eko', 'Pustaka Ilmu', 2013, 4, '2020-07-04'),
('B00075', '900', 'Analisis Filsafat', 'Fitri Dr.', 'Pustaka Ilmu', 2011, 5, '2020-10-20'),
('B00076', '000', 'Praktik Ekonomi', 'Hana Dr.', 'Media Edukasi', 2001, 4, '2012-06-02'),
('B00077', '300', 'Panduan Sastra', 'Citra S.', 'Pustaka Ilmu', 2004, 5, '2020-12-19'),
('B00078', '300', 'Panduan Sastra', 'Dewi Dr.', 'Gramedia', 1990, 2, '2012-12-21'),
('B00079', '500', 'Teori Bahasa', 'Hana', 'Pustaka Ilmu', 2011, 5, '2024-11-26'),
('B00080', '600', 'Dasar-Dasar Komputer', 'Eko Dr.', 'Gramedia', 2007, 4, '2021-11-16'),
('B00081', '200', 'Analisis Ekonomi', 'Budi Dr.', 'Tiga Serangkai', 1996, 4, '2010-04-15'),
('B00082', '900', 'Panduan Matematika', 'Eko Dr.', 'Media Edukasi', 2007, 2, '2010-06-21'),
('B00083', '900', 'Dasar-Dasar Ekonomi', 'Eko', 'Tiga Serangkai', 2020, 1, '2012-06-28'),
('B00084', '300', 'Strategi Bahasa', 'Joko S.', 'Tiga Serangkai', 2013, 3, '2021-11-13'),
('B00085', '500', 'Panduan Matematika', 'Hana Dr.', 'Erlangga', 1995, 1, '2017-04-09'),
('B00086', '500', 'Analisis Sastra', 'Imam Dr.', 'Pustaka Ilmu', 2012, 3, '2015-06-02'),
('B00087', '600', 'Teori Agama', 'Gilang S.', 'Tiga Serangkai', 2012, 4, '2022-03-24'),
('B00088', '900', 'Panduan Filsafat', 'Gilang M.', 'Media Edukasi', 2014, 3, '2011-01-12'),
('B00089', '100', 'Dasar-Dasar Bahasa', 'Joko', 'Tiga Serangkai', 1993, 1, '2019-09-06'),
('B00090', '000', 'Panduan Agama', 'Joko Dr.', 'Tiga Serangkai', 1996, 3, '2023-09-18'),
('B00091', '400', 'Dasar-Dasar Komputer', 'Andi S.', 'Pustaka Ilmu', 2014, 3, '2015-03-20'),
('B00092', '900', 'Teori Filsafat', 'Eko', 'Tiga Serangkai', 2023, 1, '2018-08-06'),
('B00093', '900', 'Panduan Filsafat', 'Citra M.', 'Pustaka Ilmu', 2001, 4, '2016-01-11'),
('B00094', '100', 'Dasar-Dasar Agama', 'Hana S.', 'Media Edukasi', 2021, 2, '2015-02-04'),
('B00095', '200', 'Panduan Bahasa', 'Citra Dr.', 'Tiga Serangkai', 1999, 3, '2017-03-06'),
('B00096', '400', 'Studi Kasus Bahasa', 'Joko S.', 'Erlangga', 2001, 1, '2018-04-04'),
('B00097', '000', 'Praktik Teknik', 'Fitri', 'Gramedia', 2003, 3, '2021-12-03'),
('B00098', '600', 'Pengenalan Sastra', 'Dewi', 'Erlangga', 2007, 4, '2012-06-18'),
('B00099', '200', 'Analisis Bahasa', 'Joko M.', 'Gramedia', 2020, 2, '2015-11-01'),
('B00100', '300', 'Pengenalan Sejarah', 'Fitri', 'Erlangga', 2023, 5, '2011-08-02');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_buku`
--

CREATE TABLE `kategori_buku` (
  `kode_kategori` char(3) NOT NULL,
  `nama_kategori` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kategori_buku`
--

INSERT INTO `kategori_buku` (`kode_kategori`, `nama_kategori`) VALUES
('000', 'Karya Umum'),
('100', 'Filsafat dan Psikolo'),
('200', 'Agama'),
('300', 'Ilmu-ilmu Sosial'),
('400', 'Bahasa'),
('500', 'Ilmu Pengetahuan Alam dan Matematika'),
('600', 'Teknologi dan Ilmu-ilmu Terapan'),
('700', 'Seni, Hiburan, dan Olahraga'),
('800', 'Sastra'),
('900', 'Geografi dan Sejarah');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `fullname`, `role`) VALUES
('admin', '202cb962ac59075b964b07152d234b70', 'Admin Pustakaloka', 'admin'),
('user1', '202cb962ac59075b964b07152d234b70', 'Staff 1', 'staff');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`kode_buku`),
  ADD KEY `kode_kategori` (`kode_kategori`);

--
-- Indexes for table `kategori_buku`
--
ALTER TABLE `kategori_buku`
  ADD PRIMARY KEY (`kode_kategori`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`kode_kategori`) REFERENCES `kategori_buku` (`kode_kategori`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
