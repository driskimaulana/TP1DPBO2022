-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 30 Mar 2022 pada 08.49
-- Versi server: 10.1.40-MariaDB
-- Versi PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_books`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `author`
--

CREATE TABLE `author` (
  `no_author` bigint(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jumlah_buku` int(11) DEFAULT NULL,
  `img_author` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `author`
--

INSERT INTO `author` (`no_author`, `nama`, `jumlah_buku`, `img_author`) VALUES
(2, 'Mark Manson', 10, 'manson.jpg'),
(28, 'J.K Rowling', 28, 'jkrowling.jpg'),
(29, 'Pidi Baiq', 10, 'pidibaiq.jpg'),
(31, 'Fellexandro Ruby', 1, 'ruby.jpg'),
(33, 'Henry manampiring', 2, 'henry.jpg'),
(34, 'Andrea Hirata', 5, 'andrea.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `nomor_buku` bigint(11) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `penerbit` varchar(100) DEFAULT NULL,
  `desc` varchar(500) DEFAULT NULL,
  `img_buku` varchar(100) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`nomor_buku`, `judul`, `penerbit`, `desc`, `img_buku`, `author`) VALUES
(1, 'Harry Potter dan Batu Bertuah', 'Bloomsbury', 'Harry Potter dan Batu Bertuah adalah novel fantasi karangan penulis Inggris J. K. Rowling yang merupakan novel pertama dalam seri Harry Potter dan novel debut Rowling. Novel ini mengisahkan mengenai Harry Potter, seorang anak yatim piatu yang mengetahui bahwa ia adalah penyihir pada ulang tahunnya yang kesebelas, ketika ia menerima undangan untuk menghadiri Sekolah Sihir Hogwarts. ', 'hp3.jpg', 'J.K Rowling'),
(2, 'Harry Potter and the Deathly Hallows – Bagian', 'Bloomsbury', 'Harry Potter dan Relikui Kematian adalah novel fantasi karangan penulis Inggris, J. K. Rowling, yang merupakan novel ketujuh sekaligus terakhir dalam seri Harry Potter. Novel ini dirilis pada 14 Juli 2007 oleh Bloomsbury di Inggris, oleh Scholastic di Amerika Serikat, dan oleh Raincoast Books di Kanada. Cerita dalam novel ini berkaitan langsung dengan Harry Potter dan Pangeran Berdarah-Campuran (2005) dan berfokus pada pertarungan terakhir penyihir Harry Potter melawan Lord Voldemort.', 'hp2.jpg', 'J.K Rowling'),
(3, 'Sebuah Seni untuk Bersikap Bodo Amat', 'Grasindo', 'Sebuah Seni untuk Bersikap Bodo Amat: Pendekatan yang Waras Demi Menjalani Hidup yang Baik atau The Subtle Art of Not Giving a F*ck: A Counterintuitive Approach to Living a Good Life adalah buku pertama Mark Manson, seorang narablog kenamaan dengan lebih dari 2 juta pembaca. Dia tinggal di kota New York. ', 'bodoamat.jpg', 'Marc Manson'),
(9, 'Filosopi Teras', 'Gramedia', 'Filosofi Teras adalah sebuah buku pengantar filsafat Stoa yang dibuat khusus sebagai panduan moral anak muda. Buku ini ditulis untuk menjawab permasalahan tentang tingkat kekhawatiran yang cukup tinggi dalam skala nasional, terutama yang dialami oleh anak muda. ', 'teras.jpg', 'Henry Manampiring');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`no_author`) USING BTREE;

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`nomor_buku`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `author`
--
ALTER TABLE `author`
  MODIFY `no_author` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `nomor_buku` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
